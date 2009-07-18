/* $ANTLR 2.7.5 (20050128): "Sqlite.g" -> "SqliteParser.cpp"$ */

	#include "StdAfx.h"

#include "SqliteParser.hpp"
#include <antlr/NoViableAltException.hpp>
#include <antlr/SemanticException.hpp>
#include <antlr/ASTFactory.hpp>

#include <boost/algorithm/string.hpp>
using namespace boost;


#if 0
// constructor creation turned of with 'noConstructor' option
SqliteParser::SqliteParser(TokenBuffer& tokenBuf, int k)
: LLkParser(tokenBuf,k)
{
}

SqliteParser::SqliteParser(TokenBuffer& tokenBuf)
: LLkParser(tokenBuf,3)
{
}

SqliteParser::SqliteParser(TokenStream& lexer, int k)
: LLkParser(lexer,k)
{
}

SqliteParser::SqliteParser(TokenStream& lexer)
: LLkParser(lexer,3)
{
}

SqliteParser::SqliteParser(const ParserSharedInputState& state)
: LLkParser(state,3)
{
}

// constructor creation turned of with 'noConstructor' option
#endif
void SqliteParser::any_token() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST any_token_AST = nullAST;
	
	matchNot(Token::EOF_TYPE);
	returnAST = any_token_AST;
}

void SqliteParser::sql_script() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_script_AST = nullAST;
	
	{
	if ((_tokenSet_0.member(LA(1)))) {
		sql_stmt();
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMICOLON)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == SEMICOLON)) {
			RefAST tmp2_AST = nullAST;
			tmp2_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp2_AST);
			match(SEMICOLON);
			{
			if ((_tokenSet_0.member(LA(1)))) {
				sql_stmt();
				astFactory->addASTChild( currentAST, returnAST );
			}
			else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMICOLON)) {
			}
			else {
				throw NoViableAltException(LT(1), getFilename());
			}
			
			}
		}
		else {
			goto _loop101;
		}
		
	}
	_loop101:;
	} // ( ... )*
	sql_script_AST = currentAST.root;
	returnAST = sql_script_AST;
}

void SqliteParser::sql_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_stmt_AST = nullAST;
	
	if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_explain || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_select || LA(1) == SQL2RW_update)) {
		sql_data_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_alter || LA(1) == SQL2RW_create || LA(1) == SQL2RW_drop || LA(1) == SQL2RW_pragma || LA(1) == DELIMITED_ID2)) {
		sql_schema_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_begin || LA(1) == SQL2RW_commit || LA(1) == SQL2RW_end || LA(1) == SQL2RW_rollback)) {
		sql_transaction_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_stmt_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sql_stmt_AST;
}

void SqliteParser::sql_single_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_single_stmt_AST = nullAST;
	
	{
	if ((_tokenSet_0.member(LA(1)))) {
		sql_stmt();
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMICOLON)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SEMICOLON)) {
		RefAST tmp3_AST = nullAST;
		tmp3_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp3_AST);
		match(SEMICOLON);
	}
	else if ((LA(1) == Token::EOF_TYPE)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	sql_single_stmt_AST = currentAST.root;
	returnAST = sql_single_stmt_AST;
}

void SqliteParser::sql_data_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_data_stmt_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_select:
	{
		select_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_explain:
	{
		explain_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_insert:
	{
		insert_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_update:
	{
		update_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_delete:
	{
		delete_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = sql_data_stmt_AST;
}

void SqliteParser::sql_schema_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_schema_stmt_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_create:
	{
		create_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_pragma:
	{
		pragma_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_drop:
	case DELIMITED_ID2:
	{
		drop_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_alter:
	{
		alter_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = sql_schema_stmt_AST;
}

void SqliteParser::sql_transaction_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_transaction_stmt_AST = nullAST;
	
	m_sqltype=sst_Transaction;   
	
	
	switch ( LA(1)) {
	case SQL2RW_begin:
	{
		RefAST tmp4_AST = nullAST;
		tmp4_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp4_AST);
		match(SQL2RW_begin);
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_end:
	{
		RefAST tmp5_AST = nullAST;
		tmp5_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp5_AST);
		match(SQL2RW_end);
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_commit:
	{
		RefAST tmp6_AST = nullAST;
		tmp6_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp6_AST);
		match(SQL2RW_commit);
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_rollback:
	{
		RefAST tmp7_AST = nullAST;
		tmp7_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp7_AST);
		match(SQL2RW_rollback);
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = sql_transaction_stmt_AST;
}

void SqliteParser::select_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST select_stmt_AST = nullAST;
	
	RefAST tmp8_AST = nullAST;
	tmp8_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp8_AST);
	match(SQL2RW_select);
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == ANY_CHAR)) {
			RefAST tmp9_AST = nullAST;
			tmp9_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp9_AST);
			match(ANY_CHAR);
		}
		else {
			goto _loop109;
		}
		
	}
	_loop109:;
	} // ( ... )*
	
		    m_sqltype=sst_Select;
		
	select_stmt_AST = currentAST.root;
	returnAST = select_stmt_AST;
}

void SqliteParser::explain_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST explain_stmt_AST = nullAST;
	
	RefAST tmp10_AST = nullAST;
	tmp10_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp10_AST);
	match(SQL2RW_explain);
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == ANY_CHAR)) {
			RefAST tmp11_AST = nullAST;
			tmp11_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp11_AST);
			match(ANY_CHAR);
		}
		else {
			goto _loop112;
		}
		
	}
	_loop112:;
	} // ( ... )*
	
		    m_sqltype=sst_Explain;
		
	explain_stmt_AST = currentAST.root;
	returnAST = explain_stmt_AST;
}

void SqliteParser::insert_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST insert_stmt_AST = nullAST;
	
	RefAST tmp12_AST = nullAST;
	tmp12_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp12_AST);
	match(SQL2RW_insert);
	RefAST tmp13_AST = nullAST;
	tmp13_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp13_AST);
	match(SQL2RW_into);
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == ANY_CHAR)) {
			RefAST tmp14_AST = nullAST;
			tmp14_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp14_AST);
			match(ANY_CHAR);
		}
		else {
			goto _loop115;
		}
		
	}
	_loop115:;
	} // ( ... )*
	
		    m_sqltype=sst_Insert;
		
	insert_stmt_AST = currentAST.root;
	returnAST = insert_stmt_AST;
}

void SqliteParser::update_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST update_stmt_AST = nullAST;
	
	RefAST tmp15_AST = nullAST;
	tmp15_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp15_AST);
	match(SQL2RW_update);
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == ANY_CHAR)) {
			RefAST tmp16_AST = nullAST;
			tmp16_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp16_AST);
			match(ANY_CHAR);
		}
		else {
			goto _loop118;
		}
		
	}
	_loop118:;
	} // ( ... )*
	
		     m_sqltype=sst_Update;
		
	update_stmt_AST = currentAST.root;
	returnAST = update_stmt_AST;
}

void SqliteParser::delete_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST delete_stmt_AST = nullAST;
	
	RefAST tmp17_AST = nullAST;
	tmp17_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp17_AST);
	match(SQL2RW_delete);
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == ANY_CHAR)) {
			RefAST tmp18_AST = nullAST;
			tmp18_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp18_AST);
			match(ANY_CHAR);
		}
		else {
			goto _loop121;
		}
		
	}
	_loop121:;
	} // ( ... )*
	
		     m_sqltype=sst_Delete;
		
	delete_stmt_AST = currentAST.root;
	returnAST = delete_stmt_AST;
}

void SqliteParser::create_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_stmt_AST = nullAST;
	
	if ((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_temp || LA(2) == SQL2RW_table || LA(2) == SQL2RW_temporary) && (LA(3) == SQL2RW_table || LA(3) == REGULAR_ID || LA(3) == CHAR_STRING || LA(3) == DELIMITED_ID || LA(3) == BRACKET_STRING)) {
		create_table_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		create_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_temp || LA(2) == SQL2RW_temporary || LA(2) == SQL2RW_view) && (LA(3) == SQL2RW_temp || LA(3) == SQL2RW_view || LA(3) == REGULAR_ID || LA(3) == CHAR_STRING || LA(3) == DELIMITED_ID || LA(3) == BRACKET_STRING)) {
		create_view_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		create_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_temp || LA(2) == SQL2RW_temporary || LA(2) == SQL2RW_trigger) && (LA(3) == SQL2RW_trigger || LA(3) == REGULAR_ID || LA(3) == CHAR_STRING || LA(3) == DELIMITED_ID || LA(3) == BRACKET_STRING)) {
		create_trigger_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		create_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_index || LA(2) == SQL2RW_unique)) {
		create_index_stmt();
		astFactory->addASTChild( currentAST, returnAST );
		create_stmt_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = create_stmt_AST;
}

