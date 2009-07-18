#ifndef INC_SqliteParser_hpp_
#define INC_SqliteParser_hpp_

#include <antlr/config.hpp>
/* $ANTLR 2.7.5 (20050128): "Sqlite.g" -> "SqliteParser.hpp"$ */
#include <antlr/TokenStream.hpp>
#include <antlr/TokenBuffer.hpp>
#include "SqliteTokenTypes.hpp"
#include <antlr/LLkParser.hpp>


#include "SqliteEntity.h"
#include <antlr/TokenStreamRewriteEngine.hpp>
//#include "UnicodeCharBuffer.hpp"
//#include "UnicodeCharScanner.hpp"

ANTLR_USING_NAMESPACE(std)
ANTLR_USING_NAMESPACE(antlr)

class CUSTOM_API SqliteParser : public LLkParser, public SqliteTokenTypes
{

	TokenStreamRewriteEngine& engine;
public:
	SqliteParser(TokenStreamRewriteEngine& lexer)
	: LLkParser(lexer,1)
	, engine(lexer)
	{
	}
public:
    Sqlite_Sql_Type m_sqltype;
    void TrimId(string& szId)
    {
		trim(szId);
		if (szId[0]=='\'')
		{
			replace_first(szId, "'","");
			replace_last(szId, "'","");
		}
		else if (szId[0]=='[')
		{
			replace_first(szId, "[","");
			replace_last(szId, "]","");
		}
		else if (szId[0]=='"')
		{
			replace_first(szId, "\"","");
			replace_last(szId, "\"","");
		}    
    }
public:
	void initializeASTFactory( ASTFactory& factory );
#if 0
// constructor creation turned of with 'noConstructor' option
protected:
	SqliteParser(TokenBuffer& tokenBuf, int k);
public:
	SqliteParser(TokenBuffer& tokenBuf);
protected:
	SqliteParser(TokenStream& lexer, int k);
public:
	SqliteParser(TokenStream& lexer);
	SqliteParser(const ParserSharedInputState& state);
// constructor creation turned of with 'noConstructor' option
#endif
	int getNumTokens() const
	{
		return SqliteParser::NUM_TOKENS;
	}
	const char* getTokenName( int type ) const
	{
		if( type > getNumTokens() ) return 0;
		return SqliteParser::tokenNames[type];
	}
	const char* const* getTokenNames() const
	{
		return SqliteParser::tokenNames;
	}
	public: void any_token();
	public: void sql_script();
	public: void sql_stmt();
	public: void sql_single_stmt();
	public: void sql_data_stmt();
	public: void sql_schema_stmt();
	public: void sql_transaction_stmt();
	public: void select_stmt();
	public: void explain_stmt();
	public: void insert_stmt();
	public: void update_stmt();
	public: void delete_stmt();
	public: void create_stmt();
	public: void pragma_stmt();
	public: string  drop_stmt();
	public: AlterStruct  alter_stmt();
	public: CreateTableStruct  create_table_stmt();
	public: CreateViewStruct  create_view_stmt();
	public: CreateTriggerStruct  create_trigger_stmt();
	public: CreateIndexStruct  create_index_stmt();
	public: void temp_flag();
	public: void id();
	public: void table_column_stmt(
		CreateTableStruct& tStruct
	);
	public: void table_select_stmt();
	public: void column_def(
		CreateTableStruct& tStruct
	);
	public: void constraint(
		CreateTableStruct& tStruct
	);
	public: void column_type(
		ColumnDef& col
	);
	public: void column_constraint(
		ColumnDef& def
	);
	public: ConflictAlgorithm  conflict_clause();
	public: OrderType  sort_order();
	public: void expr();
	public: void default_value();
	public: void lit();
	public: void signed_num_lit();
	public: void general_lit();
	public: void sign();
	public: void unsigned_num_lit();
	public: void column_list2(
		vector<string>& vColumns
	);
	public: void atom_expr();
	public: ConflictAlgorithm  conflict_algorithm();
	public: void database_name();
	public: void non_create();
	public: void trigger_event(
		CreateTriggerStruct& tStruct
	);
	public: void database_event(
		CreateTriggerStruct& tStruct
	);
	public: string  db_name();
	public: void for_stmt(
		CreateTriggerStruct& tStruct
	);
	public: void column_list(
		CreateTriggerStruct& tStruct
	);
	public: void column_name(
		CreateIndexStruct& iStruct
	);
	public: void collation_name();
	public: void pragma_setting();
	public: void pragma_version();
	public: void pragma_schema();
	public: void database();
public:
	RefAST getAST()
	{
		return returnAST;
	}
	
protected:
	RefAST returnAST;
private:
	static const char* tokenNames[];
#ifndef NO_STATIC_CONSTS
	static const int NUM_TOKENS = 330;
#else
	enum {
		NUM_TOKENS = 330
	};
#endif
	
	static const unsigned long _tokenSet_0_data_[];
	static const BitSet _tokenSet_0;
	static const unsigned long _tokenSet_1_data_[];
	static const BitSet _tokenSet_1;
	static const unsigned long _tokenSet_2_data_[];
	static const BitSet _tokenSet_2;
	static const unsigned long _tokenSet_3_data_[];
	static const BitSet _tokenSet_3;
	static const unsigned long _tokenSet_4_data_[];
	static const BitSet _tokenSet_4;
	static const unsigned long _tokenSet_5_data_[];
	static const BitSet _tokenSet_5;
	static const unsigned long _tokenSet_6_data_[];
	static const BitSet _tokenSet_6;
	static const unsigned long _tokenSet_7_data_[];
	static const BitSet _tokenSet_7;
};

#endif /*INC_SqliteParser_hpp_*/
