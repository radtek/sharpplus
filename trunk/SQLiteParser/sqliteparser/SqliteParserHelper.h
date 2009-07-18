#pragma once
#include "SqliteEntity.h"

class SqliteParserHelper
{
public:
	SqliteParserHelper(void);
	~SqliteParserHelper(void);

	static Sqlite_Sql_Type GetSqlType(std::string Sql);
	static int GetLastTokenType(std::string Sql);
    static CreateTableStruct ParseCreateTable(string Sql);
    static CreateVirtualTableStruct ParseCreateVirtualTable(string Sql);
    static CreateViewStruct ParseCreateView(string Sql);
    static CreateTriggerStruct ParseCreateTrigger(string Sql);
	static CreateIndexStruct ParseCreateIndex(string Sql);
	static string ParseDrop(string Sql);
	static AlterStruct ParseAlter(string Sql);
	static string ParseSqlScript(string Sql);
	static int SqlScriptCheck(int nType,string Sql, string prefix, int row, int column, vector<SyntaxCheckStruct>& vHints, vector<BlockMatchStruct>& vMatchs,vector<string>& vAutocomplete, vector<QueryAlias>& vAlias);
	static string GetIfNotTableScript(string Sql);
	static string GetIfNotViewScript(string Sql);
	static string GetIfNotTriggerScript(string Sql);
	static string GetIfNotIndexScript(string Sql);
	static string GetExpected();
};