void SqliteParser::pragma_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST pragma_stmt_AST = nullAST;
	
	m_sqltype=sst_Pragma;
	
	
	if ((LA(1) == SQL2RW_pragma) && (_tokenSet_1.member(LA(2)))) {
		RefAST tmp19_AST = nullAST;
		tmp19_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp19_AST);
		match(SQL2RW_pragma);
		pragma_setting();
		astFactory->addASTChild( currentAST, returnAST );
		{
		if ((LA(1) == EQUALS_OP)) {
			RefAST tmp20_AST = nullAST;
			tmp20_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp20_AST);
			match(EQUALS_OP);
			{ // ( ... )*
			for (;;) {
				if ((LA(1) == ANY_CHAR)) {
					RefAST tmp21_AST = nullAST;
					tmp21_AST = astFactory->create(LT(1));
					astFactory->addASTChild(currentAST, tmp21_AST);
					match(ANY_CHAR);
				}
				else {
					goto _loop210;
				}
				
			}
			_loop210:;
			} // ( ... )*
			m_sqltype=sst_PragmaSetting;
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMICOLON)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		pragma_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_pragma) && (LA(2) == SQL2RW_user_version || LA(2) == SQL2RW_schema_version || LA(2) == REGULAR_ID || LA(2) == CHAR_STRING || LA(2) == DELIMITED_ID || LA(2) == BRACKET_STRING)) {
		RefAST tmp22_AST = nullAST;
		tmp22_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp22_AST);
		match(SQL2RW_pragma);
		pragma_version();
		astFactory->addASTChild( currentAST, returnAST );
		{
		if ((LA(1) == EQUALS_OP)) {
			RefAST tmp23_AST = nullAST;
			tmp23_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp23_AST);
			match(EQUALS_OP);
			{ // ( ... )*
			for (;;) {
				if ((LA(1) == ANY_CHAR)) {
					RefAST tmp24_AST = nullAST;
					tmp24_AST = astFactory->create(LT(1));
					astFactory->addASTChild(currentAST, tmp24_AST);
					match(ANY_CHAR);
				}
				else {
					goto _loop213;
				}
				
			}
			_loop213:;
			} // ( ... )*
			m_sqltype=sst_PragmaSetting;
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMICOLON)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		pragma_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_pragma) && (LA(2) == SQL2RW_database_list || LA(2) == SQL2RW_foreign_key_list || LA(2) == SQL2RW_index_list || LA(2) == SQL2RW_index_info || LA(2) == SQL2RW_table_info)) {
		RefAST tmp25_AST = nullAST;
		tmp25_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp25_AST);
		match(SQL2RW_pragma);
		pragma_schema();
		astFactory->addASTChild( currentAST, returnAST );
		pragma_stmt_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = pragma_stmt_AST;
}

string  SqliteParser::drop_stmt() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST drop_stmt_AST = nullAST;
	RefAST oName_AST = nullAST;
	
	if ((LA(1) == SQL2RW_drop)) {
		RefAST tmp26_AST = nullAST;
		tmp26_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp26_AST);
		match(SQL2RW_drop);
		{
		switch ( LA(1)) {
		case SQL2RW_table:
		{
			RefAST tmp27_AST = nullAST;
			tmp27_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp27_AST);
			match(SQL2RW_table);
			m_sqltype=sst_DropTable;
			break;
		}
		case SQL2RW_view:
		{
			RefAST tmp28_AST = nullAST;
			tmp28_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp28_AST);
			match(SQL2RW_view);
			m_sqltype=sst_DropView;
			break;
		}
		case SQL2RW_trigger:
		{
			RefAST tmp29_AST = nullAST;
			tmp29_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp29_AST);
			match(SQL2RW_trigger);
			m_sqltype=sst_DropTrigger;
			break;
		}
		case SQL2RW_index:
		{
			RefAST tmp30_AST = nullAST;
			tmp30_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp30_AST);
			match(SQL2RW_index);
			m_sqltype=sst_DropIndex;
			break;
		}
		default:
		{
			throw NoViableAltException(LT(1), getFilename());
		}
		}
		}
		id();
		oName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		
			   
			   szName=oName_AST->getText();
			   TrimId(szName);
			   return szName;
			
		{ // ( ... )*
		for (;;) {
			if ((LA(1) == ANY_CHAR)) {
				RefAST tmp31_AST = nullAST;
				tmp31_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp31_AST);
				match(ANY_CHAR);
			}
			else {
				goto _loop226;
			}
			
		}
		_loop226:;
		} // ( ... )*
		drop_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == DELIMITED_ID2)) {
		RefAST tmp32_AST = nullAST;
		tmp32_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp32_AST);
		match(DELIMITED_ID2);
		m_sqltype=sst_Vaccum;
		drop_stmt_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = drop_stmt_AST;
	return szName;
}

AlterStruct  SqliteParser::alter_stmt() {
	AlterStruct as;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST alter_stmt_AST = nullAST;
	RefAST oldName_AST = nullAST;
	RefAST newName_AST = nullAST;
	
	RefAST tmp33_AST = nullAST;
	tmp33_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp33_AST);
	match(SQL2RW_alter);
	RefAST tmp34_AST = nullAST;
	tmp34_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp34_AST);
	match(SQL2RW_table);
	{
	if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING) && (LA(2) == PERIOD)) {
		database();
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp35_AST = nullAST;
		tmp35_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp35_AST);
		match(PERIOD);
	}
	else if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING) && (LA(2) == SQL2RW_add || LA(2) == SQL2RW_rename)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	id();
	oldName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
	as.szOldName=oldName_AST->getText();
	TrimId(as.szOldName);
	
	{
	if ((LA(1) == SQL2RW_rename)) {
		RefAST tmp36_AST = nullAST;
		tmp36_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp36_AST);
		match(SQL2RW_rename);
		RefAST tmp37_AST = nullAST;
		tmp37_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp37_AST);
		match(SQL2RW_to);
		id();
		newName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		
		m_sqltype=sst_RenameTable;
		as.szNewName=newName_AST->getText();
		TrimId(as.szNewName);
		
	}
	else if ((LA(1) == SQL2RW_add)) {
		RefAST tmp38_AST = nullAST;
		tmp38_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp38_AST);
		match(SQL2RW_add);
		{ // ( ... )*
		for (;;) {
			if ((LA(1) == ANY_CHAR)) {
				RefAST tmp39_AST = nullAST;
				tmp39_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp39_AST);
				match(ANY_CHAR);
			}
			else {
				goto _loop231;
			}
			
		}
		_loop231:;
		} // ( ... )*
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	alter_stmt_AST = currentAST.root;
	returnAST = alter_stmt_AST;
	return as;
}

CreateTableStruct  SqliteParser::create_table_stmt() {
	CreateTableStruct tStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_table_stmt_AST = nullAST;
	RefAST tName_AST = nullAST;
	
	tStruct.bTemp=false;
	m_sqltype=sst_CreateTable;
	
	
	RefAST tmp40_AST = nullAST;
	tmp40_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp40_AST);
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp_flag();
		astFactory->addASTChild( currentAST, returnAST );
		
			  tStruct.bTemp=true;
			  m_sqltype=sst_CreateTempTable;
			
	}
	else if ((LA(1) == SQL2RW_table)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp41_AST = nullAST;
	tmp41_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp41_AST);
	match(SQL2RW_table);
	id();
	tName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
		    tStruct.szTableName=tName_AST->getText();
		    TrimId(tStruct.szTableName);
		
	{
	if ((LA(1) == LEFT_PAREN)) {
		table_column_stmt(tStruct);
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == SQL2RW_as)) {
		table_select_stmt();
		astFactory->addASTChild( currentAST, returnAST );
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	
		     return tStruct;
		
	create_table_stmt_AST = currentAST.root;
	returnAST = create_table_stmt_AST;
	return tStruct;
}

CreateViewStruct  SqliteParser::create_view_stmt() {
	CreateViewStruct vStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_view_stmt_AST = nullAST;
	RefAST vName_AST = nullAST;
	RefToken  b = nullToken;
	RefAST b_AST = nullAST;
	RefToken  e = nullToken;
	RefAST e_AST = nullAST;
	
	vStruct.bTemp=false;
	m_sqltype=sst_CreateView;
	
	
	RefAST tmp42_AST = nullAST;
	tmp42_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp42_AST);
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp_flag();
		astFactory->addASTChild( currentAST, returnAST );
		vStruct.bTemp=true; m_sqltype=sst_CreateTempView;
	}
	else if ((LA(1) == SQL2RW_view)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp43_AST = nullAST;
	tmp43_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp43_AST);
	match(SQL2RW_view);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING) && (LA(2) == PERIOD)) {
		database_name();
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp44_AST = nullAST;
		tmp44_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp44_AST);
		match(PERIOD);
	}
	else if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING) && (LA(2) == SQL2RW_as)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	id();
	vName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
		    vStruct.szViewName=vName_AST->getText(); 
		    TrimId(vStruct.szViewName);
		
	RefAST tmp45_AST = nullAST;
	tmp45_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp45_AST);
	match(SQL2RW_as);
	b = LT(1);
	b_AST = astFactory->create(b);
	astFactory->addASTChild(currentAST, b_AST);
	match(SQL2RW_select);
	non_create();
	astFactory->addASTChild( currentAST, returnAST );
	e = LT(1);
	e_AST = astFactory->create(e);
	astFactory->addASTChild(currentAST, e_AST);
	match(Token::EOF_TYPE);
	
					RefTokenWithIndex t1(b), t2(e);
			
					//engine.replace(t1, t2, "");
					ostringstream os;
					//engine.toStream(os, t1->getIndex(), t2->getIndex());
					engine.originalToStream(os, t1->getIndex(), t2->getIndex());
			        //engine.toDebugStream(os);		
					vStruct.szSelectSql=trim_left_copy(os.str());
		
	create_view_stmt_AST = currentAST.root;
	returnAST = create_view_stmt_AST;
	return vStruct;
}

