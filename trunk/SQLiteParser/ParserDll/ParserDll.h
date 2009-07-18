// The following ifdef block is the standard way of creating macros which make exporting 
// from a DLL simpler. All files within this DLL are compiled with the PARSERDLL_EXPORTS
// symbol defined on the command line. this symbol should not be defined on any project
// that uses this DLL. This way any other project whose source files include this file see 
// PARSERDLL_API functions as being imported from a DLL, whereas this DLL sees symbols
// defined with this macro as being exported.
#include "..\\SqliteParser\\SqliteEntity.h"
#define PARSERDLL_API __declspec(dllexport)

typedef struct _ColumnNameStruct2
{
	LPTSTR szColumn;
	LPTSTR szCollate;
	int otOrder;
} ColumnNameStruct2;

typedef struct _ColumnConstraint2
{
	LPTSTR szName;
	int ctType;
	int order;
	int caConflict;
	int bAutoIncre;
	LPTSTR szExpr;
	LPTSTR szValue;
	LPTSTR szCollateName;
}ColumnConstraint2;

typedef struct _ColumnDef2
{
	LPTSTR szName;
	LPTSTR szType;
	int nTypeSize;
	int nTypePrecision;
	int nConstraintCount;
	ColumnConstraint2* pConstraints;
} ColumnDef2;

typedef struct _Constraint2
{
	int ctType;
	LPTSTR pColumnList;
	int caConflict;
	LPTSTR szName;
	LPTSTR szExpr;
}Constraint2;

typedef struct _SyntaxCheckStruct2
{
	int iRow;
	int iBeginCol;
	int iEndCol;
	LPTSTR szHint;
}SyntaxCheckStruct2;

typedef struct _BlockMatchStruct2
{
	int iKind;
	int iRow;
	int iBeginCol;
	int iEndCol;
} BlockMatchStruct2;

typedef struct _QueryAlias2
{
	int iBeginRow;
	int iBeginCol;
	int iEndRow;
	int iEndCol;

	LPTSTR pAlias;
}QueryAlias2;

extern "C" { 
	PARSERDLL_API int GetSqlType(LPCTSTR szSql);
	PARSERDLL_API int GetLastTokenType(LPCTSTR szSql);
	PARSERDLL_API int ParseCreateView( LPCTSTR szSql , LPTSTR szViewName, LPTSTR szSelectSql, int *bTemp);
	PARSERDLL_API int ParseCreateTable(LPCTSTR szSql, LPTSTR szTableName, int *bTemp, int *nColCount, int *nConstraintCount
		, ColumnDef2** pColumns, Constraint2** pConstraints);
	PARSERDLL_API int ParseCreateVirtual(LPCTSTR szSql, LPTSTR szTableName, LPTSTR szModuleName, LPTSTR szParameters);
	PARSERDLL_API int ParseScript(LPCTSTR szSql, LPTSTR szSemiPos);
	PARSERDLL_API int ParseCreateTrigger(LPCTSTR szSql, LPTSTR szTriggerName, 
		int *bTemp,	int *teEvent, int *dbEvent, LPTSTR szTarget, int *ftStatement,
		LPTSTR szStatement, LPTSTR* szColumns);
	PARSERDLL_API int ParseCreateIndex(LPCTSTR szSql, LPTSTR szIndexName,
		int *IsUnique, LPTSTR szTableName, int *caConflict, int *ColumnsCount, ColumnNameStruct2** pColumns);
	PARSERDLL_API int ParseDrop(LPCTSTR szSql, LPTSTR szDropName);
	PARSERDLL_API int ParseAlter(LPCTSTR szSql, LPTSTR szOldName, LPTSTR szNewName);
	PARSERDLL_API int FreeAllocateMem(LPTSTR* ptr);
	PARSERDLL_API int GetIfNotScript(int type, LPCTSTR szSql, LPTSTR szIfnotSql);
	PARSERDLL_API int SyntaxCheck(int nType,LPCTSTR szSql, int iRow, int iCol, int *iHintCount, SyntaxCheckStruct2** pSyntaxCheck, 
		int* iMatchCount, BlockMatchStruct2** pBlockMatch, int* iAliasCount, QueryAlias2** pQueryAlias);
}
