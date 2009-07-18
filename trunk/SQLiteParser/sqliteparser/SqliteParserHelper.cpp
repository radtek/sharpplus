#include "StdAfx.h"
#include <antlr/TokenWithIndex.hpp>
#include <antlr/NoViableAltException.hpp>
#include <antlr/SemanticException.hpp>
#include <antlr/CommonASTWithHiddenTokens.hpp>
#include <antlr/CommonHiddenStreamToken.hpp>
#include <antlr/TokenStreamHiddenTokenFilter.hpp>
#include "SqliteLexTokenTypes.hpp"
#include ".\SqliteParserHelper.h"

#include "SqliteLexer.hpp"
#include "SqliteParser.hpp"


//Todo:rewriteEngine discard something?
#define InitParser(Sql)  \
istringstream ss(Sql); \
SqliteLexer lexer(ss); \
lexer.setTokenObjectFactory(TokenWithIndex::factory);\
lexer.comment_valid=false;\
lexer.done=false;\
TokenStreamRewriteEngine rewriteEngine(lexer);\
rewriteEngine.discard(SqliteLexTokenTypes::NEW_LINE);\
rewriteEngine.discard(SqliteLexTokenTypes::SPACE);\
rewriteEngine.discard(SqliteLexTokenTypes::COMMENT);\
SqliteParser parser(rewriteEngine);\
ASTFactory ast_factory;\
parser.m_sqlstate=ss_Unknown;\
parser.initializeASTFactory(ast_factory);\
parser.setASTFactory(&ast_factory);

#define InitFormatParser(Sql)  \
istringstream ss(Sql); \
SqliteLexer lexer(ss); \
lexer.setTokenObjectFactory(&CommonHiddenStreamToken::factory);\
lexer.comment_valid=true;\
lexer.done=false;\
TokenStreamHiddenTokenFilter filter(lexer);\
filter.hide(SqliteLexTokenTypes::SPACE);\
filter.hide(SqliteLexTokenTypes::NEW_LINE);\
filter.hide(SqliteLexTokenTypes::COMMENT);\
SqliteParser parser(filter);\
ASTFactory ast_factory("CommonASTWithHiddenTokens", &CommonASTWithHiddenTokens::factory);\
parser.m_sqlstate=ss_Unknown;\
parser.initializeASTFactory(ast_factory);\
parser.setASTFactory(&ast_factory);

void OutputTokens(SqliteLexer& lexer)
{
	unsigned int pos=lexer.mark();
	for(;;)
	{
		RefToken t = lexer.nextToken();

		if ( t->getType() == Token::EOF_TYPE )
			break;

		cout << "Token: " << t->toString() << endl;
	}
	cout << "done lexing..." << endl;

	lexer.rewind(pos);
}

void CalcTokenPos (SqliteParser& Parser, string Sql, string prefix, int& iRow, int& iColumn )
{
	if (prefix!="")
		return;

	istringstream ss(Sql); 
	SqliteLexer lexer(ss); 
	//lexer.setTokenObjectFactory(Token::factory);
	lexer.comment_valid=false;
	lexer.done=false;

	bool bFindPos=false;

	unsigned int pos=lexer.mark();
	for(;;)
	{
		RefToken t = lexer.nextToken();

		if ( t->getType() == Token::EOF_TYPE )
			break;

		if (t->getType()==SqliteLexTokenTypes::LP ||
			t->getType()==SqliteLexTokenTypes::RP)
		{
			BlockMatchStruct bs;
			bs.iKind=t->getType();
			bs.iRow=t->getLine();
			bs.iBeginCol=t->getColumn();
			bs.iEndCol=bs.iBeginCol+1;
			Parser.m_vMatchs.push_back(bs);
		}

		if (t->getType()!=SqliteLexTokenTypes::NEW_LINE && 
			t->getType()!=SqliteLexTokenTypes::SPACE && 
			t->getType()!=SqliteLexTokenTypes::COMMENT && 
			!bFindPos)
		{
			if (t->getLine()>iRow || (t->getLine()==iRow && t->getColumn()>=(iColumn-t->getText().length())))
			{
                iRow=t->getLine();
				iColumn=t->getColumn();
				bFindPos=true;
			}
		}
		
	}

	//lexer.rewind(pos);
}

SqliteParserHelper::SqliteParserHelper(void)
{
}

SqliteParserHelper::~SqliteParserHelper(void)
{
}