CreateTriggerStruct  SqliteParser::create_trigger_stmt() {
	CreateTriggerStruct tStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_trigger_stmt_AST = nullAST;
	RefAST tName_AST = nullAST;
	RefToken  bw = nullToken;
	RefAST bw_AST = nullAST;
	RefToken  ew = nullToken;
	RefAST ew_AST = nullAST;
	RefToken  b = nullToken;
	RefAST b_AST = nullAST;
	RefToken  e = nullToken;
	RefAST e_AST = nullAST;
	
	tStruct.bTemp=false;
	tStruct.teEvent=teNone;
	tStruct.dbEvent=deDelete;
	tStruct.ftStatement=ftNone;
	m_sqltype=sst_CreateTrigger;
	string szTemp;
	string szWhen="";
	
	
	RefAST tmp46_AST = nullAST;
	tmp46_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp46_AST);
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp_flag();
		astFactory->addASTChild( currentAST, returnAST );
		
			   tStruct.bTemp=true;
			   m_sqltype=sst_CreateTempTrigger;
			
	}
	else if ((LA(1) == SQL2RW_trigger)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp47_AST = nullAST;
	tmp47_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp47_AST);
	match(SQL2RW_trigger);
	id();
	tName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	{
	if ((LA(1) == SQL2RW_after || LA(1) == SQL2RW_before || LA(1) == SQL2RW_instead)) {
		trigger_event(tStruct);
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_update)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	database_event(tStruct);
	astFactory->addASTChild( currentAST, returnAST );
	RefAST tmp48_AST = nullAST;
	tmp48_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp48_AST);
	match(SQL2RW_on);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING) && (LA(2) == PERIOD)) {
		database_name();
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp49_AST = nullAST;
		tmp49_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp49_AST);
		match(PERIOD);
	}
	else if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING) && (LA(2) == SQL2RW_begin || LA(2) == SQL2RW_for || LA(2) == SQL2RW_when)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	szTemp=db_name();
	astFactory->addASTChild( currentAST, returnAST );
	tStruct.szTarget=szTemp;
	{
	if ((LA(1) == SQL2RW_for)) {
		for_stmt(tStruct);
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == SQL2RW_begin || LA(1) == SQL2RW_when)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_when)) {
		bw = LT(1);
		bw_AST = astFactory->create(bw);
		astFactory->addASTChild(currentAST, bw_AST);
		match(SQL2RW_when);
		{ // ( ... )*
		for (;;) {
			if ((_tokenSet_2.member(LA(1))) && (_tokenSet_2.member(LA(2)))) {
				RefAST tmp50_AST = nullAST;
				tmp50_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp50_AST);
				matchNot(SQL2RW_begin);
			}
			else {
				goto _loop185;
			}
			
		}
		_loop185:;
		} // ( ... )*
		ew = LT(1);
		ew_AST = astFactory->create(ew);
		astFactory->addASTChild(currentAST, ew_AST);
		matchNot(SQL2RW_begin);
		
				RefTokenWithIndex w1(bw), w2(ew);
		
				ostringstream osw;
				engine.originalToStream(osw, w1->getIndex(), w2->getIndex()+1);
				szWhen=trim_left_copy(osw.str())+"\r\n";	   
			
	}
	else if ((LA(1) == SQL2RW_begin)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	b = LT(1);
	b_AST = astFactory->create(b);
	astFactory->addASTChild(currentAST, b_AST);
	match(SQL2RW_begin);
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_2.member(LA(1))) && (_tokenSet_2.member(LA(2)))) {
			RefAST tmp51_AST = nullAST;
			tmp51_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp51_AST);
			matchNot(SQL2RW_begin);
		}
		else {
			goto _loop187;
		}
		
	}
	_loop187:;
	} // ( ... )*
	RefAST tmp52_AST = nullAST;
	tmp52_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp52_AST);
	match(SQL2RW_end);
	e = LT(1);
	e_AST = astFactory->create(e);
	astFactory->addASTChild(currentAST, e_AST);
	match(Token::EOF_TYPE);
	
			RefTokenWithIndex t1(b), t2(e);
	
			ostringstream os;
			engine.originalToStream(os, t1->getIndex(), t2->getIndex());
			tStruct.szStatement=szWhen+trim_left_copy(os.str());
						  
		    tStruct.szTriggerName=tName_AST->getText();
		    TrimId(tStruct.szTriggerName);
		    return tStruct;
		
	create_trigger_stmt_AST = currentAST.root;
	returnAST = create_trigger_stmt_AST;
	return tStruct;
}

CreateIndexStruct  SqliteParser::create_index_stmt() {
	CreateIndexStruct iStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_index_stmt_AST = nullAST;
	RefAST indexName_AST = nullAST;
	RefAST tblName_AST = nullAST;
	
	m_sqltype=sst_CreateIndex;
	iStruct.IsUnique=false;
	ConflictAlgorithm caConflict=caNone;
	
	
	RefAST tmp53_AST = nullAST;
	tmp53_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp53_AST);
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_unique)) {
		RefAST tmp54_AST = nullAST;
		tmp54_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp54_AST);
		match(SQL2RW_unique);
		iStruct.IsUnique=true;
	}
	else if ((LA(1) == SQL2RW_index)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp55_AST = nullAST;
	tmp55_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp55_AST);
	match(SQL2RW_index);
	id();
	indexName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
		    iStruct.szIndexName=indexName_AST->getText();	  
		    TrimId(iStruct.szIndexName);
		
	RefAST tmp56_AST = nullAST;
	tmp56_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp56_AST);
	match(SQL2RW_on);
	id();
	tblName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
		    iStruct.szTableName=tblName_AST->getText();
		    TrimId(iStruct.szTableName);
		
	RefAST tmp57_AST = nullAST;
	tmp57_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp57_AST);
	match(LEFT_PAREN);
	column_name(iStruct);
	astFactory->addASTChild( currentAST, returnAST );
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp58_AST = nullAST;
			tmp58_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp58_AST);
			match(COMMA);
			column_name(iStruct);
			astFactory->addASTChild( currentAST, returnAST );
		}
		else {
			goto _loop200;
		}
		
	}
	_loop200:;
	} // ( ... )*
	RefAST tmp59_AST = nullAST;
	tmp59_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp59_AST);
	match(RIGHT_PAREN);
	{
	if ((LA(1) == SQL2RW_on)) {
		RefAST tmp60_AST = nullAST;
		tmp60_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp60_AST);
		match(SQL2RW_on);
		RefAST tmp61_AST = nullAST;
		tmp61_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp61_AST);
		match(SQL2RW_conflict);
		caConflict=conflict_algorithm();
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMICOLON)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	
		    iStruct.caConflict=caConflict;	  
		
	create_index_stmt_AST = currentAST.root;
	returnAST = create_index_stmt_AST;
	return iStruct;
}

void SqliteParser::temp_flag() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST temp_flag_AST = nullAST;
	
	if ((LA(1) == SQL2RW_temp)) {
		RefAST tmp62_AST = nullAST;
		tmp62_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp62_AST);
		match(SQL2RW_temp);
		temp_flag_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_temporary)) {
		RefAST tmp63_AST = nullAST;
		tmp63_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp63_AST);
		match(SQL2RW_temporary);
		temp_flag_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = temp_flag_AST;
}

void SqliteParser::id() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST id_AST = nullAST;
	
	switch ( LA(1)) {
	case REGULAR_ID:
	{
		RefAST tmp64_AST = nullAST;
		tmp64_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp64_AST);
		match(REGULAR_ID);
		id_AST = currentAST.root;
		break;
	}
	case DELIMITED_ID:
	{
		RefAST tmp65_AST = nullAST;
		tmp65_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp65_AST);
		match(DELIMITED_ID);
		id_AST = currentAST.root;
		break;
	}
	case CHAR_STRING:
	{
		RefAST tmp66_AST = nullAST;
		tmp66_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp66_AST);
		match(CHAR_STRING);
		id_AST = currentAST.root;
		break;
	}
	case BRACKET_STRING:
	{
		RefAST tmp67_AST = nullAST;
		tmp67_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp67_AST);
		match(BRACKET_STRING);
		id_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = id_AST;
}

void SqliteParser::table_column_stmt(
	CreateTableStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST table_column_stmt_AST = nullAST;
	
	RefAST tmp68_AST = nullAST;
	tmp68_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp68_AST);
	match(LEFT_PAREN);
	column_def(tStruct);
	astFactory->addASTChild( currentAST, returnAST );
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA) && (LA(2) == REGULAR_ID || LA(2) == CHAR_STRING || LA(2) == DELIMITED_ID || LA(2) == BRACKET_STRING)) {
			RefAST tmp69_AST = nullAST;
			tmp69_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp69_AST);
			match(COMMA);
			column_def(tStruct);
			astFactory->addASTChild( currentAST, returnAST );
		}
		else {
			goto _loop130;
		}
		
	}
	_loop130:;
	} // ( ... )*
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp70_AST = nullAST;
			tmp70_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp70_AST);
			match(COMMA);
			constraint(tStruct);
			astFactory->addASTChild( currentAST, returnAST );
		}
		else {
			goto _loop132;
		}
		
	}
	_loop132:;
	} // ( ... )*
	RefAST tmp71_AST = nullAST;
	tmp71_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp71_AST);
	match(RIGHT_PAREN);
	table_column_stmt_AST = currentAST.root;
	returnAST = table_column_stmt_AST;
}

void SqliteParser::table_select_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST table_select_stmt_AST = nullAST;
	
	RefAST tmp72_AST = nullAST;
	tmp72_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp72_AST);
	match(SQL2RW_as);
	table_select_stmt_AST = currentAST.root;
	returnAST = table_select_stmt_AST;
}

void SqliteParser::column_def(
	CreateTableStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_def_AST = nullAST;
	RefAST colName_AST = nullAST;
	
	ColumnDef col;
	col.nTypePrecision=-1;
	col.nTypeSize=-1;
	
	
	id();
	colName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	{
	if ((LA(1) == SQL2RW_null || LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING)) {
		column_type(col);
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((_tokenSet_3.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == SQL2RW_check || LA(1) == SQL2RW_collate || LA(1) == SQL2RW_constraint || LA(1) == SQL2RW_default || LA(1) == SQL2RW_not || LA(1) == SQL2RW_primary || LA(1) == SQL2RW_unique)) {
			column_constraint(col);
			astFactory->addASTChild( currentAST, returnAST );
		}
		else {
			goto _loop136;
		}
		
	}
	_loop136:;
	} // ( ... )*
	
	col.szName=colName_AST->getText();
	TrimId(col.szName);
	tStruct.vColumns.push_back(col);
	
	column_def_AST = currentAST.root;
	returnAST = column_def_AST;
}

