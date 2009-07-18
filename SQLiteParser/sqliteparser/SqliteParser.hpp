#ifndef INC_SqliteParser_hpp_
#define INC_SqliteParser_hpp_

#include <antlr/config.hpp>
/* $ANTLR 2.7.5 (20050201): "Sqlite.g" -> "SqliteParser.hpp"$ */
#include <antlr/TokenStream.hpp>
#include <antlr/TokenBuffer.hpp>
#include "SqliteTokenTypes.hpp"
#include <antlr/LLkParser.hpp>


#include "SqliteEntity.h"
#include <antlr/TokenStreamRewriteEngine.hpp>
#include <antlr/TokenStreamHiddenTokenFilter.hpp>
#include "UnicodeCharBuffer.hpp"
#include "UnicodeCharScanner.hpp"

ANTLR_USING_NAMESPACE(std)
ANTLR_USING_NAMESPACE(antlr)

class CUSTOM_API SqliteParser : public LLkParser, public SqliteTokenTypes
{

	TokenStreamRewriteEngine* engine;
public:
	SqliteParser(TokenStreamRewriteEngine& lexer)
	: LLkParser(lexer,1)
	, engine(&lexer)
	, iEnableEngine(1)
	{
	  //Todo:correct?
	  bs_conflict.add(SQL2RW_rollback);
	  bs_conflict.add(SQL2RW_abort);
	  bs_conflict.add(SQL2RW_fail);
	  bs_conflict.add(SQL2RW_ignore);
	  bs_conflict.add(SQL2RW_replace);
	}
	SqliteParser(TokenStreamHiddenTokenFilter& lexer)
	: LLkParser(lexer,1)
	, iEnableEngine(0)
	{
		//Todo:correct?
		bs_conflict.add(SQL2RW_rollback);
		bs_conflict.add(SQL2RW_abort);
		bs_conflict.add(SQL2RW_fail);
		bs_conflict.add(SQL2RW_ignore);
		bs_conflict.add(SQL2RW_replace);
	}	
public:
    Sqlite_Sql_Type m_sqltype;
    Sql_State m_sqlstate, m_tmpstate;
    /*Column Complete Struct*/
    vector<AliasTable> m_vAlias;
    vector<QueryAlias> m_vQryAlias;

    vector<BlockMatchStruct> m_vMatchs;
    vector<SyntaxCheckStruct> m_vHints;
    /*Auto Complete list*/
    vector<string> m_vAutocomplete;
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
    
