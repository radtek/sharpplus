#include "StdAfx.h"

#include "SqliteParser.hpp"
#include "SqliteLexer.hpp"
#include "SqliteParserHelper.h"
#include "SqliteLexTokenTypes.hpp"
#include  <boost/test/included/unit_test_framework.hpp>
using namespace boost::unit_test;


void sql_type_test() {
	try
	{
		//CreateTableStruct tblTest=SqliteParserHelper::ParseCreateTable("create table t1 (A, check ( c<>d ) ");
		//char rawData[] = {0x2F, 0x2A, 0xE5, 0x8F, 0xAA, 0x2A, 0x2F, 0x00};
		//char rawData[] = {0x2F, 0x2A, 0xE4, 0xBC, 0x8D, 0x2A, 0x2F, 0x00};

		//string szTest(rawData);
		//SqliteParserHelper::GetSqlType(szTest);


		Sqlite_Sql_Type typ=SqliteParserHelper::GetSqlType("Select * from a");

		BOOST_CHECK(typ==sst_Select);

		//SqliteParserHelper::ParseSqlScript("select * from country;--select;\r\n");
		//SqliteParserHelper::ParseSqlScript("select * from country;\r\n--select t;");
		SqliteParserHelper::ParseSqlScript("select * from country;\r\n--select t;\r\n");
        
//		typ=SqliteParserHelper::GetSqlType("/*•s‹X”zŒÞ*/"
		typ=SqliteParserHelper::GetSqlType("/*abc*/"
			"CREATE TABLE NotMix ("
			"DrugID2 INTEGER NOT NULL,"
			"CHECK (DrugID2 > DrugID1));"
			);
		BOOST_CHECK(typ==sst_CreateTable);

		typ=SqliteParserHelper::GetSqlType("Drop Trigger If Exists SAVE_SALARY_CHANGE;");
		BOOST_CHECK(typ==sst_DropTrigger);

		//typ=SqliteParserHelper::GetSqlType("select [¥«©`¥É] from a");
		typ=SqliteParserHelper::GetSqlType("delete from a");
		BOOST_CHECK(typ==sst_Delete);
		typ=SqliteParserHelper::GetSqlType("--comment\r\n select a from a");
		BOOST_CHECK(typ==sst_Select);
		typ=SqliteParserHelper::GetSqlType("pragma case_sensitive_like");
		BOOST_CHECK(typ==sst_Pragma);
		typ=SqliteParserHelper::GetSqlType("pragma case_sensitive_like=1");
		BOOST_CHECK(typ==sst_PragmaSetting);
		typ=SqliteParserHelper::GetSqlType("pragma schema_version");
		BOOST_CHECK(typ==sst_Pragma);
		typ=SqliteParserHelper::GetSqlType("pragma test.schema_version=1");
		BOOST_CHECK(typ==sst_PragmaSetting);
		typ=SqliteParserHelper::GetSqlType("pragma database_list");
		BOOST_CHECK(typ==sst_Pragma);
		typ=SqliteParserHelper::GetSqlType("explain select a from b");
		BOOST_CHECK(typ==sst_Explain);

		typ=SqliteParserHelper::GetSqlType("create temp table t1 (A)");
		BOOST_CHECK(typ==sst_CreateTempTable);
		typ=SqliteParserHelper::GetSqlType("create temp view view1 as select * from t1 ");
		BOOST_CHECK(typ==sst_CreateTempView);
		typ=SqliteParserHelper::GetSqlType("create temp trigger t1 DELETE on abc begin end ");
		BOOST_CHECK(typ==sst_CreateTempTrigger);
		typ=SqliteParserHelper::GetSqlType("replace into table1 select * from abc ");
		BOOST_CHECK(typ==sst_Replace);
		typ=SqliteParserHelper::GetSqlType("insert or replace into table1 select * from abc ");
		BOOST_CHECK(typ==sst_Insert);


		typ=SqliteParserHelper::GetSqlType("begin transaction a");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("end transaction a");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("commit transaction a");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("rollback transaction a");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("rollback transaction a to savepoint b");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("savepoint b");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("release savepoint b");
		BOOST_CHECK(typ==sst_Transaction);
		typ=SqliteParserHelper::GetSqlType("release b");
		BOOST_CHECK(typ==sst_Transaction);



		typ=SqliteParserHelper::GetSqlType("create table t1 as select * from sqlite_master");
		BOOST_CHECK(typ==sst_CreateTable);
		typ=SqliteParserHelper::GetSqlType("create view t1 as select * from t2 ");
		BOOST_CHECK(typ==sst_CreateView);
		typ=SqliteParserHelper::GetSqlType("create trigger t1 DELETE on abc begin end  ");
		BOOST_CHECK(typ==sst_CreateTrigger);

		typ=SqliteParserHelper::GetSqlType("create index i1 on t1 (f1, f2)  ");
		BOOST_CHECK(typ==sst_CreateIndex);
		typ=SqliteParserHelper::GetSqlType("CREATE UNIQUE INDEX index6 On Test3 ('A') on conflict ignore");
		BOOST_CHECK(typ==sst_CreateIndex);
		typ=SqliteParserHelper::GetSqlType("CREATE Unique INDEX index1 On Test2 (F1 ,F2 ) on conflict Rollback");
		BOOST_CHECK(typ==sst_CreateIndex);
		typ=SqliteParserHelper::GetSqlType("drop table t1 ");
		BOOST_CHECK(typ==sst_DropTable);
		typ=SqliteParserHelper::GetSqlType("drop view t1 ");
		BOOST_CHECK(typ==sst_DropView);
		typ=SqliteParserHelper::GetSqlType("drop --test\nview t1 ");
		BOOST_CHECK(typ==sst_DropView);
		typ=SqliteParserHelper::GetSqlType("drop trigger t1 ");
		BOOST_CHECK(typ==sst_DropTrigger);
		typ=SqliteParserHelper::GetSqlType("drop index t1 ");
		BOOST_CHECK(typ==sst_DropIndex);
		typ=SqliteParserHelper::GetSqlType("vacuum ");
		BOOST_CHECK(typ==sst_Vacuum);
		typ=SqliteParserHelper::GetSqlType("alter table t1 rename to t2 ");
		BOOST_CHECK(typ==sst_RenameTable);

		typ=SqliteParserHelper::GetSqlType("SELECT * FROM a WHERE b == c");
		BOOST_CHECK(typ==sst_Select);

		//GetLastTokenType
		int nType=SqliteParserHelper::GetLastTokenType("--abc \n");
		BOOST_CHECK(nType==SqliteLexTokenTypes::COMMENT);
		nType=SqliteParserHelper::GetLastTokenType("/*abc\n*/");
		BOOST_CHECK(nType==SqliteLexTokenTypes::COMMENT);
        //Todo:Support Multi_line Comment
		typ=SqliteParserHelper::GetSqlType("Unknown Sql");
		BOOST_CHECK(typ==sst_Unknown);

		//Parse Table, Trigger, View, Index
		CreateViewStruct vStruct=SqliteParserHelper::ParseCreateView("create temp view view1 as --comment\n select * from sqlite_master");
		BOOST_CHECK(vStruct.bTemp==true && vStruct.szViewName=="view1" && vStruct.szSelectSql=="select * from sqlite_master");
		CreateViewStruct vStruct3=SqliteParserHelper::ParseCreateView("create temp view temp.view1 as --comment\n select * from sqlite_master");
		BOOST_CHECK(vStruct3.bTemp==true && vStruct3.szViewName=="view1" && vStruct3.szSelectSql=="select * from sqlite_master");
		CreateViewStruct vStruct2=SqliteParserHelper::ParseCreateView("create view view2 as select * from t1");
		BOOST_CHECK(vStruct2.bTemp==false && vStruct2.szViewName=="view2" && vStruct2.szSelectSql=="select * from t1");
		//Parse Table
		CreateTableStruct tblStruct=SqliteParserHelper::ParseCreateTable("create temp table t1 as select * from t1");
		BOOST_CHECK(tblStruct.bTemp==true && tblStruct.szTableName=="t1");
		tblStruct=SqliteParserHelper::ParseCreateTable("create table t1 as select * from t2");
		BOOST_CHECK(tblStruct.bTemp==false && tblStruct.szTableName=="t1");

		string szSql="create table t1 (A text primary key unique default a, 'B' integer(5,1) not null on conflict fail, C float primary key desc autoincrement, D check (a=b), E default 'abc', F collate oncase, G NULL, "
			" PRIMARY KEY(A,'B') on conflict fail , unique (C,D), check ( c<>d ) on conflict ignore)";
		tblStruct=SqliteParserHelper::ParseCreateTable(szSql);
		BOOST_CHECK(tblStruct.bTemp==false && tblStruct.szTableName=="t1" &&
			        tblStruct.vColumns[0].szName=="A" && tblStruct.vColumns[1].szName=="B" &&
					tblStruct.vColumns[0].szType=="text" && tblStruct.vColumns[1].szType=="integer" &&
					tblStruct.vColumns[1].nTypeSize==5 && tblStruct.vColumns[1].nTypePrecision==1 &&
					tblStruct.vColumns[2].szType=="float" && tblStruct.vColumns[2].szName=="C" &&

					tblStruct.vColumns[0].vConstraints[0].ctType==ctPrimaryKey && tblStruct.vColumns[0].vConstraints[1].ctType==ctUnique &&
					tblStruct.vColumns[0].vConstraints[2].ctType==ctDefault && tblStruct.vColumns[0].vConstraints[2].szValue=="a" &&
					tblStruct.vColumns[1].vConstraints[0].ctType==ctNotNull && tblStruct.vColumns[1].vConstraints[0].caConflict==caFail &&
                    tblStruct.vColumns[2].vConstraints[0].ctType==ctPrimaryKey && tblStruct.vColumns[2].vConstraints[0].bAutoIncre==true &&
					tblStruct.vColumns[2].vConstraints[0].order==otDesc && tblStruct.vColumns[3].vConstraints[0].ctType==ctCheck && 
					tblStruct.vColumns[3].vConstraints[0].szExpr=="a=b" &&
					tblStruct.vColumns[4].vConstraints[0].ctType==ctDefault && tblStruct.vColumns[4].vConstraints[0].szValue=="\'abc\'" &&
					tblStruct.vColumns[5].vConstraints[0].ctType==ctCollate && tblStruct.vColumns[5].vConstraints[0].szCollateName=="oncase" &&
					//tblStruct.vColumns[6].=="NULL" &&
					tblStruct.vConstraints[0].ctType==ctPrimaryKey && tblStruct.vConstraints[0].caConflict==caFail &&
					tblStruct.vConstraints[0].ColumnList[0]=="A" && tblStruct.vConstraints[0].ColumnList[1]=="B" && 
					tblStruct.vConstraints[1].ctType==ctUnique && tblStruct.vConstraints[1].ColumnList[0]=="C" &&
					tblStruct.vConstraints[1].ColumnList[1]=="D" && tblStruct.vConstraints[2].ctType==ctCheck &&
					tblStruct.vConstraints[2].caConflict==caIgnore && tblStruct.vConstraints[2].szExpr=="c<>d "
					);
		szSql="create table [t1] (A collate \"abc\")";
		tblStruct=SqliteParserHelper::ParseCreateTable(szSql);
		BOOST_CHECK(tblStruct.szTableName=="t1");

		//szSql="create table [¥«©`¥É] (A)";
		//tblStruct=SqliteParserHelper::ParseCreateTable(szSql);
		//BOOST_CHECK(tblStruct.szTableName=="¥«©`¥É");

		szSql="create table t1 (A varchar(20) , B Real, C char(20), D Date, E TimeStamp, F NUMERIC(15,2), G nchar(20), H double, I Decimal(10,2), J integer NULL )";
		tblStruct=SqliteParserHelper::ParseCreateTable(szSql);
		BOOST_CHECK(tblStruct.vColumns[0].szName=="A" && tblStruct.vColumns[0].szType=="varchar" &&
			tblStruct.vColumns[1].szName=="B" && tblStruct.vColumns[1].szType=="Real" &&
			tblStruct.vColumns[2].szName=="C" && tblStruct.vColumns[2].szType=="char" &&
			tblStruct.vColumns[3].szName=="D" && tblStruct.vColumns[3].szType=="Date" &&
			tblStruct.vColumns[4].szName=="E" && tblStruct.vColumns[4].szType=="TimeStamp" &&
			tblStruct.vColumns[5].szName=="F" && tblStruct.vColumns[5].szType=="NUMERIC" &&
			tblStruct.vColumns[6].szName=="G" && tblStruct.vColumns[6].szType=="nchar" &&
			tblStruct.vColumns[7].szName=="H" && tblStruct.vColumns[7].szType=="double" &&
			tblStruct.vColumns[8].szName=="I" && tblStruct.vColumns[8].szType=="Decimal" &&
			tblStruct.vColumns[9].szName=="J" && tblStruct.vColumns[9].szType=="integer");

		szSql="create table key (A key, key TEXT, UNIQUE (Key))";
		tblStruct=SqliteParserHelper::ParseCreateTable(szSql);
		BOOST_CHECK(tblStruct.vColumns[0].szName=="A" && tblStruct.vColumns[0].szType=="key" &&
			tblStruct.vColumns[1].szName=="key" && tblStruct.vColumns[1].szType=="TEXT" &&
			tblStruct.vConstraints[0].ctType==ctUnique && tblStruct.vConstraints[0].ColumnList[0]=="Key" &&
			tblStruct.szTableName=="key");

		szSql="CREATE TABLE Temp([xxx] )";
		tblStruct=SqliteParserHelper::ParseCreateTable(szSql);
		BOOST_CHECK(tblStruct.szTableName=="Temp");


		//Parse Trigger
		CreateTriggerStruct tStruct=SqliteParserHelper::ParseCreateTrigger("create temp trigger t1 before insert on abc for each row begin end ");
		BOOST_CHECK(tStruct.bTemp==true && 
			        tStruct.szTriggerName=="t1" &&
					tStruct.teEvent==teBefore &&
					tStruct.dbEvent==deInsert && 
					tStruct.ftStatement==ftRow);
        tStruct=SqliteParserHelper::ParseCreateTrigger("create trigger 't1' instead of UPDATE of f1,f2 on \"abc\" when a=b begin --abc\r\n /*abc*/\r\n delete from b; end ");
		//tStruct=SqliteParserHelper::ParseCreateTrigger("create trigger 't1' instead of UPDATE of f1,f2 on \"abc\" when a=b begin delete from b; end ");
		BOOST_CHECK(tStruct.bTemp==false && 
			        tStruct.szTriggerName=="t1" &&
					tStruct.teEvent==teInstead &&
					tStruct.dbEvent==deUpdateOf &&
					tStruct.vColumns[0]=="f1" &&
					tStruct.vColumns[1]=="f2" &&
					tStruct.szTarget=="abc" &&
					tStruct.szStatement=="when a=b \r\nbegin --abc\r\n /*abc*/\r\n delete from b; end"
					//tStruct.szStatement=="when a=b \r\nbegin delete from b; end"
					);
		tStruct=SqliteParserHelper::ParseCreateTrigger("CREATE TRIGGER [SAVE_SALARY_CHANGE] AFTER UPDATE On [EMPLOYEE] FOR EACH ROW "
			" begin	INSERT INTO salary_history (emp_no) VALUES ((new.salary - old.salary) * 100 / old.salary);	end");
		BOOST_CHECK(tStruct.szTriggerName=="SAVE_SALARY_CHANGE");


		CreateIndexStruct iStruct=SqliteParserHelper::ParseCreateIndex("create index _i1 on t1 (f1, f2) ");
		BOOST_CHECK(iStruct.szIndexName=="_i1" &&
			        iStruct.IsUnique==false &&
					iStruct.szTableName=="t1" &&
					iStruct.caConflict==caNone &&
					iStruct.vColumns[0].szColumn=="f1" &&
					iStruct.vColumns[1].szColumn=="f2");

		iStruct=SqliteParserHelper::ParseCreateIndex("CREATE UNIQUE INDEX index3 On Test3 ('A')" );
		BOOST_CHECK(iStruct.szIndexName=="index3" &&
			iStruct.IsUnique==true &&
			iStruct.szTableName=="Test3" &&
			iStruct.caConflict==caNone &&
			iStruct.vColumns[0].szColumn=="A");

		//Parse Drop
		string szDropName=SqliteParserHelper::ParseDrop("drop table t1");
		BOOST_CHECK(szDropName=="t1");

		//Rename Table
		AlterStruct as=SqliteParserHelper::ParseAlter("alter table t1 rename to t2 	");
		BOOST_CHECK(as.szOldName=="t1" && as.szNewName=="t2");

		//Parse Create Table
		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE [haha](	[f1]  INTEGER  PRIMARY  KEY  ASC  ON  CONFLICT  Replace	)");
		BOOST_CHECK(tblStruct.vColumns[0].vConstraints[0].caConflict==caReplace);

		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE a (a DEFAULT '''1''a' NOT NULL)");
		BOOST_CHECK(tblStruct.vColumns[0].vConstraints[0].szValue=="'''1''a'");

		//Parse Create Table
		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE [COUNTRY](	[COUNTRY] VARCHAR(15) REFERENCES auth_user (id) ,CONSTRAINT [COUNTRY_IDX] PRIMARY KEY ([COUNTRY], [CURRENCY]))");
		BOOST_CHECK(tblStruct.szTableName=="COUNTRY" && tblStruct.vConstraints[0].szName=="COUNTRY_IDX");

		//SQL Script
		string szSemiPos=SqliteParserHelper::ParseSqlScript("--;\nselect a from b;\ndelete from c;create index if not exists view1 on table1 (f1);\naskdf sadfkd;delete from d;--abc");
		//cout << szSemiPos << endl;
		BOOST_CHECK(szSemiPos=="2=16\n3=14\n3=62\n4=13\n4=27\n");
		szSemiPos=SqliteParserHelper::ParseSqlScript("select * from country;\r\n--select t;");
		//cout << szSemiPos << endl;
		BOOST_CHECK(szSemiPos=="1=22\n");

		//Parse Ifnot
		string szTable=SqliteParserHelper::GetIfNotTableScript("create table abc (abc)");
		BOOST_CHECK(szTable=="create table IF NOT EXISTS abc (abc)");
		string szView=SqliteParserHelper::GetIfNotViewScript("create view abc as select a from b");
		BOOST_CHECK(szView=="create view IF NOT EXISTS abc as select a from b");
		string szTrigger=SqliteParserHelper::GetIfNotTriggerScript("create trigger abc update on b begin end");
		BOOST_CHECK(szTrigger=="create trigger IF NOT EXISTS abc update on b begin end");
		string szIndex=SqliteParserHelper::GetIfNotIndexScript("create index abc on b (c)");
		BOOST_CHECK(szIndex=="create index IF NOT EXISTS abc on b (c)");

		CreateVirtualTableStruct tVirtual=SqliteParserHelper::ParseCreateVirtualTable("create virtual table abc.tt using fts1 (abc,cccd)");
		BOOST_CHECK(tVirtual.szTableName=="abc.tt" && tVirtual.szModule=="fts1" && tVirtual.szParameters=="(abc,cccd)");


		//New Test Default Value

		tblStruct=SqliteParserHelper::ParseCreateTable("create table t1(a default -1, b default (a>b), c default ((select a from b))"
			",d default (exists (select c.* from d))"
			",e default (a+b not in ( select t, c from d, a as p )) )"
			);
		BOOST_CHECK(tblStruct.szTableName=="t1" &&
			tblStruct.vColumns[0].vConstraints[0].ctType==ctDefault && 
			tblStruct.vColumns[0].vConstraints[0].szValue=="-1" &&
			tblStruct.vColumns[1].vConstraints[0].szValue=="(a>b)" &&
			tblStruct.vColumns[2].vConstraints[0].szValue=="((select a from b))" &&
			tblStruct.vColumns[3].vConstraints[0].szValue=="(exists (select c.* from d))" &&
			tblStruct.vColumns[4].vConstraints[0].szValue== "(a+b not in ( select t, c from d, a as p ))"
			);
		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE [test1]([a1] deferrable initially deferred)");
		BOOST_CHECK(tblStruct.szTableName=="test1" &&
			tblStruct.vColumns[0].szName=="a1" 
			);
       
		tblStruct=SqliteParserHelper::ParseCreateTable("create table test2 (a1,	foreign key (a1) references test1 (a1))");
		BOOST_CHECK(tblStruct.szTableName=="test2" &&
			tblStruct.vColumns[0].szName=="a1");

		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE [test3](a1 INTEGER	,a2 INTEGER	, Primary Key(a1 autoincrement)  ON CONFLICT Abort  )");
		BOOST_CHECK(tblStruct.szTableName=="test3" &&
			tblStruct.vConstraints[0].ctType==ctPrimaryKey);

		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE [test4](a1 INTEGER references abc )");
		BOOST_CHECK(tblStruct.szTableName=="test4" &&
			tblStruct.vColumns[0].szName=="a1");
		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE [test5]([a1] int(-1,-1))");
		BOOST_CHECK(tblStruct.szTableName=="test5" &&
			tblStruct.vColumns[0].szName=="a1" &&
			tblStruct.vColumns[0].nTypeSize==-1 &&
			tblStruct.vColumns[0].nTypePrecision==-1);

		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE 'DEPARTMENT'(	[DEPT_NO] CHAR(3) NOT NULL CHECK(DEPT_NO = '000' OR (DEPT_NO > '0' AND DEPT_NO <= '999') OR DEPT_NO IS NULL))");
		BOOST_CHECK(tblStruct.szTableName=="DEPARTMENT" &&
			tblStruct.vColumns[0].szName=="DEPT_NO");

		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE 'EMPLOYEE'([JOB_GRADE] INTEGER NOT NULL CHECK(JOB_GRADE BETWEEN 0 AND 6))");
		BOOST_CHECK(tblStruct.szTableName=="EMPLOYEE" &&
			tblStruct.vColumns[0].szName=="JOB_GRADE");

		tblStruct=SqliteParserHelper::ParseCreateTable("CREATE TABLE EMPLOYEE_PROJECT2 (PROJ_ID	CHAR(5) NOT NULL		CHECK (PROJ_ID = UPPER (PROJ_ID)))");
		BOOST_CHECK(tblStruct.szTableName=="EMPLOYEE_PROJECT2" &&
			tblStruct.vColumns[0].szName=="PROJ_ID");

		vector<SyntaxCheckStruct> vHints;
		vector<BlockMatchStruct> vMatchs;
		vector<string> vAutocomplete;
		vector<QueryAlias> vAlias;


		SqliteParserHelper::SqlScriptCheck(0, "insert into ;create table abc();select a 123 from b", "a", 100, 100, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vHints.size()==3);

		SqliteParserHelper::SqlScriptCheck(0, "create table t1(a not null on conflict abc)", "a", 100, 100, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vHints.size()==1);


		SqliteParserHelper::SqlScriptCheck(0, "create table t1 (a collate 123)","a", 100, 100, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vHints[0].szHint=="expecting <identifier>, found '123'");
		//BOOST_CHECK(vAutocomplete.size()==0);

		SqliteParserHelper::SqlScriptCheck(0, "attach 'abc' ttt ", "t", 1, 15, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vAutocomplete[0]=="\"as\"");

		//
		SqliteParserHelper::SqlScriptCheck(0, "attach 'abc'  ttt ", "", 1, 14, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vAutocomplete[0]=="\"as\"");

		//Test Block Matching
		SqliteParserHelper::SqlScriptCheck(0, "select ((a+b)*c) from d", "", 1, 1, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vMatchs[0].iKind=SqliteLexTokenTypes::LP &&
			vMatchs[2].iKind==SqliteLexTokenTypes::RP &&
			vMatchs[1].iBeginCol==9 && vMatchs[1].iEndCol==10);

		//Test from table complete
		int cp;

		cp=SqliteParserHelper::SqlScriptCheck(0, "delete from       ;", "", 1, 14, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp==ss_FromTable);

		cp=SqliteParserHelper::SqlScriptCheck(0, "delete from abc", "", 1, 14, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp==ss_FromTable);

		cp=SqliteParserHelper::SqlScriptCheck(0, "drop table abc", "", 1, 13, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp==ss_DropTable);

		cp=SqliteParserHelper::SqlScriptCheck(0, "select abc from abc", "", 1, 9, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp==ss_Expression);
		//Select * from [COUNTRY] c where c.COUNTRY<>c.
		cp=SqliteParserHelper::SqlScriptCheck(0, "Select * from [COUNTRY] c where c.COUNTRY<>c", "", 1,45, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp==ss_Expression);

		cp=SqliteParserHelper::SqlScriptCheck(0, "delete from abc", "", 1, 1, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp==ss_Unknown);

		//Test Alias Search
		cp=SqliteParserHelper::SqlScriptCheck(0, "select * from abc a, (select ttt from bbb b) as d", "", 1, 1, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vAlias[0].vAlias[0].szTable=="abc" && vAlias[0].vAlias[0].szAlias=="a" &&
			vAlias[0].vAlias[1].szTable=="bbb" && vAlias[0].vAlias[1].szAlias=="b");

		cp=SqliteParserHelper::SqlScriptCheck(0, "select * from abc a union select * from cba c", "", 1, 1, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vAlias[0].vAlias[0].szTable=="abc" && vAlias[0].vAlias[0].szAlias=="a" &&
			vAlias[1].vAlias[0].szTable=="cba" && vAlias[1].vAlias[0].szAlias=="c" &&
			vAlias[0].iBeginCol==1 && vAlias[0].iEndCol==21 &&
			vAlias[1].iBeginCol==27 && vAlias[1].iEndCol==46);

		cp=SqliteParserHelper::SqlScriptCheck(0, "select * from country c, department d where d", "", 1, 1, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(vAlias[0].vAlias[0].szTable=="country" && vAlias[0].vAlias[0].szAlias=="c" &&
			vAlias[0].vAlias[1].szTable=="department" && vAlias[0].vAlias[1].szAlias=="d");

		cp=SqliteParserHelper::SqlScriptCheck(0, "select * from ca c, de where 1>2", "", 1, 23, vHints, vMatchs, vAutocomplete, vAlias);
		BOOST_CHECK(cp=ss_FromTable);

		cout<<"finish"<<endl;
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
	}
}

test_suite*
init_unit_test_suite( int argc, char* argv[] )
{
	test_suite* test= BOOST_TEST_SUITE( "sql parser test" );

	test->add( BOOST_TEST_CASE( &sql_type_test) );

	return test;
}