void SqliteParser::constraint(
	CreateTableStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST constraint_AST = nullAST;
	RefToken  l = nullToken;
	RefAST l_AST = nullAST;
	RefToken  r = nullToken;
	RefAST r_AST = nullAST;
	
	ConflictAlgorithm ca=caNone;
	Constraint cs;
	
	
	if ((LA(1) == SQL2RW_primary)) {
		RefAST tmp73_AST = nullAST;
		tmp73_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp73_AST);
		match(SQL2RW_primary);
		RefAST tmp74_AST = nullAST;
		tmp74_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp74_AST);
		match(SQL2RW_key);
		RefAST tmp75_AST = nullAST;
		tmp75_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp75_AST);
		match(LEFT_PAREN);
		column_list2(cs.ColumnList);
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp76_AST = nullAST;
		tmp76_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp76_AST);
		match(RIGHT_PAREN);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
		}
		else if ((LA(1) == RIGHT_PAREN || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		
		cs.ctType=ctPrimaryKey;
		cs.caConflict=ca;
		tStruct.vConstraints.push_back(cs);          
		
		constraint_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_unique)) {
		RefAST tmp77_AST = nullAST;
		tmp77_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp77_AST);
		match(SQL2RW_unique);
		RefAST tmp78_AST = nullAST;
		tmp78_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp78_AST);
		match(LEFT_PAREN);
		column_list2(cs.ColumnList);
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp79_AST = nullAST;
		tmp79_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp79_AST);
		match(RIGHT_PAREN);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
		}
		else if ((LA(1) == RIGHT_PAREN || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		
		cs.ctType=ctUnique;
		cs.caConflict=ca;    
		tStruct.vConstraints.push_back(cs);                    
		
		constraint_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_check)) {
		RefAST tmp80_AST = nullAST;
		tmp80_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp80_AST);
		match(SQL2RW_check);
		l = LT(1);
		l_AST = astFactory->create(l);
		astFactory->addASTChild(currentAST, l_AST);
		match(LEFT_PAREN);
		expr();
		astFactory->addASTChild( currentAST, returnAST );
		r = LT(1);
		r_AST = astFactory->create(r);
		astFactory->addASTChild(currentAST, r_AST);
		match(RIGHT_PAREN);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
		}
		else if ((LA(1) == RIGHT_PAREN || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		
		cs.ctType=ctCheck;
		cs.caConflict=ca;    
				  RefTokenWithIndex t1(l), t2(r);
					
				  ostringstream os;
				  engine.originalToStream(os, t1->getIndex()+1, t2->getIndex());
				  cs.szExpr=trim_left_copy(os.str());          
		tStruct.vConstraints.push_back(cs);   
		
		constraint_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = constraint_AST;
}

void SqliteParser::column_type(
	ColumnDef& col
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_type_AST = nullAST;
	RefAST typName_AST = nullAST;
	RefToken  nSize = nullToken;
	RefAST nSize_AST = nullAST;
	RefToken  nPrecision = nullToken;
	RefAST nPrecision_AST = nullAST;
	
	{
	if ((LA(1) == SQL2RW_null)) {
		RefAST tmp81_AST = nullAST;
		tmp81_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp81_AST);
		match(SQL2RW_null);
		col.szType="NULL";
	}
	else if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING)) {
		id();
		typName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		col.szType=typName_AST->getText();
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == LEFT_PAREN)) {
		RefAST tmp82_AST = nullAST;
		tmp82_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp82_AST);
		match(LEFT_PAREN);
		nSize = LT(1);
		nSize_AST = astFactory->create(nSize);
		astFactory->addASTChild(currentAST, nSize_AST);
		match(UNSIGNED_INTEGER);
		col.nTypeSize=atoi(nSize_AST->getText().c_str());
		{
		if ((LA(1) == COMMA)) {
			RefAST tmp83_AST = nullAST;
			tmp83_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp83_AST);
			match(COMMA);
			nPrecision = LT(1);
			nPrecision_AST = astFactory->create(nPrecision);
			astFactory->addASTChild(currentAST, nPrecision_AST);
			match(UNSIGNED_INTEGER);
			col.nTypePrecision=atoi(nPrecision_AST->getText().c_str());
		}
		else if ((LA(1) == RIGHT_PAREN)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp84_AST = nullAST;
		tmp84_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp84_AST);
		match(RIGHT_PAREN);
	}
	else if ((_tokenSet_3.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	
	TrimId(col.szType);
	
	column_type_AST = currentAST.root;
	returnAST = column_type_AST;
}

void SqliteParser::column_constraint(
	ColumnDef& def
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_constraint_AST = nullAST;
	RefAST ccName_AST = nullAST;
	RefToken  l = nullToken;
	RefAST l_AST = nullAST;
	RefToken  r = nullToken;
	RefAST r_AST = nullAST;
	RefAST val_AST = nullAST;
	RefAST collate_AST = nullAST;
	
	ColumnConstraint cc;
	ConflictAlgorithm ca=caNone;
	cc.bAutoIncre=false;
	cc.order=otNone;
	cc.caConflict=ca;
	OrderType order=otNone;
	
	
	{
	if ((LA(1) == SQL2RW_constraint)) {
		RefAST tmp85_AST = nullAST;
		tmp85_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp85_AST);
		match(SQL2RW_constraint);
		id();
		ccName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		cc.szName=ccName_AST->getText();
	}
	else if ((LA(1) == SQL2RW_check || LA(1) == SQL2RW_collate || LA(1) == SQL2RW_default || LA(1) == SQL2RW_not || LA(1) == SQL2RW_primary || LA(1) == SQL2RW_unique)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	switch ( LA(1)) {
	case SQL2RW_not:
	{
		RefAST tmp86_AST = nullAST;
		tmp86_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp86_AST);
		match(SQL2RW_not);
		RefAST tmp87_AST = nullAST;
		tmp87_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp87_AST);
		match(SQL2RW_null);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
			cc.caConflict=ca;
		}
		else if ((_tokenSet_3.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		cc.ctType=ctNotNull;
		break;
	}
	case SQL2RW_primary:
	{
		RefAST tmp88_AST = nullAST;
		tmp88_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp88_AST);
		match(SQL2RW_primary);
		RefAST tmp89_AST = nullAST;
		tmp89_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp89_AST);
		match(SQL2RW_key);
		{
		if ((LA(1) == SQL2RW_asc || LA(1) == SQL2RW_desc)) {
			order=sort_order();
			astFactory->addASTChild( currentAST, returnAST );
			cc.order=order;
		}
		else if ((_tokenSet_4.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
			cc.caConflict=ca;
		}
		else if ((_tokenSet_5.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_autoincrement)) {
			RefAST tmp90_AST = nullAST;
			tmp90_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp90_AST);
			match(SQL2RW_autoincrement);
			cc.bAutoIncre=true;
		}
		else if ((_tokenSet_3.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		cc.ctType=ctPrimaryKey;
		break;
	}
	case SQL2RW_unique:
	{
		RefAST tmp91_AST = nullAST;
		tmp91_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp91_AST);
		match(SQL2RW_unique);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
			cc.caConflict=ca;
		}
		else if ((_tokenSet_3.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		cc.ctType=ctUnique;
		break;
	}
	case SQL2RW_check:
	{
		RefAST tmp92_AST = nullAST;
		tmp92_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp92_AST);
		match(SQL2RW_check);
		l = LT(1);
		l_AST = astFactory->create(l);
		astFactory->addASTChild(currentAST, l_AST);
		match(LEFT_PAREN);
		expr();
		astFactory->addASTChild( currentAST, returnAST );
		r = LT(1);
		r_AST = astFactory->create(r);
		astFactory->addASTChild(currentAST, r_AST);
		match(RIGHT_PAREN);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			astFactory->addASTChild( currentAST, returnAST );
			cc.caConflict=ca;
		}
		else if ((_tokenSet_3.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		
		cc.ctType=ctCheck;
		RefTokenWithIndex t1(l), t2(r);
				
			 ostringstream os;
			 engine.originalToStream(os, t1->getIndex()+1, t2->getIndex());
			 cc.szExpr=trim_left_copy(os.str());
		
		break;
	}
	case SQL2RW_default:
	{
		RefAST tmp93_AST = nullAST;
		tmp93_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp93_AST);
		match(SQL2RW_default);
		default_value();
		val_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		cc.ctType=ctDefault;cc.szValue=val_AST->getText();
		break;
	}
	case SQL2RW_collate:
	{
		RefAST tmp94_AST = nullAST;
		tmp94_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp94_AST);
		match(SQL2RW_collate);
		id();
		collate_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		cc.ctType=ctCollate;cc.szCollateName=collate_AST->getText();
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	}
	def.vConstraints.push_back(cc);
	column_constraint_AST = currentAST.root;
	returnAST = column_constraint_AST;
}

ConflictAlgorithm  SqliteParser::conflict_clause() {
	ConflictAlgorithm caConflict;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST conflict_clause_AST = nullAST;
	
	RefAST tmp95_AST = nullAST;
	tmp95_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp95_AST);
	match(SQL2RW_on);
	RefAST tmp96_AST = nullAST;
	tmp96_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp96_AST);
	match(SQL2RW_conflict);
	caConflict=conflict_algorithm();
	astFactory->addASTChild( currentAST, returnAST );
	conflict_clause_AST = currentAST.root;
	returnAST = conflict_clause_AST;
	return caConflict;
}

OrderType  SqliteParser::sort_order() {
	OrderType order;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sort_order_AST = nullAST;
	
	if ((LA(1) == SQL2RW_asc)) {
		RefAST tmp97_AST = nullAST;
		tmp97_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp97_AST);
		match(SQL2RW_asc);
		return otAsc;
		sort_order_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_desc)) {
		RefAST tmp98_AST = nullAST;
		tmp98_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp98_AST);
		match(SQL2RW_desc);
		return otDesc;
		sort_order_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sort_order_AST;
	return order;
}

void SqliteParser::expr() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST expr_AST = nullAST;
	
	atom_expr();
	astFactory->addASTChild( currentAST, returnAST );
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_6.member(LA(1)))) {
			atom_expr();
			astFactory->addASTChild( currentAST, returnAST );
		}
		else {
			goto _loop164;
		}
		
	}
	_loop164:;
	} // ( ... )*
	expr_AST = currentAST.root;
	returnAST = expr_AST;
}

