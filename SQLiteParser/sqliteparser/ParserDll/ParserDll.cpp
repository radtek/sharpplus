// ParserDll.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "ParserDll.h"
#include "..\SqliteParser\SqliteParserHelper.h"
BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		break;
	}
    return TRUE;
}

LPTSTR GetPChar(string szValue)
{
	LPTSTR pData=(LPTSTR)malloc(strlen(szValue.c_str())+1);
	strcpy(pData, szValue.c_str());
	return pData;
}

LPTSTR GetPCharFromStrings(vector<string>& vs)
{
	string sColumns="";
	vector<string>::iterator itor;
	for (itor=vs.begin();itor!=vs.end();itor++)
	{
		sColumns=sColumns+*itor+"\r\n";
	}

	return GetPChar(sColumns);
}

int GetSqlType(LPCTSTR szSql)
{
	string sSql=szSql;
	return SqliteParserHelper::GetSqlType(sSql);	
}

int GetLastTokenType(LPCTSTR szSql)
{
	string sSql=szSql;
	return SqliteParserHelper::GetLastTokenType(sSql);
}

int ParseCreateView(LPCTSTR szSql, LPTSTR szViewName, LPTSTR szSelectSql, int *bTemp)
{
	CreateViewStruct vs;

    string sSql=szSql;
	vs=SqliteParserHelper::ParseCreateView(sSql);
	*bTemp=vs.bTemp;
	strcpy(szViewName, vs.szViewName.c_str());
	strcpy(szSelectSql, vs.szSelectSql.c_str());
	return 1;
}

int FreeAllocateMem(LPTSTR* ptr)
{
	free(*ptr);
	*ptr=NULL;
	return 1;
}

int ParseCreateTrigger(LPCTSTR szSql, LPTSTR szTriggerName, int *bTemp,
					   int *teEvent, int *dbEvent, LPTSTR szTarget, int *ftStatement,
					   LPTSTR szStatement, LPTSTR* szColumns)
{
	CreateTriggerStruct vs;
	string sSql=szSql;
	vs=SqliteParserHelper::ParseCreateTrigger(sSql);
	//char Buf[4096]={0x00,};
	//sprintf(Buf, "SQL:%s TriggerName:%s teEvent:%d dbEvent:%d Target:%s ftStatement:%d Statement:%s",szSql,
	//	  vs.szTriggerName.c_str(), vs.teEvent, vs.dbEvent, vs.szTarget.c_str(),
	//	  vs.ftStatement, vs.szStatement.c_str());
	//MessageBox(0,Buf, "", MB_OK);
	*bTemp=vs.bTemp;
	strcpy(szTriggerName, vs.szTriggerName.c_str());
	*teEvent=vs.teEvent;
	*dbEvent=vs.dbEvent;
	strcpy(szTarget, vs.szTarget.c_str());
	*ftStatement=vs.ftStatement;
	strcpy(szStatement, vs.szStatement.c_str());
	//vector<string> vColumns;
	if (vs.vColumns.size()>0)
	{
		*szColumns=GetPCharFromStrings(vs.vColumns);
	}

	return 1;
}

int ParseScript(LPCTSTR szSql, LPTSTR szSemiPos)
{
	string sSql=szSql;
	string szPos=SqliteParserHelper::ParseSqlScript(sSql);
	strcpy(szSemiPos, szPos.c_str());
    return 1;
}

int ParseCreateVirtual(LPCTSTR szSql, LPTSTR szTableName, LPTSTR szModuleName, LPTSTR szParameters)
{
	CreateVirtualTableStruct vs;
	string sSql=szSql;
	vs=SqliteParserHelper::ParseCreateVirtualTable(sSql);
	strcpy(szTableName, vs.szTableName.c_str());
	strcpy(szModuleName, vs.szModule.c_str());
	strcpy(szParameters, vs.szParameters.c_str());

	return 1;
}