    /*Convert Int To String*/
    string IntToString(int num)
	{
		ostringstream myStream; //creates an ostringstream object
		myStream << num << flush;

		/*
		* outputs the number into the string stream and then flushes
		* the buffer (makes sure the output is put into the stream)
		*/
		  
		return(myStream.str()); //returns the string form of the stringstream object
	}
private:
    BitSet bs_conflict;
   	static const char* imgTokenNames[];
public:
   	int iRow;
   	int iColumn;
   	string prefix;
   	int iEnableEngine;
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
	public: string  sql_script();
	public: void sql_stmt();
	public: string  multi_script();
	public: void single_script();
	public: void sql_single_stmt();
	public: void explain();
	public: void sql_data_stmt();
	public: void sql_schema_stmt();
	public: void sql_transaction_stmt();
	public: string  select_stmt();
	public: void insert_stmt();
	public: void update_stmt();
	public: void delete_stmt();
	public: Sqlite_Sql_Type  insert_cmd();
	public: void table_name();
	public: void inscollist_opt();
	public: void itemlist();
	public: void orconf();
	public: string  nm();
	public: void indexed_opt();
	public: void setlist();
	public: void where_opt();
	public: string  dbnm();
	public: string  drop_name();
	public: string  tableview_name();
	public: void simple_table_name();
	public: void create_stmt();
	public: void pragma_stmt();
	public: string  drop_stmt();
	public: void vacuum_stmt();
	public: AlterStruct  alter_stmt();
	public: void reindex_stmt();
	public: void analyze_stmt();
	public: void attach_stmt();
	public: void expr();
	public: void key_opt();
	public: CreateTableStruct  create_table_stmt();
	public: CreateVirtualTableStruct  create_virtual_table_stmt();
	public: CreateViewStruct  create_view_stmt();
	public: CreateTriggerStruct  create_trigger_stmt();
	public: CreateIndexStruct  create_index_stmt();
	public: void temp();
	public: void ifnotexists();
	public: void table_column_stmt(
		CreateTableStruct& tStruct
	);
	public: void table_select_stmt();
	public: string  create_ifnot_table_stmt();
	public: string  create_ifnot_view_stmt();
	public: string  create_ifnot_trigger_stmt();
	public: void trigger_event(
		CreateTriggerStruct& tStruct
	);
	public: void database_event(
		CreateTriggerStruct& tStruct
	);
	public: void for_stmt(
		CreateTriggerStruct& tStruct
	);
	public: string  trigger_action();
	public: string  create_ifnot_index_stmt();
	public: void column_name(
		CreateIndexStruct& iStruct
	);
	public: ConflictAlgorithm  conflict_clause();
	public: void column_def(
		CreateTableStruct& tStruct
	);
	public: void tcons(
		CreateTableStruct& tStruct
	);
	public: void column_type(
		ColumnDef& col
	);
	public: void column_constraint(
		ColumnDef& def
	);
	public: void type_name();
	public: string  signed_num();
	public: void defer_subclause();
	public: OrderType  sortorder();
	public: void idxlist_opt();
	public: void refargs();
	public: string  default_value();
	public: string  collate();
	public: string  sign();
	public: string  term();
	public: string  id();
	public: void idxlist(
		vector<string>& vColumns
	);
	public: void compound_expression();
	public: void binary_op();
	public: void unary_op();
	public: void sub_expression();
	public: void null_op();
	public: void in_stmt();
	public: void cast_function();
	public: void raisetype();
	public: void function();
	public: void sub_select();
	public: void case_function();
	public: void in_op();
	public: void exprlist();
	public: void distinct();
	public: void typetoken();
	public: void case_exprlist();
	public: void case_else();
	public: void likeop();
	public: void between_op();
	public: ConflictAlgorithm  conflict_algorithm();
	public: void trigger_cmd_list();
	public: void trigger_action_check();
	public: void trigger_cmd();
	public: void column_list(
		CreateTriggerStruct& tStruct
	);
	public: void join_kw();
	public: void full_name();
	public: void nmnum();
	public: string  minus_num();
	public: void ifexists();
	public: void column();
	public: void transtype();
	public: void trans_opt();
	public: void savepoint_opt();
	public: void resolvetype();
	public: void fallback();
	public: void ids();
	public: string  plus_num();
	public: void number();
	public: void ctime_kw();
	public: void refarg();
	public: void like_kw();
	public: void refact();
	public: void oneselect();
	public: void multiselect_op();
	public: void selcollist();
	public: void from();
	public: void groupby_opt();
	public: void having_opt();
	public: void orderby_opt();
	public: void limit_opt();
	public: void sclp();
	public: void sub_select_as();
	public: string  table_as();
	public: void seltablist();
	public: void seltabitem();
	public: void joinop();
	public: void on_opt();
	public: void using_opt();
	public: void seltablist_paren();
	public: void inscollist();
	public: void sortlist();
	public: void sortitem();
	public: void init_deferred_pred_opt();
	public: void carglist();
	public: void carg();
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
	static const int NUM_TOKENS = 328;
#else
	enum {
		NUM_TOKENS = 328
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
	static const unsigned long _tokenSet_8_data_[];
	static const BitSet _tokenSet_8;
	static const unsigned long _tokenSet_9_data_[];
	static const BitSet _tokenSet_9;
	static const unsigned long _tokenSet_10_data_[];
	static const BitSet _tokenSet_10;
	static const unsigned long _tokenSet_11_data_[];
	static const BitSet _tokenSet_11;
	static const unsigned long _tokenSet_12_data_[];
	static const BitSet _tokenSet_12;
	static const unsigned long _tokenSet_13_data_[];
	static const BitSet _tokenSet_13;
	static const unsigned long _tokenSet_14_data_[];
	static const BitSet _tokenSet_14;
	static const unsigned long _tokenSet_15_data_[];
	static const BitSet _tokenSet_15;
	static const unsigned long _tokenSet_16_data_[];
	static const BitSet _tokenSet_16;
	static const unsigned long _tokenSet_17_data_[];
	static const BitSet _tokenSet_17;
	static const unsigned long _tokenSet_18_data_[];
	static const BitSet _tokenSet_18;
	static const unsigned long _tokenSet_19_data_[];
	static const BitSet _tokenSet_19;
	static const unsigned long _tokenSet_20_data_[];
	static const BitSet _tokenSet_20;
	static const unsigned long _tokenSet_21_data_[];
	static const BitSet _tokenSet_21;
	static const unsigned long _tokenSet_22_data_[];
	static const BitSet _tokenSet_22;
	static const unsigned long _tokenSet_23_data_[];
	static const BitSet _tokenSet_23;
	static const unsigned long _tokenSet_24_data_[];
	static const BitSet _tokenSet_24;
	static const unsigned long _tokenSet_25_data_[];
	static const BitSet _tokenSet_25;
	static const unsigned long _tokenSet_26_data_[];
	static const BitSet _tokenSet_26;
	static const unsigned long _tokenSet_27_data_[];
	static const BitSet _tokenSet_27;
	static const unsigned long _tokenSet_28_data_[];
	static const BitSet _tokenSet_28;
	static const unsigned long _tokenSet_29_data_[];
	static const BitSet _tokenSet_29;
	static const unsigned long _tokenSet_30_data_[];
	static const BitSet _tokenSet_30;
	static const unsigned long _tokenSet_31_data_[];
	static const BitSet _tokenSet_31;
	static const unsigned long _tokenSet_32_data_[];
	static const BitSet _tokenSet_32;
	static const unsigned long _tokenSet_33_data_[];
	static const BitSet _tokenSet_33;
	static const unsigned long _tokenSet_34_data_[];
	static const BitSet _tokenSet_34;
	static const unsigned long _tokenSet_35_data_[];
	static const BitSet _tokenSet_35;
	static const unsigned long _tokenSet_36_data_[];
	static const BitSet _tokenSet_36;
	static const unsigned long _tokenSet_37_data_[];
	static const BitSet _tokenSet_37;
	static const unsigned long _tokenSet_38_data_[];
	static const BitSet _tokenSet_38;
	static const unsigned long _tokenSet_39_data_[];
	static const BitSet _tokenSet_39;
	static const unsigned long _tokenSet_40_data_[];
	static const BitSet _tokenSet_40;
	static const unsigned long _tokenSet_41_data_[];
	static const BitSet _tokenSet_41;
	static const unsigned long _tokenSet_42_data_[];
	static const BitSet _tokenSet_42;
	static const unsigned long _tokenSet_43_data_[];
	static const BitSet _tokenSet_43;
	static const unsigned long _tokenSet_44_data_[];
	static const BitSet _tokenSet_44;
	static const unsigned long _tokenSet_45_data_[];
	static const BitSet _tokenSet_45;
	static const unsigned long _tokenSet_46_data_[];
	static const BitSet _tokenSet_46;
	static const unsigned long _tokenSet_47_data_[];
	static const BitSet _tokenSet_47;
	static const unsigned long _tokenSet_48_data_[];
	static const BitSet _tokenSet_48;
	static const unsigned long _tokenSet_49_data_[];
	static const BitSet _tokenSet_49;
	static const unsigned long _tokenSet_50_data_[];
	static const BitSet _tokenSet_50;
};

#endif /*INC_SqliteParser_hpp_*/