void SqliteParser::default_value() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST default_value_AST = nullAST;
	
	switch ( LA(1)) {
	case UNSIGNED_INTEGER:
	case APPROXIMATE_NUM_LIT:
	case MINUS_SIGN:
	case NATIONAL_CHAR_STRING_LIT:
	case BIT_STRING_LIT:
	case HEX_STRING_LIT:
	case EXACT_NUM_LIT:
	case CHAR_STRING:
	case PLUS_SIGN:
	case BRACKET_STRING:
	{
		lit();
		astFactory->addASTChild( currentAST, returnAST );
		default_value_AST = currentAST.root;
		break;
	}
	case REGULAR_ID:
	{
		RefAST tmp99_AST = nullAST;
		tmp99_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp99_AST);
		match(REGULAR_ID);
		default_value_AST = currentAST.root;
		break;
	}
	case DELIMITED_ID:
	{
		RefAST tmp100_AST = nullAST;
		tmp100_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp100_AST);
		match(DELIMITED_ID);
		default_value_AST = currentAST.root;
		break;
	}
	case SQL2RW_current_date:
	{
		RefAST tmp101_AST = nullAST;
		tmp101_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp101_AST);
		match(SQL2RW_current_date);
		default_value_AST = currentAST.root;
		break;
	}
	case SQL2RW_current_time:
	{
		RefAST tmp102_AST = nullAST;
		tmp102_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp102_AST);
		match(SQL2RW_current_time);
		default_value_AST = currentAST.root;
		break;
	}
	case SQL2RW_current_timestamp:
	{
		RefAST tmp103_AST = nullAST;
		tmp103_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp103_AST);
		match(SQL2RW_current_timestamp);
		default_value_AST = currentAST.root;
		break;
	}
	case SQL2RW_null:
	{
		RefAST tmp104_AST = nullAST;
		tmp104_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp104_AST);
		match(SQL2RW_null);
		default_value_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = default_value_AST;
}

void SqliteParser::lit() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST lit_AST = nullAST;
	
	if ((LA(1) == UNSIGNED_INTEGER || LA(1) == APPROXIMATE_NUM_LIT || LA(1) == MINUS_SIGN || LA(1) == EXACT_NUM_LIT || LA(1) == PLUS_SIGN)) {
		signed_num_lit();
		astFactory->addASTChild( currentAST, returnAST );
		lit_AST = currentAST.root;
	}
	else if ((LA(1) == NATIONAL_CHAR_STRING_LIT || LA(1) == BIT_STRING_LIT || LA(1) == HEX_STRING_LIT || LA(1) == CHAR_STRING || LA(1) == BRACKET_STRING)) {
		general_lit();
		astFactory->addASTChild( currentAST, returnAST );
		lit_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = lit_AST;
}

void SqliteParser::signed_num_lit() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST signed_num_lit_AST = nullAST;
	
	{
	if ((LA(1) == MINUS_SIGN || LA(1) == PLUS_SIGN)) {
		sign();
		astFactory->addASTChild( currentAST, returnAST );
	}
	else if ((LA(1) == UNSIGNED_INTEGER || LA(1) == APPROXIMATE_NUM_LIT || LA(1) == EXACT_NUM_LIT)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	unsigned_num_lit();
	astFactory->addASTChild( currentAST, returnAST );
	signed_num_lit_AST = currentAST.root;
	returnAST = signed_num_lit_AST;
}

void SqliteParser::general_lit() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST general_lit_AST = nullAST;
	
	switch ( LA(1)) {
	case CHAR_STRING:
	{
		RefAST tmp105_AST = nullAST;
		tmp105_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp105_AST);
		match(CHAR_STRING);
		general_lit_AST = currentAST.root;
		break;
	}
	case BRACKET_STRING:
	{
		RefAST tmp106_AST = nullAST;
		tmp106_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp106_AST);
		match(BRACKET_STRING);
		general_lit_AST = currentAST.root;
		break;
	}
	case NATIONAL_CHAR_STRING_LIT:
	{
		RefAST tmp107_AST = nullAST;
		tmp107_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp107_AST);
		match(NATIONAL_CHAR_STRING_LIT);
		general_lit_AST = currentAST.root;
		break;
	}
	case BIT_STRING_LIT:
	{
		RefAST tmp108_AST = nullAST;
		tmp108_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp108_AST);
		match(BIT_STRING_LIT);
		general_lit_AST = currentAST.root;
		break;
	}
	case HEX_STRING_LIT:
	{
		RefAST tmp109_AST = nullAST;
		tmp109_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp109_AST);
		match(HEX_STRING_LIT);
		general_lit_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = general_lit_AST;
}

void SqliteParser::sign() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sign_AST = nullAST;
	
	if ((LA(1) == PLUS_SIGN)) {
		RefAST tmp110_AST = nullAST;
		tmp110_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp110_AST);
		match(PLUS_SIGN);
		sign_AST = currentAST.root;
	}
	else if ((LA(1) == MINUS_SIGN)) {
		RefAST tmp111_AST = nullAST;
		tmp111_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp111_AST);
		match(MINUS_SIGN);
		sign_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sign_AST;
}

void SqliteParser::unsigned_num_lit() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST unsigned_num_lit_AST = nullAST;
	
	if ((LA(1) == UNSIGNED_INTEGER)) {
		RefAST tmp112_AST = nullAST;
		tmp112_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp112_AST);
		match(UNSIGNED_INTEGER);
		unsigned_num_lit_AST = currentAST.root;
	}
	else if ((LA(1) == EXACT_NUM_LIT)) {
		RefAST tmp113_AST = nullAST;
		tmp113_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp113_AST);
		match(EXACT_NUM_LIT);
		unsigned_num_lit_AST = currentAST.root;
	}
	else if ((LA(1) == APPROXIMATE_NUM_LIT)) {
		RefAST tmp114_AST = nullAST;
		tmp114_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp114_AST);
		match(APPROXIMATE_NUM_LIT);
		unsigned_num_lit_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = unsigned_num_lit_AST;
}

void SqliteParser::column_list2(
	vector<string>& vColumns
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_list2_AST = nullAST;
	RefAST col1_AST = nullAST;
	RefAST col2_AST = nullAST;
	
	string szCol;
	
	
	id();
	col1_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
	szCol=col1_AST->getText();
	TrimId(szCol);
	vColumns.push_back(szCol);
	
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp115_AST = nullAST;
			tmp115_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp115_AST);
			match(COMMA);
			id();
			col2_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
			
			szCol=col2_AST->getText();
			TrimId(szCol);
			vColumns.push_back(szCol);
			
		}
		else {
			goto _loop170;
		}
		
	}
	_loop170:;
	} // ( ... )*
	column_list2_AST = currentAST.root;
	returnAST = column_list2_AST;
}

void SqliteParser::atom_expr() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST atom_expr_AST = nullAST;
	
	if ((_tokenSet_7.member(LA(1)))) {
		{
		RefAST tmp116_AST = nullAST;
		tmp116_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp116_AST);
		match(_tokenSet_7);
		}
		atom_expr_AST = currentAST.root;
	}
	else if ((LA(1) == LEFT_PAREN)) {
		RefAST tmp117_AST = nullAST;
		tmp117_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp117_AST);
		match(LEFT_PAREN);
		expr();
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp118_AST = nullAST;
		tmp118_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp118_AST);
		match(RIGHT_PAREN);
		atom_expr_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = atom_expr_AST;
}

ConflictAlgorithm  SqliteParser::conflict_algorithm() {
	ConflictAlgorithm caConflict;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST conflict_algorithm_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_rollback:
	{
		RefAST tmp119_AST = nullAST;
		tmp119_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp119_AST);
		match(SQL2RW_rollback);
		return caRollback;
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_abort:
	{
		RefAST tmp120_AST = nullAST;
		tmp120_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp120_AST);
		match(SQL2RW_abort);
		return caAbort;
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_fail:
	{
		RefAST tmp121_AST = nullAST;
		tmp121_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp121_AST);
		match(SQL2RW_fail);
		return caFail;
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_ignore:
	{
		RefAST tmp122_AST = nullAST;
		tmp122_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp122_AST);
		match(SQL2RW_ignore);
		return caIgnore;
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_replace:
	{
		RefAST tmp123_AST = nullAST;
		tmp123_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp123_AST);
		match(SQL2RW_replace);
		return caReplace;
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = conflict_algorithm_AST;
	return caConflict;
}

void SqliteParser::database_name() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST database_name_AST = nullAST;
	
	if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING)) {
		id();
		astFactory->addASTChild( currentAST, returnAST );
		database_name_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_temp)) {
		RefAST tmp124_AST = nullAST;
		tmp124_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp124_AST);
		match(SQL2RW_temp);
		database_name_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = database_name_AST;
}

void SqliteParser::non_create() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST non_create_AST = nullAST;
	
	{ // ( ... )*
	for (;;) {
		if (((LA(1) >= SQL2RW_encoding && LA(1) <= ML_COMMENT))) {
			RefAST tmp125_AST = nullAST;
			tmp125_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp125_AST);
			matchNot(CREATE);
		}
		else {
			goto _loop177;
		}
		
	}
	_loop177:;
	} // ( ... )*
	non_create_AST = currentAST.root;
	returnAST = non_create_AST;
}

void SqliteParser::trigger_event(
	CreateTriggerStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trigger_event_AST = nullAST;
	
	if ((LA(1) == SQL2RW_before)) {
		RefAST tmp126_AST = nullAST;
		tmp126_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp126_AST);
		match(SQL2RW_before);
		tStruct.teEvent=teBefore;
		trigger_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_after)) {
		RefAST tmp127_AST = nullAST;
		tmp127_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp127_AST);
		match(SQL2RW_after);
		tStruct.teEvent=teAfter;
		trigger_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_instead)) {
		RefAST tmp128_AST = nullAST;
		tmp128_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp128_AST);
		match(SQL2RW_instead);
		RefAST tmp129_AST = nullAST;
		tmp129_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp129_AST);
		match(SQL2RW_of);
		tStruct.teEvent=teInstead;
		trigger_event_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = trigger_event_AST;
}