Sqlite_Sql_Type SqliteParserHelper::GetSqlType(string Sql)
{
	try
	{
		//Todo:support extract several Sql 
		//example: select a from b; select b from c;
        InitParser(Sql);
        //OutputTokens(lexer);
		parser.sql_script();

		return parser.m_sqltype;
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;

	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	
	
	return sst_Unknown;
}

CreateViewStruct SqliteParserHelper::ParseCreateView(string Sql)
{
	CreateViewStruct v;
	try
	{
        InitParser(Sql);
		return parser.create_view_stmt();
    }
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	v.szViewName="";
	v.bTemp=false;
	return v;
}

string SqliteParserHelper::ParseDrop(string Sql)
{
	try
	{
        InitParser(Sql);
		return parser.drop_stmt();
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
	}	

	return "";
}

CreateTableStruct SqliteParserHelper::ParseCreateTable(string Sql)
{
	CreateTableStruct t;
	try
	{
        InitParser(Sql);
		return parser.create_table_stmt();
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	t.szTableName="";
	t.bTemp=false;
	return t;
}

CreateVirtualTableStruct SqliteParserHelper::ParseCreateVirtualTable(string Sql)
{
	CreateVirtualTableStruct t;
	try
	{
		InitParser(Sql);
		return parser.create_virtual_table_stmt();
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	t.szTableName="";
	t.szModule="";
	t.szParameters="";

	return t;
}


CreateTriggerStruct SqliteParserHelper::ParseCreateTrigger(string Sql)
{
	CreateTriggerStruct t;
	try
	{
        InitParser(Sql);
		lexer.comment_valid=true;
		return parser.create_trigger_stmt();
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	t.szTriggerName="";
	t.bTemp=false;
	return t;
}

CreateIndexStruct SqliteParserHelper::ParseCreateIndex(string Sql)
{
	CreateIndexStruct i;
	try
	{
		InitParser(Sql);
		return parser.create_index_stmt();
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	i.szIndexName="";
	i.IsUnique=false;
	return i;
}

int SqliteParserHelper::GetLastTokenType(std::string Sql)
{
	try
	{
		int nTokenType=-1;
		istringstream ss(Sql);
		SqliteLexer lexer(ss);
		lexer.done=false;
		lexer.comment_valid=true;
		while ( ! lexer.done )
		{
			antlr::RefToken t = lexer.nextToken();
			if (t->getType()!=1)
    			nTokenType= t->getType();
		}

		return nTokenType;
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;

	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	return -1;
}

AlterStruct SqliteParserHelper::ParseAlter(string Sql)
{
	AlterStruct s;
	try
	{
        InitParser(Sql);  
		return parser.alter_stmt();
	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;

	}	

	s.szNewName="";
	s.szOldName="";
	return s;
}

string SqliteParserHelper::ParseSqlScript(string Sql)
{
	try
	{
		InitParser(Sql);
        //OutputTokens(lexer);
		try
		{
			return parser.sql_script();
		}
		catch( ANTLRException& e )
		{
			InitParser(Sql);
			return parser.multi_script();
		}
		catch( exception& e )
		{
			InitParser(Sql);
			return parser.multi_script();
		}	

	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
	}	

	return "";
}

int SqliteParserHelper::SqlScriptCheck(int nType, string Sql,string prefix, int row, int column, vector<SyntaxCheckStruct>& vHints,vector<BlockMatchStruct>& vMatchs, vector<string>& vAutocomplete, vector<QueryAlias>& vAlias)
{
	SyntaxCheckStruct st;
	try
	{
		InitParser(Sql);
		//OutputTokens(lexer);

		CalcTokenPos(parser, Sql, prefix, row, column);

		parser.iRow=row;
		parser.iColumn=column;
		parser.prefix=prefix;

		if (0==nType)
		  parser.sql_script();
		else if (1==nType)
		  parser.trigger_action_check();
        
        vHints=parser.m_vHints;
		vMatchs=parser.m_vMatchs;
		vAutocomplete=parser.m_vAutocomplete;
		vAlias=parser.m_vQryAlias;

		return parser.m_sqlstate;
		//cout<<vHints.size() << endl;
		//cout<< parser.m_vHints.size() << endl;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
		return 0;/*Sql_State::ss_Unknown*/
	}	
}

string SqliteParserHelper::GetIfNotTableScript(string Sql)
{
	try
	{
		InitParser(Sql);
		//OutputTokens(lexer);
		try
		{
			return parser.create_ifnot_table_stmt();
		}
		catch( ANTLRException& e )
		{
			return Sql;
		}
		catch( exception& e )
		{
			return Sql;
		}	

	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
		return Sql;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
		return Sql;
	}	
}

string SqliteParserHelper::GetIfNotViewScript(string Sql)
{
	try
	{
		InitParser(Sql);
		//OutputTokens(lexer);
		try
		{
			return parser.create_ifnot_view_stmt();
		}
		catch( ANTLRException& e )
		{
			return Sql;
		}
		catch( exception& e )
		{
			return Sql;
		}	

	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
		return Sql;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
		return Sql;
	}	
}

string SqliteParserHelper::GetIfNotTriggerScript(string Sql)
{
	try
	{
		InitParser(Sql);
		//OutputTokens(lexer);
		try
		{
			return parser.create_ifnot_trigger_stmt();
		}
		catch( ANTLRException& e )
		{
			return Sql;
		}
		catch( exception& e )
		{
			return Sql;
		}	

	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
		return Sql;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
		return Sql;
	}	
}

string SqliteParserHelper::GetIfNotIndexScript(string Sql)
{
	try
	{
		InitParser(Sql);
		//OutputTokens(lexer);
		try
		{
			return parser.create_ifnot_index_stmt();
		}
		catch( ANTLRException& e )
		{
			return Sql;
		}
		catch( exception& e )
		{
			return Sql;
		}	

	}
	catch( ANTLRException& e )
	{
		cerr << "exception: " << e.getMessage() << endl;
		return Sql;
	}
	catch( exception& e )
	{
		cerr << "exception: " << e.what() << endl;
		return Sql;
	}	
}

string SqliteParserHelper::GetExpected()
{
	InitParser("select * from abc");

	BitSet set;
	set.add(SqliteLexTokenTypes::SQL2RW_pragma);
	set.add(SqliteLexTokenTypes::SQL2RW_isnull);
	
	return MismatchedTokenException(parser.getTokenNames(), parser.getNumTokens(), parser.LT(1), set, false, parser.getFilename()).getMessage();
}