int ParseCreateTable(LPCTSTR szSql, LPTSTR szTableName, int *bTemp, int *nColCount, int *nConstraintCount
				 , ColumnDef2** pColumns, Constraint2** pConstraints)
{
	CreateTableStruct vs;
	string sSql=szSql;
	vs=SqliteParserHelper::ParseCreateTable(sSql);
	*bTemp=vs.bTemp;
	strcpy(szTableName, vs.szTableName.c_str());
	*nColCount=vs.vColumns.size();
	*nConstraintCount=vs.vConstraints.size();
	*pColumns=(ColumnDef2*)malloc(vs.vColumns.size()*sizeof(ColumnDef2)+1);
	ColumnDef2* pTopCol=*pColumns;
	vector<ColumnDef>::iterator itorCol;
	for (itorCol=vs.vColumns.begin();itorCol!=vs.vColumns.end();itorCol++)
	{
		ColumnDef col=*itorCol;
		pTopCol->nConstraintCount=col.vConstraints.size();
		pTopCol->nTypePrecision=col.nTypePrecision;
		pTopCol->nTypeSize=col.nTypeSize;
		pTopCol->szName=GetPChar(col.szName);
		pTopCol->szType=GetPChar(col.szType);
		pTopCol->pConstraints=(ColumnConstraint2*)malloc(col.vConstraints.size()*sizeof(ColumnConstraint2)+1);
		ColumnConstraint2* pColConstraint=pTopCol->pConstraints;
		vector<ColumnConstraint>::iterator itorColConstraint;
		for (itorColConstraint=col.vConstraints.begin();itorColConstraint!=col.vConstraints.end();itorColConstraint++)
		{
            ColumnConstraint colConstraint=*itorColConstraint;
            pColConstraint->bAutoIncre=colConstraint.bAutoIncre;
			pColConstraint->caConflict=colConstraint.caConflict;
			pColConstraint->ctType=colConstraint.ctType;
			pColConstraint->order=colConstraint.order;
			pColConstraint->szCollateName=GetPChar(colConstraint.szCollateName);
			pColConstraint->szExpr=GetPChar(colConstraint.szExpr);
			pColConstraint->szName=GetPChar(colConstraint.szName);
			pColConstraint->szValue=GetPChar(colConstraint.szValue);
			pColConstraint++;
		}
		pTopCol++;
	}

	*pConstraints=(Constraint2*)malloc(vs.vConstraints.size()*sizeof(Constraint2)+1);
	Constraint2* pTopConstraint=*pConstraints;
	vector<Constraint>::iterator itorConstraint;
	for (itorConstraint=vs.vConstraints.begin();itorConstraint!=vs.vConstraints.end();itorConstraint++)
	{
        Constraint cs=*itorConstraint;
		pTopConstraint->caConflict=cs.caConflict;
		pTopConstraint->ctType=cs.ctType;
		pTopConstraint->szName=GetPChar(cs.szName);
		pTopConstraint->szExpr=GetPChar(cs.szExpr);
		pTopConstraint->pColumnList=GetPCharFromStrings(cs.ColumnList);
		pTopConstraint++;
	}

	return 1;
}

int ParseDrop(LPCTSTR szSql, LPTSTR szDropName)
{
	string sSql=szSql;
	string szName=SqliteParserHelper::ParseDrop(sSql);
	strcpy(szDropName, szName.c_str());
	return 1;
}

//szIfnotSql:64k
int GetIfNotScript(int type, LPCTSTR szSql, LPTSTR szIfnotSql)
{
	string sSql=szSql;
	string szResult="";
    switch (type)
	{
	case 0://Table
		szResult=SqliteParserHelper::GetIfNotTableScript(sSql);
		break;
	case 1://View
		szResult=SqliteParserHelper::GetIfNotViewScript(sSql);
		break;
	case 2://Trigger
		szResult=SqliteParserHelper::GetIfNotTriggerScript(sSql);
		break;
	case 3://Index
		szResult=SqliteParserHelper::GetIfNotIndexScript(sSql);
		break;
	}
	strcpy(szIfnotSql, szResult.c_str());
	return 1;
}


int ParseAlter(LPCTSTR szSql, LPTSTR szOldName, LPTSTR szNewName)
{
	string sSql=szSql;
	AlterStruct as=SqliteParserHelper::ParseAlter(sSql);
	strcpy(szOldName, as.szOldName.c_str());
	strcpy(szNewName, as.szNewName.c_str());
	return 1;
}

int ParseCreateIndex(LPCTSTR szSql, LPTSTR szIndexName,
					 int *IsUnique, LPTSTR szTableName, int *caConflict, int *ColumnsCount,ColumnNameStruct2** pColumns)
{
	CreateIndexStruct is;

	string sSql=szSql;
	is=SqliteParserHelper::ParseCreateIndex(sSql);

	strcpy(szIndexName, is.szIndexName.c_str());
	strcpy(szTableName, is.szTableName.c_str());
    *IsUnique=is.IsUnique;
	*caConflict=is.caConflict;

    *ColumnsCount=is.vColumns.size();
	*pColumns=(ColumnNameStruct2*)malloc(is.vColumns.size()*sizeof(ColumnNameStruct2)+1);
	ColumnNameStruct2* pTop=*pColumns;
	vector<ColumnNameStruct>::iterator itor;

	for (itor=is.vColumns.begin();itor!=is.vColumns.end();itor++)
	{
		pTop->szCollate=GetPChar((*itor).szCollate);
		pTop->szColumn=GetPChar((*itor).szColumn);
		pTop->otOrder=(*itor).otOrder;
		 pTop++;
	}

//	*pColumns=pTop;

	return 1;
}