void SqliteParser::database_event(
	CreateTriggerStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST database_event_AST = nullAST;
	
	if ((LA(1) == SQL2RW_delete)) {
		RefAST tmp130_AST = nullAST;
		tmp130_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp130_AST);
		match(SQL2RW_delete);
		tStruct.dbEvent=deDelete;
		database_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_insert)) {
		RefAST tmp131_AST = nullAST;
		tmp131_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp131_AST);
		match(SQL2RW_insert);
		tStruct.dbEvent=deInsert;
		database_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_update) && (LA(2) == SQL2RW_on)) {
		RefAST tmp132_AST = nullAST;
		tmp132_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp132_AST);
		match(SQL2RW_update);
		tStruct.dbEvent=deUpdate;
		database_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_update) && (LA(2) == SQL2RW_of)) {
		RefAST tmp133_AST = nullAST;
		tmp133_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp133_AST);
		match(SQL2RW_update);
		RefAST tmp134_AST = nullAST;
		tmp134_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp134_AST);
		match(SQL2RW_of);
		column_list(tStruct);
		astFactory->addASTChild( currentAST, returnAST );
		tStruct.dbEvent=deUpdateOf;
		database_event_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = database_event_AST;
}

string  SqliteParser::db_name() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST db_name_AST = nullAST;
	RefAST dbName_AST = nullAST;
	
	id();
	dbName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
	szName=dbName_AST->getText();
	TrimId(szName);
	
	db_name_AST = currentAST.root;
	returnAST = db_name_AST;
	return szName;
}

void SqliteParser::for_stmt(
	CreateTriggerStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST for_stmt_AST = nullAST;
	
	RefAST tmp135_AST = nullAST;
	tmp135_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp135_AST);
	match(SQL2RW_for);
	RefAST tmp136_AST = nullAST;
	tmp136_AST = astFactory->create(LT(1));
	astFactory->addASTChild(currentAST, tmp136_AST);
	match(SQL2RW_each);
	{
	if ((LA(1) == SQL2RW_row)) {
		RefAST tmp137_AST = nullAST;
		tmp137_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp137_AST);
		match(SQL2RW_row);
		tStruct.ftStatement=ftRow;
	}
	else if ((LA(1) == SQL2RW_statement)) {
		RefAST tmp138_AST = nullAST;
		tmp138_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp138_AST);
		match(SQL2RW_statement);
		tStruct.ftStatement=ftStatement;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	for_stmt_AST = currentAST.root;
	returnAST = for_stmt_AST;
}

void SqliteParser::column_list(
	CreateTriggerStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_list_AST = nullAST;
	RefAST col1_AST = nullAST;
	RefAST col2_AST = nullAST;
	
	string szCol;
	
	
	id();
	col1_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	
	szCol=col1_AST->getText();
	TrimId(szCol);
	tStruct.vColumns.push_back(szCol);
	
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp139_AST = nullAST;
			tmp139_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp139_AST);
			match(COMMA);
			id();
			col2_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
			
			szCol=col2_AST->getText();
			TrimId(szCol);
			tStruct.vColumns.push_back(szCol);
			
		}
		else {
			goto _loop194;
		}
		
	}
	_loop194:;
	} // ( ... )*
	column_list_AST = currentAST.root;
	returnAST = column_list_AST;
}

void SqliteParser::column_name(
	CreateIndexStruct& iStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_name_AST = nullAST;
	RefAST colName_AST = nullAST;
	RefAST collate_AST = nullAST;
	
	string szCollate="";
	OrderType otOrder=otNone;
	
	
	id();
	colName_AST = returnAST;
	astFactory->addASTChild( currentAST, returnAST );
	{
	if ((LA(1) == SQL2RW_collate)) {
		RefAST tmp140_AST = nullAST;
		tmp140_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp140_AST);
		match(SQL2RW_collate);
		collation_name();
		collate_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
		szCollate=collate_AST->getText();
	}
	else if ((LA(1) == SQL2RW_asc || LA(1) == SQL2RW_desc || LA(1) == RIGHT_PAREN || LA(1) == COMMA)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_asc)) {
		RefAST tmp141_AST = nullAST;
		tmp141_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp141_AST);
		match(SQL2RW_asc);
		otOrder=otAsc;
	}
	else if ((LA(1) == SQL2RW_desc)) {
		RefAST tmp142_AST = nullAST;
		tmp142_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp142_AST);
		match(SQL2RW_desc);
		otOrder=otDesc;
	}
	else if ((LA(1) == RIGHT_PAREN || LA(1) == COMMA)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	
	ColumnNameStruct colStruct;
	colStruct.szColumn=colName_AST->getText();
	TrimId(colStruct.szColumn);
	colStruct.szCollate=szCollate;
	colStruct.otOrder=otOrder;
	iStruct.vColumns.push_back(colStruct);
	
	column_name_AST = currentAST.root;
	returnAST = column_name_AST;
}

void SqliteParser::collation_name() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST collation_name_AST = nullAST;
	
	id();
	astFactory->addASTChild( currentAST, returnAST );
	collation_name_AST = currentAST.root;
	returnAST = collation_name_AST;
}

void SqliteParser::pragma_setting() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST pragma_setting_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_autovacuum:
	{
		RefAST tmp143_AST = nullAST;
		tmp143_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp143_AST);
		match(SQL2RW_autovacuum);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_cache_size:
	{
		RefAST tmp144_AST = nullAST;
		tmp144_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp144_AST);
		match(SQL2RW_cache_size);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_case_sensitive_like:
	{
		RefAST tmp145_AST = nullAST;
		tmp145_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp145_AST);
		match(SQL2RW_case_sensitive_like);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_count_changes:
	{
		RefAST tmp146_AST = nullAST;
		tmp146_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp146_AST);
		match(SQL2RW_count_changes);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_default_cache_size:
	{
		RefAST tmp147_AST = nullAST;
		tmp147_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp147_AST);
		match(SQL2RW_default_cache_size);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_empty_result_callbacks:
	{
		RefAST tmp148_AST = nullAST;
		tmp148_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp148_AST);
		match(SQL2RW_empty_result_callbacks);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_encoding:
	{
		RefAST tmp149_AST = nullAST;
		tmp149_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp149_AST);
		match(SQL2RW_encoding);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_full_column_names:
	{
		RefAST tmp150_AST = nullAST;
		tmp150_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp150_AST);
		match(SQL2RW_full_column_names);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_page_size:
	{
		RefAST tmp151_AST = nullAST;
		tmp151_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp151_AST);
		match(SQL2RW_page_size);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_short_column_names:
	{
		RefAST tmp152_AST = nullAST;
		tmp152_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp152_AST);
		match(SQL2RW_short_column_names);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_synchronous:
	{
		RefAST tmp153_AST = nullAST;
		tmp153_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp153_AST);
		match(SQL2RW_synchronous);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_temp_store:
	{
		RefAST tmp154_AST = nullAST;
		tmp154_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp154_AST);
		match(SQL2RW_temp_store);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_temp_store_directory:
	{
		RefAST tmp155_AST = nullAST;
		tmp155_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp155_AST);
		match(SQL2RW_temp_store_directory);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_vdbe_trace:
	{
		RefAST tmp156_AST = nullAST;
		tmp156_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp156_AST);
		match(SQL2RW_vdbe_trace);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_parser_trace:
	{
		RefAST tmp157_AST = nullAST;
		tmp157_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp157_AST);
		match(SQL2RW_parser_trace);
		pragma_setting_AST = currentAST.root;
		break;
	}
	case SQL2RW_vdbe_listing:
	{
		RefAST tmp158_AST = nullAST;
		tmp158_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp158_AST);
		match(SQL2RW_vdbe_listing);
		pragma_setting_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = pragma_setting_AST;
}

void SqliteParser::pragma_version() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST pragma_version_AST = nullAST;
	
	{
	if ((LA(1) == REGULAR_ID || LA(1) == CHAR_STRING || LA(1) == DELIMITED_ID || LA(1) == BRACKET_STRING)) {
		database();
		astFactory->addASTChild( currentAST, returnAST );
		RefAST tmp159_AST = nullAST;
		tmp159_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp159_AST);
		match(PERIOD);
	}
	else if ((LA(1) == SQL2RW_user_version || LA(1) == SQL2RW_schema_version)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_schema_version)) {
		RefAST tmp160_AST = nullAST;
		tmp160_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp160_AST);
		match(SQL2RW_schema_version);
	}
	else if ((LA(1) == SQL2RW_user_version)) {
		RefAST tmp161_AST = nullAST;
		tmp161_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp161_AST);
		match(SQL2RW_user_version);
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	pragma_version_AST = currentAST.root;
	returnAST = pragma_version_AST;
}

void SqliteParser::pragma_schema() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST pragma_schema_AST = nullAST;
	
	{
	switch ( LA(1)) {
	case SQL2RW_database_list:
	{
		RefAST tmp162_AST = nullAST;
		tmp162_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp162_AST);
		match(SQL2RW_database_list);
		break;
	}
	case SQL2RW_foreign_key_list:
	{
		RefAST tmp163_AST = nullAST;
		tmp163_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp163_AST);
		match(SQL2RW_foreign_key_list);
		break;
	}
	case SQL2RW_index_info:
	{
		RefAST tmp164_AST = nullAST;
		tmp164_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp164_AST);
		match(SQL2RW_index_info);
		break;
	}
	case SQL2RW_index_list:
	{
		RefAST tmp165_AST = nullAST;
		tmp165_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp165_AST);
		match(SQL2RW_index_list);
		break;
	}
	case SQL2RW_table_info:
	{
		RefAST tmp166_AST = nullAST;
		tmp166_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp166_AST);
		match(SQL2RW_table_info);
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == ANY_CHAR)) {
			RefAST tmp167_AST = nullAST;
			tmp167_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp167_AST);
			match(ANY_CHAR);
		}
		else {
			goto _loop221;
		}
		
	}
	_loop221:;
	} // ( ... )*
	pragma_schema_AST = currentAST.root;
	returnAST = pragma_schema_AST;
}

void SqliteParser::database() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST database_AST = nullAST;
	
	id();
	astFactory->addASTChild( currentAST, returnAST );
	database_AST = currentAST.root;
	returnAST = database_AST;
}

void SqliteParser::initializeASTFactory( ASTFactory& factory )
{
	factory.setMaxNodeType(329);
}
const char* SqliteParser::tokenNames[] = {
	"<0>",
	"EOF",
	"<2>",
	"NULL_TREE_LOOKAHEAD",
	"\"encoding\"",
	"\"ada\"",
	"\"user_version\"",
	"<7>",
	"<8>",
	"<9>",
	"<10>",
	"<11>",
	"<12>",
	"<13>",
	"<14>",
	"<15>",
	"<16>",
	"<17>",
	"<18>",
	"<19>",
	"<20>",
	"<21>",
	"<22>",
	"<23>",
	"<24>",
	"<25>",
	"<26>",
	"<27>",
	"<28>",
	"<29>",
	"\"count_changes\"",
	"<31>",
	"<32>",
	"<33>",
	"<34>",
	"<35>",
	"<36>",
	"<37>",
	"<38>",
	"<39>",
	"\"add\"",
	"\"after\"",
	"\"abort\"",
	"<43>",
	"<44>",
	"<45>",
	"<46>",
	"<47>",
	"<48>",
	"<49>",
	"<50>",
	"<51>",
	"<52>",
	"<53>",
	"<54>",
	"<55>",
	"<56>",
	"<57>",
	"\"all\"",
	"\"alter\"",
	"<60>",
	"\"and\"",
	"\"any\"",
	"<63>",
	"\"as\"",
	"\"asc\"",
	"\"begin\"",
	"\"at\"",
	"\"auto_vacuum\"",
	"\"avg\"",
	"\"before\"",
	"\"between\"",
	"\"bit\"",
	"\"bit_length\"",
	"\"both\"",
	"\"by\"",
	"\"cache_size\"",
	"\"autoincrement\"",
	"\"case\"",
	"\"cast\"",
	"\"case_sensitive_like\"",
	"<81>",
	"\"character\"",
	"\"char_length\"",
	"\"character_length\"",
	"\"check\"",
	"\"commit\"",
	"\"coalesce\"",
	"\"collate\"",
	"\"conflict\"",
	"\"constraint\"",
	"<91>",
	"<92>",
	"<93>",
	"<94>",
	"<95>",
	"<96>",
	"\"convert\"",
	"\"corresponding\"",
	"\"count\"",
	"\"create\"",
	"\"cross\"",
	"\"current\"",
	"\"current_date\"",
	"\"current_time\"",
	"\"current_timestamp\"",
	"\"current_user\"",
	"\"database_list\"",
	"<108>",
	"\"day\"",
	"<110>",
	"\"dec\"",
	"<112>",
	"<113>",
	"\"default\"",
	"\"default_cache_size\"",
	"<116>",
	"\"delete\"",
	"\"desc\"",
	"<119>",
	"<120>",
	"<121>",
	"<122>",
	"\"distinct\"",
	"\"each\"",
	"<125>",
	"\"drop\"",
	"\"else\"",
	"\"end\"",
	"\"empty_result_callbacks\"",
	"\"escape\"",
	"\"except\"",
	"<132>",
	"<133>",
	"<134>",
	"\"exists\"",
	"\"explain\"",
	"\"extract\"",
	"\"false\"",
	"\"foreign_key_list\"",
	"\"fail\"",
	"<141>",
	"\"for\"",
	"<143>",
	"<144>",
	"\"from\"",
	"\"full\"",
	"\"full_column_names\"",
	"\"global\"",
	"\"page_size\"",
	"<150>",
	"\"index_list\"",
	"\"group\"",
	"\"having\"",
	"\"hour\"",
	"\"ignore\"",
	"\"index_info\"",
	"\"in\"",
	"\"indicator\"",
	"\"index\"",
	"\"inner\"",
	"<161>",
	"\"instead\"",
	"\"insert\"",
	"\"int\"",
	"<165>",
	"\"intersect\"",
	"\"interval\"",
	"\"into\"",
	"\"is\"",
	"<170>",
	"\"join\"",
	"\"key\"",
	"<173>",
	"<174>",
	"\"leading\"",
	"\"left\"",
	"<177>",
	"\"like\"",
	"\"local\"",
	"\"lower\"",
	"\"match\"",
	"\"max\"",
	"\"min\"",
	"\"minute\"",
	"\"module\"",
	"\"month\"",
	"<187>",
	"\"national\"",
	"\"natural\"",
	"<190>",
	"<191>",
	"<192>",
	"\"not\"",
	"\"null\"",
	"\"nullif\"",
	"<196>",
	"\"octet_length\"",
	"\"of\"",
	"\"on\"",
	"\"only\"",
	"<201>",
	"<202>",
	"\"or\"",
	"\"order\"",
	"\"outer\"",
	"\"parser_trace\"",
	"\"overlaps\"",
	"\"pragma\"",
	"\"partial\"",
	"\"position\"",
	"\"precision\"",
	"\"primary\"",
	"<213>",
	"<214>",
	"<215>",
	"<216>",
	"<217>",
	"<218>",
	"\"read\"",
	"<220>",
	"\"rename\"",
	"\"replace\"",
	"\"rollback\"",
	"\"row\"",
	"\"right\"",
	"\"schema_version\"",
	"<227>",
	"<228>",
	"<229>",
	"\"second\"",
	"<231>",
	"\"select\"",
	"<233>",
	"\"session_user\"",
	"\"set\"",
	"\"short_column_names\"",
	"\"smallint\"",
	"\"some\"",
	"\"statement\"",
	"\"temp_store_directory\"",
	"\"temp\"",
	"\"table_info\"",
	"\"synchronous\"",
	"\"substring\"",
	"\"sum\"",
	"\"system_user\"",
	"\"table\"",
	"\"temp_store\"",
	"\"then\"",
	"\"time\"",
	"<251>",
	"\"timezone_hour\"",
	"\"timezone_minute\"",
	"\"to\"",
	"\"trailing\"",
	"\"temporary\"",
	"\"translate\"",
	"\"trigger\"",
	"\"trim\"",
	"\"true\"",
	"\"union\"",
	"\"unique\"",
	"\"unknown\"",
	"\"update\"",
	"\"upper\"",
	"<266>",
	"\"user\"",
	"\"using\"",
	"\"value\"",
	"\"values\"",
	"<271>",
	"\"varying\"",
	"\"vdbe_trace\"",
	"\"when\"",
	"\"vdbe_listing\"",
	"\"where\"",
	"\"with\"",
	"\"view\"",
	"<279>",
	"\"year\"",
	"\"zone\"",
	"an integer number",
	"a number",
	"\'",
	".",
	"-",
	"_",
	"..",
	"<>",
	"<=",
	">=",
	"||",
	"a national character string",
	"a bit string",
	"a hexadecimal string",
	"an embedded variable",
	"an identifier",
	"a number",
	"a character string",
	"a delimited identifier",
	"%",
	"&",
	"(",
	")",
	"*",
	"+",
	",",
	"/",
	":",
	";",
	"<",
	"=",
	">",
	"?",
	"|",
	"[",
	"]",
	"introducing _",
	"a letter",
	"a separator",
	"a comment",
	"the new line character",
	"the space character",
	"any character",
	"a delimited identifier2",
	"BRACKET_STRING",
	"SL_COMMENT",
	"ML_COMMENT",
	"CREATE",
	0
};

const unsigned long SqliteParser::_tokenSet_0_data_[] = { 0UL, 134217728UL, 4194308UL, 1075838992UL, 257UL, 8UL, 2147549184UL, 256UL, 256UL, 0UL, 32UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "alter" "begin" "commit" "create" "delete" "drop" "end" "explain" "insert" 
// "pragma" "rollback" "select" "update" DELIMITED_ID2 
const BitSet SqliteParser::_tokenSet_0(_tokenSet_0_data_,24);
const unsigned long SqliteParser::_tokenSet_1_data_[] = { 1073741840UL, 0UL, 69648UL, 524288UL, 2621442UL, 0UL, 16384UL, 17371136UL, 655360UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "encoding" "count_changes" "auto_vacuum" "cache_size" "case_sensitive_like" 
// "default_cache_size" "empty_result_callbacks" "full_column_names" "page_size" 
// "parser_trace" "short_column_names" "temp_store_directory" "synchronous" 
// "temp_store" "vdbe_trace" "vdbe_listing" 
const BitSet SqliteParser::_tokenSet_1(_tokenSet_1_data_,20);
const unsigned long SqliteParser::_tokenSet_2_data_[] = { 4294967280UL, 4294967295UL, 4294967291UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 1023UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "encoding" "ada" "user_version" null null null null null null null null 
// null null null null null null null null null null null null null null 
// null "count_changes" null null null null null null null null null "add" 
// "after" "abort" null null null null null null null null null null null 
// null null null null "all" "alter" null "and" "any" null "as" "asc" "at" 
// "auto_vacuum" "avg" "before" "between" "bit" "bit_length" "both" "by" 
// "cache_size" "autoincrement" "case" "cast" "case_sensitive_like" null 
// "character" "char_length" "character_length" "check" "commit" "coalesce" 
// "collate" "conflict" "constraint" null null null null null null "convert" 
// "corresponding" "count" "create" "cross" "current" "current_date" "current_time" 
// "current_timestamp" "current_user" "database_list" null "day" null "dec" 
// null null "default" "default_cache_size" null "delete" "desc" null null 
// null null "distinct" "each" null "drop" "else" "end" "empty_result_callbacks" 
// "escape" "except" null null null "exists" "explain" "extract" "false" 
// "foreign_key_list" "fail" null "for" null null "from" "full" "full_column_names" 
// "global" "page_size" null "index_list" "group" "having" "hour" "ignore" 
// "index_info" "in" "indicator" "index" "inner" null "instead" "insert" 
// "int" null "intersect" "interval" "into" "is" null "join" "key" null 
// null "leading" "left" null "like" "local" "lower" "match" "max" "min" 
// "minute" "module" "month" null "national" "natural" null null null "not" 
// "null" "nullif" null "octet_length" "of" "on" "only" null null "or" 
// "order" "outer" "parser_trace" "overlaps" "pragma" "partial" "position" 
// "precision" "primary" null null null null null null "read" null "rename" 
// "replace" "rollback" "row" "right" "schema_version" null null null "second" 
// null "select" null "session_user" "set" "short_column_names" "smallint" 
// "some" "statement" "temp_store_directory" "temp" "table_info" "synchronous" 
// "substring" "sum" "system_user" "table" "temp_store" "then" "time" null 
// "timezone_hour" "timezone_minute" "to" "trailing" "temporary" "translate" 
// "trigger" "trim" "true" "union" "unique" "unknown" "update" "upper" 
// null "user" "using" "value" "values" null "varying" "vdbe_trace" "when" 
// "vdbe_listing" "where" "with" "view" null "year" "zone" UNSIGNED_INTEGER 
// APPROXIMATE_NUM_LIT QUOTE PERIOD MINUS_SIGN UNDERSCORE DOUBLE_PERIOD 
// NOT_EQUALS_OP LESS_THAN_OR_EQUALS_OP GREATER_THAN_OR_EQUALS_OP CONCATENATION_OP 
// NATIONAL_CHAR_STRING_LIT BIT_STRING_LIT HEX_STRING_LIT EMBDD_VARIABLE_NAME 
// REGULAR_ID EXACT_NUM_LIT CHAR_STRING DELIMITED_ID PERCENT AMPERSAND 
// LEFT_PAREN RIGHT_PAREN ASTERISK PLUS_SIGN COMMA SOLIDUS COLON SEMICOLON 
// LESS_THAN_OP EQUALS_OP GREATER_THAN_OP QUESTION_MARK VERTICAL_BAR LEFT_BRACKET 
// RIGHT_BRACKET INTRODUCER SIMPLE_LETTER SEPARATOR COMMENT NEWLINE SPACE 
// ANY_CHAR DELIMITED_ID2 BRACKET_STRING SL_COMMENT ML_COMMENT CREATE 
const BitSet SqliteParser::_tokenSet_2(_tokenSet_2_data_,24);
const unsigned long SqliteParser::_tokenSet_3_data_[] = { 0UL, 0UL, 85983232UL, 262144UL, 0UL, 0UL, 1048578UL, 0UL, 64UL, 589824UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "check" "collate" "constraint" "default" "not" "primary" "unique" RIGHT_PAREN 
// COMMA 
const BitSet SqliteParser::_tokenSet_3(_tokenSet_3_data_,20);
const unsigned long SqliteParser::_tokenSet_4_data_[] = { 0UL, 0UL, 85991424UL, 262144UL, 0UL, 0UL, 1048706UL, 0UL, 64UL, 589824UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "autoincrement" "check" "collate" "constraint" "default" "not" "on" 
// "primary" "unique" RIGHT_PAREN COMMA 
const BitSet SqliteParser::_tokenSet_4(_tokenSet_4_data_,20);
const unsigned long SqliteParser::_tokenSet_5_data_[] = { 0UL, 0UL, 85991424UL, 262144UL, 0UL, 0UL, 1048578UL, 0UL, 64UL, 589824UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "autoincrement" "check" "collate" "constraint" "default" "not" "primary" 
// "unique" RIGHT_PAREN COMMA 
const BitSet SqliteParser::_tokenSet_5(_tokenSet_5_data_,20);
const unsigned long SqliteParser::_tokenSet_6_data_[] = { 4294967280UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294901759UL, 1023UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "encoding" "ada" "user_version" null null null null null null null null 
// null null null null null null null null null null null null null null 
// null "count_changes" null null null null null null null null null "add" 
// "after" "abort" null null null null null null null null null null null 
// null null null null "all" "alter" null "and" "any" null "as" "asc" "begin" 
// "at" "auto_vacuum" "avg" "before" "between" "bit" "bit_length" "both" 
// "by" "cache_size" "autoincrement" "case" "cast" "case_sensitive_like" 
// null "character" "char_length" "character_length" "check" "commit" "coalesce" 
// "collate" "conflict" "constraint" null null null null null null "convert" 
// "corresponding" "count" "create" "cross" "current" "current_date" "current_time" 
// "current_timestamp" "current_user" "database_list" null "day" null "dec" 
// null null "default" "default_cache_size" null "delete" "desc" null null 
// null null "distinct" "each" null "drop" "else" "end" "empty_result_callbacks" 
// "escape" "except" null null null "exists" "explain" "extract" "false" 
// "foreign_key_list" "fail" null "for" null null "from" "full" "full_column_names" 
// "global" "page_size" null "index_list" "group" "having" "hour" "ignore" 
// "index_info" "in" "indicator" "index" "inner" null "instead" "insert" 
// "int" null "intersect" "interval" "into" "is" null "join" "key" null 
// null "leading" "left" null "like" "local" "lower" "match" "max" "min" 
// "minute" "module" "month" null "national" "natural" null null null "not" 
// "null" "nullif" null "octet_length" "of" "on" "only" null null "or" 
// "order" "outer" "parser_trace" "overlaps" "pragma" "partial" "position" 
// "precision" "primary" null null null null null null "read" null "rename" 
// "replace" "rollback" "row" "right" "schema_version" null null null "second" 
// null "select" null "session_user" "set" "short_column_names" "smallint" 
// "some" "statement" "temp_store_directory" "temp" "table_info" "synchronous" 
// "substring" "sum" "system_user" "table" "temp_store" "then" "time" null 
// "timezone_hour" "timezone_minute" "to" "trailing" "temporary" "translate" 
// "trigger" "trim" "true" "union" "unique" "unknown" "update" "upper" 
// null "user" "using" "value" "values" null "varying" "vdbe_trace" "when" 
// "vdbe_listing" "where" "with" "view" null "year" "zone" UNSIGNED_INTEGER 
// APPROXIMATE_NUM_LIT QUOTE PERIOD MINUS_SIGN UNDERSCORE DOUBLE_PERIOD 
// NOT_EQUALS_OP LESS_THAN_OR_EQUALS_OP GREATER_THAN_OR_EQUALS_OP CONCATENATION_OP 
// NATIONAL_CHAR_STRING_LIT BIT_STRING_LIT HEX_STRING_LIT EMBDD_VARIABLE_NAME 
// REGULAR_ID EXACT_NUM_LIT CHAR_STRING DELIMITED_ID PERCENT AMPERSAND 
// LEFT_PAREN ASTERISK PLUS_SIGN COMMA SOLIDUS COLON SEMICOLON LESS_THAN_OP 
// EQUALS_OP GREATER_THAN_OP QUESTION_MARK VERTICAL_BAR LEFT_BRACKET RIGHT_BRACKET 
// INTRODUCER SIMPLE_LETTER SEPARATOR COMMENT NEWLINE SPACE ANY_CHAR DELIMITED_ID2 
// BRACKET_STRING SL_COMMENT ML_COMMENT CREATE 
const BitSet SqliteParser::_tokenSet_6(_tokenSet_6_data_,40);
const unsigned long SqliteParser::_tokenSet_7_data_[] = { 4294967280UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294868991UL, 1023UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "encoding" "ada" "user_version" null null null null null null null null 
// null null null null null null null null null null null null null null 
// null "count_changes" null null null null null null null null null "add" 
// "after" "abort" null null null null null null null null null null null 
// null null null null "all" "alter" null "and" "any" null "as" "asc" "begin" 
// "at" "auto_vacuum" "avg" "before" "between" "bit" "bit_length" "both" 
// "by" "cache_size" "autoincrement" "case" "cast" "case_sensitive_like" 
// null "character" "char_length" "character_length" "check" "commit" "coalesce" 
// "collate" "conflict" "constraint" null null null null null null "convert" 
// "corresponding" "count" "create" "cross" "current" "current_date" "current_time" 
// "current_timestamp" "current_user" "database_list" null "day" null "dec" 
// null null "default" "default_cache_size" null "delete" "desc" null null 
// null null "distinct" "each" null "drop" "else" "end" "empty_result_callbacks" 
// "escape" "except" null null null "exists" "explain" "extract" "false" 
// "foreign_key_list" "fail" null "for" null null "from" "full" "full_column_names" 
// "global" "page_size" null "index_list" "group" "having" "hour" "ignore" 
// "index_info" "in" "indicator" "index" "inner" null "instead" "insert" 
// "int" null "intersect" "interval" "into" "is" null "join" "key" null 
// null "leading" "left" null "like" "local" "lower" "match" "max" "min" 
// "minute" "module" "month" null "national" "natural" null null null "not" 
// "null" "nullif" null "octet_length" "of" "on" "only" null null "or" 
// "order" "outer" "parser_trace" "overlaps" "pragma" "partial" "position" 
// "precision" "primary" null null null null null null "read" null "rename" 
// "replace" "rollback" "row" "right" "schema_version" null null null "second" 
// null "select" null "session_user" "set" "short_column_names" "smallint" 
// "some" "statement" "temp_store_directory" "temp" "table_info" "synchronous" 
// "substring" "sum" "system_user" "table" "temp_store" "then" "time" null 
// "timezone_hour" "timezone_minute" "to" "trailing" "temporary" "translate" 
// "trigger" "trim" "true" "union" "unique" "unknown" "update" "upper" 
// null "user" "using" "value" "values" null "varying" "vdbe_trace" "when" 
// "vdbe_listing" "where" "with" "view" null "year" "zone" UNSIGNED_INTEGER 
// APPROXIMATE_NUM_LIT QUOTE PERIOD MINUS_SIGN UNDERSCORE DOUBLE_PERIOD 
// NOT_EQUALS_OP LESS_THAN_OR_EQUALS_OP GREATER_THAN_OR_EQUALS_OP CONCATENATION_OP 
// NATIONAL_CHAR_STRING_LIT BIT_STRING_LIT HEX_STRING_LIT EMBDD_VARIABLE_NAME 
// REGULAR_ID EXACT_NUM_LIT CHAR_STRING DELIMITED_ID PERCENT AMPERSAND 
// ASTERISK PLUS_SIGN COMMA SOLIDUS COLON SEMICOLON LESS_THAN_OP EQUALS_OP 
// GREATER_THAN_OP QUESTION_MARK VERTICAL_BAR LEFT_BRACKET RIGHT_BRACKET 
// INTRODUCER SIMPLE_LETTER SEPARATOR COMMENT NEWLINE SPACE ANY_CHAR DELIMITED_ID2 
// BRACKET_STRING SL_COMMENT ML_COMMENT CREATE 
const BitSet SqliteParser::_tokenSet_7(_tokenSet_7_data_,40);


