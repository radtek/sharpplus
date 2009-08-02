/* $ANTLR 2.7.7 (20060906): "Sqlite.g" -> "SqliteParser.cpp"$ */

	#include "StdAfx.h"

#include "SqliteParser.hpp"
#include <antlr/NoViableAltException.hpp>
#include <antlr/SemanticException.hpp>
#include <antlr/ASTFactory.hpp>

#include <boost/algorithm/string.hpp>
using namespace boost;

const char* SqliteParser::imgTokenNames[] = {
"<invalid token>",
	"<expression>",
	"<identifier>",
	0
};


#if 0
// constructor creation turned of with 'noConstructor' option
SqliteParser::SqliteParser(TokenBuffer& tokenBuf, int k)
: LLkParser(tokenBuf,k)
{
}

SqliteParser::SqliteParser(TokenBuffer& tokenBuf)
: LLkParser(tokenBuf,2)
{
}

SqliteParser::SqliteParser(TokenStream& lexer, int k)
: LLkParser(lexer,k)
{
}

SqliteParser::SqliteParser(TokenStream& lexer)
: LLkParser(lexer,2)
{
}

SqliteParser::SqliteParser(const ParserSharedInputState& state)
: LLkParser(state,2)
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

string  SqliteParser::sql_script() {
	string szSemiPos;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_script_AST = nullAST;
	RefToken  semi = nullToken;
	RefAST semi_AST = nullAST;
	
	szSemiPos="";
	
	
	{
	if ((_tokenSet_0.member(LA(1)))) {
		sql_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == SEMI)) {
			semi = LT(1);
			if ( inputState->guessing == 0 ) {
				semi_AST = astFactory->create(semi);
			}
			match(SEMI);
			if ( inputState->guessing==0 ) {
				
					   RefTokenWithIndex ts(semi);
					   string sline=IntToString(ts->getLine());
					   string scolumn=IntToString(ts->getColumn());
					   
					   szSemiPos=szSemiPos+sline+"="+scolumn+"\n";
					   
					
			}
			{
			if ((_tokenSet_0.member(LA(1)))) {
				sql_stmt();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
			}
			else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
			}
			else {
				throw NoViableAltException(LT(1), getFilename());
			}
			
			}
		}
		else {
			goto _loop95;
		}
		
	}
	_loop95:;
	} // ( ... )*
	sql_script_AST = currentAST.root;
	returnAST = sql_script_AST;
	return szSemiPos;
}

void SqliteParser::sql_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_stmt_AST = nullAST;
	
	SyntaxCheckStruct st;
	Sqlite_Sql_Type temp_type=sst_Unknown;
	m_tmpstate=ss_Unknown;
	
	
	try {      // for error handling
		{
		if ((LA(1) == SQL2RW_explain)) {
			explain();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				temp_type=sst_Explain;
			}
		}
		else if ((_tokenSet_1.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_replace || LA(1) == SQL2RW_select || LA(1) == SQL2RW_update)) {
			sql_data_stmt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_2.member(LA(1)))) {
			sql_schema_stmt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_begin || LA(1) == SQL2RW_commit || LA(1) == SQL2RW_end || LA(1) == SQL2RW_rollback || LA(1) == SQL2RW_savepoint || LA(1) == SQL2RW_release)) {
			sql_transaction_stmt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			
				    if (temp_type!=sst_Unknown)
				     m_sqltype=sst_Explain;
				
		}
		sql_stmt_AST = currentAST.root;
	}
	catch ( NoViableAltException& e ) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+e.token->getText().length();
			
					if (st.iEndCol>st.iBeginCol)
						m_vHints.push_back(st);
					
					//if (input pos==error pos)
					if (iRow==-1 && iColumn==-1 && e.token->getType()==Token::EOF_TYPE)
					{
					  m_sqlstate=m_tmpstate;		    		
					}
					else if (st.iRow==iRow && st.iBeginCol<=iColumn && st.iEndCol>=iColumn)
					{
					  m_sqlstate=m_tmpstate;		    
					}
			
			
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << e.token->getText().length() << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	catch (MismatchedTokenException& e) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+e.token->getText().length();
			
					if (st.iEndCol>st.iBeginCol)
						m_vHints.push_back(st);
					
					//if (input pos==error pos)
					if (iRow==-1 && iColumn==-1 && e.token->getType()==Token::EOF_TYPE)
					{
					  m_sqlstate=m_tmpstate;		    		
					}
					else if (st.iRow==iRow && st.iBeginCol<=iColumn && st.iEndCol>=iColumn)
					{
					  m_sqlstate=m_tmpstate;		    
					}
			
					
					//the syntax error was occured at the input position
			
					//if prefix = "", look ahead
					if (prefix=="")
					{
					    
					}
					
					if (iRow==st.iRow && iColumn>=st.iBeginCol && iColumn<=st.iEndCol)
					{
						if (e.mismatchType==MismatchedTokenException::SET)
						{
							vector<unsigned int> elems = e.set.toArray();
							for ( unsigned int i = 0; i < elems.size(); i++ )
						    {
							  m_vAutocomplete.push_back(tokenNames[elems[i]]);
							}
						}
						else if (e.mismatchType==MismatchedTokenException::TOKEN)
						{
					       //does not process <expression>
						   if (e.expecting>=30)
							  m_vAutocomplete.push_back(tokenNames[e.expecting]);
						}		    
					}
			
			
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << e.token->getText().length() << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery		
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	catch (SemanticException& e) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+1;
			
					m_vHints.push_back(st);
					
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << 1 << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery		
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	catch (RecognitionException& e) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+1;
			
					m_vHints.push_back(st);
					
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << 1 << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	returnAST = sql_stmt_AST;
}

string  SqliteParser::multi_script() {
	string szSemiPos;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST multi_script_AST = nullAST;
	RefToken  semi = nullToken;
	RefAST semi_AST = nullAST;
	
	szSemiPos="";
	
	
	single_script();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == SEMI)) {
			semi = LT(1);
			if ( inputState->guessing == 0 ) {
				semi_AST = astFactory->create(semi);
				astFactory->addASTChild(currentAST, semi_AST);
			}
			match(SEMI);
			if ( inputState->guessing==0 ) {
				
					   RefTokenWithIndex ts(semi);
					   string sline=IntToString(ts->getLine());
					   string scolumn=IntToString(ts->getColumn());
					   
					   szSemiPos=szSemiPos+sline+"="+scolumn+"\n";
					   
					
			}
			single_script();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop98;
		}
		
	}
	_loop98:;
	} // ( ... )*
	multi_script_AST = currentAST.root;
	returnAST = multi_script_AST;
	return szSemiPos;
}

void SqliteParser::single_script() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST single_script_AST = nullAST;
	
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_3.member(LA(1)))) {
			RefAST tmp2_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp2_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp2_AST);
			}
			matchNot(SEMI);
		}
		else {
			goto _loop101;
		}
		
	}
	_loop101:;
	} // ( ... )*
	single_script_AST = currentAST.root;
	returnAST = single_script_AST;
}

void SqliteParser::sql_single_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_single_stmt_AST = nullAST;
	
	{
	if ((_tokenSet_0.member(LA(1)))) {
		sql_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SEMI)) {
		RefAST tmp3_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp3_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp3_AST);
		}
		match(SEMI);
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

void SqliteParser::explain() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST explain_AST = nullAST;
	
	RefAST tmp4_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp4_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp4_AST);
	}
	match(SQL2RW_explain);
	{
	if ((LA(1) == SQL2RW_query)) {
		RefAST tmp5_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp5_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp5_AST);
		}
		match(SQL2RW_query);
		RefAST tmp6_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp6_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp6_AST);
		}
		match(SQL2RW_plan);
	}
	else if ((_tokenSet_1.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	explain_AST = currentAST.root;
	returnAST = explain_AST;
}

void SqliteParser::sql_data_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sql_data_stmt_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_select:
	{
		select_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_insert:
	case SQL2RW_replace:
	{
		insert_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_update:
	{
		update_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_data_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_delete:
	{
		delete_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
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
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_pragma:
	{
		pragma_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_drop:
	{
		drop_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_vacuum:
	{
		vacuum_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_alter:
	{
		alter_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_reindex:
	{
		reindex_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_analyze:
	{
		analyze_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_schema_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_attach:
	case SQL2RW_detach:
	{
		attach_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
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
		RefAST tmp7_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp7_AST = astFactory->create(LT(1));
			astFactory->makeASTRoot(currentAST, tmp7_AST);
		}
		match(SQL2RW_begin);
		{
		if ((LA(1) == SQL2RW_deferred || LA(1) == SQL2RW_exclusive || LA(1) == SQL2RW_immediate)) {
			transtype();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_transaction || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_transaction)) {
			trans_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_end:
	{
		RefAST tmp8_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp8_AST = astFactory->create(LT(1));
			astFactory->makeASTRoot(currentAST, tmp8_AST);
		}
		match(SQL2RW_end);
		{
		if ((LA(1) == SQL2RW_transaction)) {
			trans_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_commit:
	{
		RefAST tmp9_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp9_AST = astFactory->create(LT(1));
			astFactory->makeASTRoot(currentAST, tmp9_AST);
		}
		match(SQL2RW_commit);
		{
		if ((LA(1) == SQL2RW_transaction)) {
			trans_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_rollback:
	{
		RefAST tmp10_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp10_AST = astFactory->create(LT(1));
			astFactory->makeASTRoot(currentAST, tmp10_AST);
		}
		match(SQL2RW_rollback);
		{
		if ((LA(1) == SQL2RW_transaction)) {
			trans_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_to || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_to)) {
			RefAST tmp11_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp11_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp11_AST);
			}
			match(SQL2RW_to);
			{
			if ((LA(1) == SQL2RW_savepoint) && (_tokenSet_4.member(LA(2)))) {
				savepoint_opt();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
			}
			else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == SEMI)) {
			}
			else {
				throw NoViableAltException(LT(1), getFilename());
			}
			
			}
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_savepoint:
	{
		RefAST tmp12_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp12_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp12_AST);
		}
		match(SQL2RW_savepoint);
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sql_transaction_stmt_AST = currentAST.root;
		break;
	}
	case SQL2RW_release:
	{
		RefAST tmp13_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp13_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp13_AST);
		}
		match(SQL2RW_release);
		{
		if ((LA(1) == SQL2RW_savepoint) && (_tokenSet_4.member(LA(2)))) {
			savepoint_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
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

string  SqliteParser::select_stmt() {
	string szSelect;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST select_stmt_AST = nullAST;
	
	RefToken b;
	
	
	if ( inputState->guessing==0 ) {
		b=LT(1);
	}
	oneselect();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == SQL2RW_except || LA(1) == SQL2RW_intersect || LA(1) == SQL2RW_union)) {
			multiselect_op();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			oneselect();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop380;
		}
		
	}
	_loop380:;
	} // ( ... )*
	if ( inputState->guessing==0 ) {
		
				m_sqltype=sst_Select;
				if (iEnableEngine)
				{
					RefTokenWithIndex t1(b), t2(LT(1));
						
					ostringstream os;
					engine->originalToStream(os, t1->getIndex(), t2->getIndex());
					szSelect=trim_left_copy(os.str());	    
				}
			
	}
	select_stmt_AST = currentAST.root;
	returnAST = select_stmt_AST;
	return szSelect;
}

void SqliteParser::insert_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST insert_stmt_AST = nullAST;
	
	Sqlite_Sql_Type cmd_type;
	
	
	cmd_type=insert_cmd();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp14_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp14_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp14_AST);
	}
	match(SQL2RW_into);
	table_name();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == LP)) {
		inscollist_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_default || LA(1) == SQL2RW_select || LA(1) == SQL2RW_values)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_values)) {
		RefAST tmp15_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp15_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp15_AST);
		}
		match(SQL2RW_values);
		RefAST tmp16_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp16_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp16_AST);
		}
		match(LP);
		itemlist();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp17_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp17_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp17_AST);
		}
		match(RP);
	}
	else if ((LA(1) == SQL2RW_select)) {
		select_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_default)) {
		RefAST tmp18_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp18_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp18_AST);
		}
		match(SQL2RW_default);
		RefAST tmp19_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp19_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp19_AST);
		}
		match(SQL2RW_values);
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
			   m_sqltype=cmd_type;
			
	}
	insert_stmt_AST = currentAST.root;
	returnAST = insert_stmt_AST;
}

void SqliteParser::update_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST update_stmt_AST = nullAST;
	
	RefAST tmp20_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp20_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp20_AST);
	}
	match(SQL2RW_update);
	{
	if ((LA(1) == SQL2RW_or)) {
		orconf();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	table_name();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_not || LA(1) == SQL2RW_indexed)) {
		indexed_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_set)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp21_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp21_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp21_AST);
	}
	match(SQL2RW_set);
	setlist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_where)) {
		where_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
			     m_sqltype=sst_Update;
			
	}
	update_stmt_AST = currentAST.root;
	returnAST = update_stmt_AST;
}

void SqliteParser::delete_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST delete_stmt_AST = nullAST;
	
	RefAST tmp22_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp22_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp22_AST);
	}
	match(SQL2RW_delete);
	RefAST tmp23_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp23_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp23_AST);
	}
	match(SQL2RW_from);
	table_name();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_not || LA(1) == SQL2RW_indexed)) {
		indexed_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_where || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_where)) {
		where_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
			     m_sqltype=sst_Delete;
			
	}
	delete_stmt_AST = currentAST.root;
	returnAST = delete_stmt_AST;
}

Sqlite_Sql_Type  SqliteParser::insert_cmd() {
	Sqlite_Sql_Type cmd_type;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST insert_cmd_AST = nullAST;
	
	if ((LA(1) == SQL2RW_insert)) {
		{
		RefAST tmp24_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp24_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp24_AST);
		}
		match(SQL2RW_insert);
		{
		if ((LA(1) == SQL2RW_or)) {
			orconf();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_into)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			cmd_type=sst_Insert;
		}
		}
		insert_cmd_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_replace)) {
		{
		RefAST tmp25_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp25_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp25_AST);
		}
		match(SQL2RW_replace);
		if ( inputState->guessing==0 ) {
			cmd_type=sst_Replace;
		}
		}
		insert_cmd_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = insert_cmd_AST;
	return cmd_type;
}

void SqliteParser::table_name() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST table_name_AST = nullAST;
	
	RefToken e;
	m_tmpstate=ss_FromTable;   
	
	
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (_tokenSet_5.member(LA(2)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		e=LT(1);
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
		m_sqlstate=ss_FromTable; 
		m_tmpstate=ss_Unknown;          
		
	}
	table_name_AST = currentAST.root;
	returnAST = table_name_AST;
}

void SqliteParser::inscollist_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST inscollist_opt_AST = nullAST;
	
	RefAST tmp26_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp26_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp26_AST);
	}
	match(LP);
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp27_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp27_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp27_AST);
			}
			match(COMMA);
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop120;
		}
		
	}
	_loop120:;
	} // ( ... )*
	RefAST tmp28_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp28_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp28_AST);
	}
	match(RP);
	inscollist_opt_AST = currentAST.root;
	returnAST = inscollist_opt_AST;
}

void SqliteParser::itemlist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST itemlist_AST = nullAST;
	
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp29_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp29_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp29_AST);
			}
			match(COMMA);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop440;
		}
		
	}
	_loop440:;
	} // ( ... )*
	itemlist_AST = currentAST.root;
	returnAST = itemlist_AST;
}

void SqliteParser::orconf() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST orconf_AST = nullAST;
	
	RefAST tmp30_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp30_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp30_AST);
	}
	match(SQL2RW_or);
	resolvetype();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	orconf_AST = currentAST.root;
	returnAST = orconf_AST;
}

string  SqliteParser::nm() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST nm_AST = nullAST;
	RefAST s1_AST = nullAST;
	RefToken  s2 = nullToken;
	RefAST s2_AST = nullAST;
	RefAST s3_AST = nullAST;
	
	if ((_tokenSet_6.member(LA(1)))) {
		id();
		if (inputState->guessing==0) {
			s1_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szName=s1_AST->getText(); TrimId(szName);
		}
		nm_AST = currentAST.root;
	}
	else if ((LA(1) == STRING)) {
		s2 = LT(1);
		if ( inputState->guessing == 0 ) {
			s2_AST = astFactory->create(s2);
			astFactory->addASTChild(currentAST, s2_AST);
		}
		match(STRING);
		if ( inputState->guessing==0 ) {
			szName=s2_AST->getText(); TrimId(szName);
		}
		nm_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_cross || LA(1) == SQL2RW_full || LA(1) == SQL2RW_inner || LA(1) == SQL2RW_left || LA(1) == SQL2RW_natural || LA(1) == SQL2RW_outer || LA(1) == SQL2RW_right)) {
		join_kw();
		if (inputState->guessing==0) {
			s3_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szName=s3_AST->getText();
		}
		nm_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = nm_AST;
	return szName;
}

void SqliteParser::indexed_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST indexed_opt_AST = nullAST;
	
	if ((LA(1) == SQL2RW_indexed)) {
		RefAST tmp31_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp31_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp31_AST);
		}
		match(SQL2RW_indexed);
		RefAST tmp32_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp32_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp32_AST);
		}
		match(SQL2RW_by);
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		indexed_opt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_not)) {
		RefAST tmp33_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp33_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp33_AST);
		}
		match(SQL2RW_not);
		RefAST tmp34_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp34_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp34_AST);
		}
		match(SQL2RW_indexed);
		indexed_opt_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = indexed_opt_AST;
}

void SqliteParser::setlist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST setlist_AST = nullAST;
	
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp35_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp35_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp35_AST);
	}
	match(EQ);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp36_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp36_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp36_AST);
			}
			match(COMMA);
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp37_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp37_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp37_AST);
			}
			match(EQ);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop443;
		}
		
	}
	_loop443:;
	} // ( ... )*
	setlist_AST = currentAST.root;
	returnAST = setlist_AST;
}

void SqliteParser::where_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST where_opt_AST = nullAST;
	
	RefAST tmp38_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp38_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp38_AST);
	}
	match(SQL2RW_where);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	where_opt_AST = currentAST.root;
	returnAST = where_opt_AST;
}

string  SqliteParser::dbnm() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST dbnm_AST = nullAST;
	
	string szNm;
	
	
	szNm=nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp39_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp39_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp39_AST);
	}
	match(DOT);
	if ( inputState->guessing==0 ) {
		
		szName= szNm+".";
		
	}
	dbnm_AST = currentAST.root;
	returnAST = dbnm_AST;
	return szName;
}

string  SqliteParser::drop_name() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST drop_name_AST = nullAST;
	
	RefToken e;
		if (m_sqltype==sst_DropTable)
			m_tmpstate=ss_DropTable; 
		else if (m_sqltype==sst_DropView)
			m_tmpstate=ss_FromView;
		else if (m_sqltype==sst_DropTrigger)
			m_tmpstate=ss_FromTrigger;
		else if (m_sqltype==sst_DropIndex)
			m_tmpstate=ss_DropIndex;
	
	
	
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		e=LT(1);
	}
	szName=nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
		{  
		m_sqlstate=m_tmpstate;
		}
		m_tmpstate=ss_Unknown;
		
	}
	drop_name_AST = currentAST.root;
	returnAST = drop_name_AST;
	return szName;
}

string  SqliteParser::tableview_name() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST tableview_name_AST = nullAST;
	
	RefToken e;
	m_tmpstate=ss_FromTableView;   
	string szDbnm="";
	
	
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		szDbnm=dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (_tokenSet_7.member(LA(2)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		e=LT(1);
	}
	szName=nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
		m_sqlstate=ss_FromTableView; 
		m_tmpstate=ss_Unknown;          
		
		szName=szDbnm+szName;
		
	}
	tableview_name_AST = currentAST.root;
	returnAST = tableview_name_AST;
	return szName;
}

void SqliteParser::simple_table_name() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST simple_table_name_AST = nullAST;
	
	RefToken e;
	m_tmpstate=ss_FromTable;   
	
	
	if ( inputState->guessing==0 ) {
		e=LT(1);
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
				m_sqlstate=ss_FromTable; 
			m_tmpstate=ss_Unknown;          
		
	}
	simple_table_name_AST = currentAST.root;
	returnAST = simple_table_name_AST;
}

void SqliteParser::create_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_stmt_AST = nullAST;
	
	if (((LA(1) == SQL2RW_create) && ((LA(2) >= SQL2RW_table && LA(2) <= SQL2RW_temporary)))&&(((LA(2) == SQL2RW_temp || LA(2)==SQL2RW_temporary) && LA(3)==SQL2RW_table) || (LA(2)==SQL2RW_table))) {
		create_table_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		create_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_virtual)) {
		create_virtual_table_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		create_stmt_AST = currentAST.root;
	}
	else if (((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_temp || LA(2) == SQL2RW_temporary || LA(2) == SQL2RW_view))&&(((LA(2) == SQL2RW_temp || LA(2)==SQL2RW_temporary) && LA(3)==SQL2RW_view) || (LA(2)==SQL2RW_view))) {
		create_view_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		create_stmt_AST = currentAST.root;
	}
	else if (((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_temp || LA(2) == SQL2RW_temporary || LA(2) == SQL2RW_trigger))&&(((LA(2) == SQL2RW_temp || LA(2)==SQL2RW_temporary) && LA(3)==SQL2RW_trigger) || (LA(2)==SQL2RW_trigger))) {
		create_trigger_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		create_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_create) && (LA(2) == SQL2RW_index || LA(2) == SQL2RW_unique)) {
		create_index_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
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
	
	
	RefAST tmp40_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp40_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp40_AST);
	}
	match(SQL2RW_pragma);
	full_name();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == EQ)) {
		RefAST tmp41_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp41_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp41_AST);
		}
		match(EQ);
		{
		if ((_tokenSet_8.member(LA(1)))) {
			nmnum();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == MINUS)) {
			minus_num();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			m_sqltype=sst_PragmaSetting;
		}
	}
	else if ((LA(1) == LP)) {
		RefAST tmp42_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp42_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp42_AST);
		}
		match(LP);
		{
		if ((_tokenSet_8.member(LA(1)))) {
			nmnum();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == MINUS)) {
			minus_num();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp43_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp43_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp43_AST);
		}
		match(RP);
		if ( inputState->guessing==0 ) {
			m_sqltype=sst_PragmaSetting;
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	pragma_stmt_AST = currentAST.root;
	returnAST = pragma_stmt_AST;
}

string  SqliteParser::drop_stmt() {
	string szName;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST drop_stmt_AST = nullAST;
	RefAST oName_AST = nullAST;
	
	RefAST tmp44_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp44_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp44_AST);
	}
	match(SQL2RW_drop);
	{
	switch ( LA(1)) {
	case SQL2RW_table:
	{
		RefAST tmp45_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp45_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp45_AST);
		}
		match(SQL2RW_table);
		if ( inputState->guessing==0 ) {
			m_sqltype=sst_DropTable;
		}
		break;
	}
	case SQL2RW_view:
	{
		RefAST tmp46_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp46_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp46_AST);
		}
		match(SQL2RW_view);
		if ( inputState->guessing==0 ) {
			m_sqltype=sst_DropView;
		}
		break;
	}
	case SQL2RW_trigger:
	{
		RefAST tmp47_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp47_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp47_AST);
		}
		match(SQL2RW_trigger);
		if ( inputState->guessing==0 ) {
			m_sqltype=sst_DropTrigger;
		}
		break;
	}
	case SQL2RW_index:
	{
		RefAST tmp48_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp48_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp48_AST);
		}
		match(SQL2RW_index);
		if ( inputState->guessing==0 ) {
			m_sqltype=sst_DropIndex;
		}
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	}
	{
	if ((LA(1) == SQL2RW_if) && (LA(2) == SQL2RW_exists)) {
		ifexists();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == DOT || LA(2) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	drop_name();
	if (inputState->guessing==0) {
		oName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			   szName=oName_AST->getText();
			   TrimId(szName);
			
	}
	drop_stmt_AST = currentAST.root;
	returnAST = drop_stmt_AST;
	return szName;
}

void SqliteParser::vacuum_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST vacuum_stmt_AST = nullAST;
	
	RefAST tmp49_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp49_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp49_AST);
	}
	match(SQL2RW_vacuum);
	{
	if ((_tokenSet_4.member(LA(1)))) {
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
		m_sqltype=sst_Vacuum;
		
	}
	vacuum_stmt_AST = currentAST.root;
	returnAST = vacuum_stmt_AST;
}

AlterStruct  SqliteParser::alter_stmt() {
	AlterStruct as;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST alter_stmt_AST = nullAST;
	RefAST oldName_AST = nullAST;
	RefAST newName_AST = nullAST;
	
	RefAST tmp50_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp50_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp50_AST);
	}
	match(SQL2RW_alter);
	RefAST tmp51_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp51_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp51_AST);
	}
	match(SQL2RW_table);
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_add || LA(2) == SQL2RW_rename)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		oldName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		as.szOldName=oldName_AST->getText();
		TrimId(as.szOldName);
		
	}
	{
	if ((LA(1) == SQL2RW_rename)) {
		RefAST tmp52_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp52_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp52_AST);
		}
		match(SQL2RW_rename);
		RefAST tmp53_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp53_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp53_AST);
		}
		match(SQL2RW_to);
		nm();
		if (inputState->guessing==0) {
			newName_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			
			m_sqltype=sst_RenameTable;
			as.szNewName=newName_AST->getText();
			TrimId(as.szNewName);
			
		}
	}
	else if ((LA(1) == SQL2RW_add)) {
		RefAST tmp54_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp54_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp54_AST);
		}
		match(SQL2RW_add);
		{
		if ((LA(1) == SQL2RW_column) && (_tokenSet_4.member(LA(2)))) {
			RefAST tmp55_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp55_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp55_AST);
			}
			match(SQL2RW_column);
		}
		else if ((_tokenSet_4.member(LA(1))) && (_tokenSet_9.member(LA(2)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		column();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	alter_stmt_AST = currentAST.root;
	returnAST = alter_stmt_AST;
	return as;
}

void SqliteParser::reindex_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST reindex_stmt_AST = nullAST;
	
	RefAST tmp56_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp56_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp56_AST);
	}
	match(SQL2RW_reindex);
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	reindex_stmt_AST = currentAST.root;
	returnAST = reindex_stmt_AST;
}

void SqliteParser::analyze_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST analyze_stmt_AST = nullAST;
	
	RefAST tmp57_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp57_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp57_AST);
	}
	match(SQL2RW_analyze);
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	analyze_stmt_AST = currentAST.root;
	returnAST = analyze_stmt_AST;
}

void SqliteParser::attach_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST attach_stmt_AST = nullAST;
	
	bool synPredMatched142 = false;
	if (((LA(1) == SQL2RW_attach) && (LA(2) == SQL2RW_database))) {
		int _m142 = mark();
		synPredMatched142 = true;
		inputState->guessing++;
		try {
			{
			match(SQL2RW_attach);
			match(SQL2RW_database);
			}
		}
		catch (RecognitionException& pe) {
			synPredMatched142 = false;
		}
		rewind(_m142);
		inputState->guessing--;
	}
	if ( synPredMatched142 ) {
		RefAST tmp58_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp58_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp58_AST);
		}
		match(SQL2RW_attach);
		RefAST tmp59_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp59_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp59_AST);
		}
		match(SQL2RW_database);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp60_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp60_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp60_AST);
		}
		match(SQL2RW_as);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == SQL2RW_key)) {
			key_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			attach_stmt_AST = RefAST(currentAST.root);
			
			m_sqltype=sst_Attach;
			attach_stmt_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(ATTACHDB_DEF,"ATTACHDB_DEF"))->add(attach_stmt_AST)));
			
			currentAST.root = attach_stmt_AST;
			if ( attach_stmt_AST!=nullAST &&
				attach_stmt_AST->getFirstChild() != nullAST )
				  currentAST.child = attach_stmt_AST->getFirstChild();
			else
				currentAST.child = attach_stmt_AST;
			currentAST.advanceChildToEnd();
		}
		attach_stmt_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_attach) && (_tokenSet_10.member(LA(2)))) {
		RefAST tmp61_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp61_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp61_AST);
		}
		match(SQL2RW_attach);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp62_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp62_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp62_AST);
		}
		match(SQL2RW_as);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == SQL2RW_key)) {
			key_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			attach_stmt_AST = RefAST(currentAST.root);
			
			m_sqltype=sst_Attach;
			attach_stmt_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(ATTACH_DEF,"ATTACH_DEF"))->add(attach_stmt_AST)));
			
			currentAST.root = attach_stmt_AST;
			if ( attach_stmt_AST!=nullAST &&
				attach_stmt_AST->getFirstChild() != nullAST )
				  currentAST.child = attach_stmt_AST->getFirstChild();
			else
				currentAST.child = attach_stmt_AST;
			currentAST.advanceChildToEnd();
		}
		attach_stmt_AST = currentAST.root;
	}
	else {
		bool synPredMatched146 = false;
		if (((LA(1) == SQL2RW_detach) && (LA(2) == SQL2RW_database))) {
			int _m146 = mark();
			synPredMatched146 = true;
			inputState->guessing++;
			try {
				{
				match(SQL2RW_detach);
				match(SQL2RW_database);
				}
			}
			catch (RecognitionException& pe) {
				synPredMatched146 = false;
			}
			rewind(_m146);
			inputState->guessing--;
		}
		if ( synPredMatched146 ) {
			RefAST tmp63_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp63_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp63_AST);
			}
			match(SQL2RW_detach);
			RefAST tmp64_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp64_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp64_AST);
			}
			match(SQL2RW_database);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				attach_stmt_AST = RefAST(currentAST.root);
				
				m_sqltype=sst_Detach;
				attach_stmt_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(DETACHDB_DEF,"DETACHDB_DEF"))->add(attach_stmt_AST)));
				
				currentAST.root = attach_stmt_AST;
				if ( attach_stmt_AST!=nullAST &&
					attach_stmt_AST->getFirstChild() != nullAST )
					  currentAST.child = attach_stmt_AST->getFirstChild();
				else
					currentAST.child = attach_stmt_AST;
				currentAST.advanceChildToEnd();
			}
			attach_stmt_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_detach) && (_tokenSet_10.member(LA(2)))) {
			RefAST tmp65_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp65_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp65_AST);
			}
			match(SQL2RW_detach);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				attach_stmt_AST = RefAST(currentAST.root);
				
				m_sqltype=sst_Detach;
				attach_stmt_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(DETACH_DEF,"DETACH_DEF"))->add(attach_stmt_AST)));
				
				currentAST.root = attach_stmt_AST;
				if ( attach_stmt_AST!=nullAST &&
					attach_stmt_AST->getFirstChild() != nullAST )
					  currentAST.child = attach_stmt_AST->getFirstChild();
				else
					currentAST.child = attach_stmt_AST;
				currentAST.advanceChildToEnd();
			}
			attach_stmt_AST = currentAST.root;
		}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = attach_stmt_AST;
}

void SqliteParser::expr() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST expr_AST = nullAST;
	
	RefToken b=LT(1);
	RefToken e;
	m_tmpstate=ss_Expression;   
	
	
	compound_expression();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_11.member(LA(1))) && (_tokenSet_12.member(LA(2)))) {
			binary_op();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			compound_expression();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop218;
		}
		
	}
	_loop218:;
	} // ( ... )*
	if ( inputState->guessing==0 ) {
		
				e=LT(1);
				if (b->getLine()==iRow && b->getColumn()>iColumn) 
					m_tmpstate=ss_Unknown;          
				else if (e->getLine()==iRow && e->getColumn()<iColumn-e->getText().length())
					m_tmpstate=ss_Unknown;          
				else if (b->getLine()>iRow && e->getLine()<iRow )
					m_tmpstate=ss_Unknown;          
				else
					m_sqlstate=ss_Expression; 		
		
	}
	expr_AST = currentAST.root;
	returnAST = expr_AST;
}

void SqliteParser::key_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST key_opt_AST = nullAST;
	
	RefAST tmp66_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp66_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp66_AST);
	}
	match(SQL2RW_key);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	key_opt_AST = currentAST.root;
	returnAST = key_opt_AST;
}

CreateTableStruct  SqliteParser::create_table_stmt() {
	CreateTableStruct tStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_table_stmt_AST = nullAST;
	RefAST tName_AST = nullAST;
	
	tStruct.bTemp=false;
	Sqlite_Sql_Type sql_type=sst_CreateTable;
	
	
	RefAST tmp67_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp67_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp67_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			
				  tStruct.bTemp=true;
				  sql_type=sst_CreateTempTable;
				
		}
	}
	else if ((LA(1) == SQL2RW_table)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp68_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp68_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp68_AST);
	}
	match(SQL2RW_table);
	{
	if ((LA(1) == SQL2RW_if) && (LA(2) == SQL2RW_not)) {
		ifnotexists();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_as || LA(2) == DOT || LA(2) == LP)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_as || LA(2) == LP)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		tName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			    tStruct.szTableName=tName_AST->getText();
			    TrimId(tStruct.szTableName);
			
	}
	{
	if ((LA(1) == LP)) {
		table_column_stmt(tStruct);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_as)) {
		table_select_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
			     m_sqltype=sql_type;	  
			
	}
	create_table_stmt_AST = currentAST.root;
	returnAST = create_table_stmt_AST;
	return tStruct;
}

CreateVirtualTableStruct  SqliteParser::create_virtual_table_stmt() {
	CreateVirtualTableStruct tStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_virtual_table_stmt_AST = nullAST;
	RefAST dName_AST = nullAST;
	RefAST tName_AST = nullAST;
	RefAST mName_AST = nullAST;
	RefToken  b = nullToken;
	RefAST b_AST = nullAST;
	
	RefToken e;
	string szDbnm;   
	
	
	RefAST tmp69_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp69_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp69_AST);
	}
	match(SQL2RW_create);
	RefAST tmp70_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp70_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp70_AST);
	}
	match(SQL2RW_virtual);
	RefAST tmp71_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp71_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp71_AST);
	}
	match(SQL2RW_table);
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			dName_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			tStruct.szTableName=dName_AST->getText()+".";
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_using)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		tName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		tStruct.szTableName=tStruct.szTableName+tName_AST->getText();
	}
	RefAST tmp72_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp72_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp72_AST);
	}
	match(SQL2RW_using);
	nm();
	if (inputState->guessing==0) {
		mName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		tStruct.szModule=mName_AST->getText();
	}
	b = LT(1);
	if ( inputState->guessing == 0 ) {
		b_AST = astFactory->create(b);
		astFactory->addASTChild(currentAST, b_AST);
	}
	match(LP);
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_3.member(LA(1)))) {
			if ( inputState->guessing==0 ) {
				e=LT(1);
			}
			RefAST tmp73_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp73_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp73_AST);
			}
			matchNot(SEMI);
		}
		else {
			goto _loop152;
		}
		
	}
	_loop152:;
	} // ( ... )*
	if ( inputState->guessing==0 ) {
		create_virtual_table_stmt_AST = RefAST(currentAST.root);
		
		if (iEnableEngine)
		{
					RefTokenWithIndex t1(b), t2(e);
						
					ostringstream os;
					engine->originalToStream(os, t1->getIndex(), t2->getIndex()+1);
					tStruct.szParameters=trim_left_copy(os.str());	    
				}
		m_sqltype=sst_CreateVirtualTable;
		create_virtual_table_stmt_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(VIRTUAL_DEF,"VIRTUAL_DEF"))->add(create_virtual_table_stmt_AST)));
		
		currentAST.root = create_virtual_table_stmt_AST;
		if ( create_virtual_table_stmt_AST!=nullAST &&
			create_virtual_table_stmt_AST->getFirstChild() != nullAST )
			  currentAST.child = create_virtual_table_stmt_AST->getFirstChild();
		else
			currentAST.child = create_virtual_table_stmt_AST;
		currentAST.advanceChildToEnd();
	}
	create_virtual_table_stmt_AST = currentAST.root;
	returnAST = create_virtual_table_stmt_AST;
	return tStruct;
}

CreateViewStruct  SqliteParser::create_view_stmt() {
	CreateViewStruct vStruct;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_view_stmt_AST = nullAST;
	RefAST vName_AST = nullAST;
	
	vStruct.bTemp=false;
	string szSelectSql;
	
	
	RefAST tmp74_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp74_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp74_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			vStruct.bTemp=true;
		}
	}
	else if ((LA(1) == SQL2RW_view)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp75_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp75_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp75_AST);
	}
	match(SQL2RW_view);
	{
	if ((LA(1) == SQL2RW_if) && (LA(2) == SQL2RW_not)) {
		ifnotexists();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_as || LA(2) == DOT)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_as)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		vName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			    vStruct.szViewName=vName_AST->getText(); 
			    TrimId(vStruct.szViewName);
			
	}
	RefAST tmp76_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp76_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp76_AST);
	}
	match(SQL2RW_as);
	szSelectSql=select_stmt();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		create_view_stmt_AST = RefAST(currentAST.root);
		
				vStruct.szSelectSql=szSelectSql; 
				if (vStruct.bTemp)
					m_sqltype=sst_CreateTempView;
				else
				    m_sqltype=sst_CreateView;
				create_view_stmt_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(VIEW_DEF,"VIEW_DEF"))->add(create_view_stmt_AST)));
			
		currentAST.root = create_view_stmt_AST;
		if ( create_view_stmt_AST!=nullAST &&
			create_view_stmt_AST->getFirstChild() != nullAST )
			  currentAST.child = create_view_stmt_AST->getFirstChild();
		else
			currentAST.child = create_view_stmt_AST;
		currentAST.advanceChildToEnd();
	}
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
	
	tStruct.bTemp=false;
	tStruct.teEvent=teNone;
	tStruct.dbEvent=deDelete;
	tStruct.ftStatement=ftNone;
	m_sqltype=sst_CreateTrigger;
	string szTemp;
	string szAction="";
	
	
	RefAST tmp77_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp77_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp77_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			
				   tStruct.bTemp=true;
				   m_sqltype=sst_CreateTempTrigger;
				
		}
	}
	else if ((LA(1) == SQL2RW_trigger)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp78_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp78_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp78_AST);
	}
	match(SQL2RW_trigger);
	{
	if ((LA(1) == SQL2RW_if) && (LA(2) == SQL2RW_not)) {
		ifnotexists();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_after || LA(2) == SQL2RW_before || LA(2) == SQL2RW_delete || LA(2) == SQL2RW_insert || LA(2) == SQL2RW_instead || LA(2) == SQL2RW_update || LA(2) == DOT)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_after || LA(2) == SQL2RW_before || LA(2) == SQL2RW_delete || LA(2) == SQL2RW_insert || LA(2) == SQL2RW_instead || LA(2) == SQL2RW_update)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		tName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_after || LA(1) == SQL2RW_before || LA(1) == SQL2RW_instead)) {
		trigger_event(tStruct);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_update)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	database_event(tStruct);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp79_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp79_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp79_AST);
	}
	match(SQL2RW_on);
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_begin || LA(2) == SQL2RW_for || LA(2) == SQL2RW_when)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	szTemp=nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		tStruct.szTarget=szTemp;
	}
	{
	if ((LA(1) == SQL2RW_for)) {
		for_stmt(tStruct);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_begin || LA(1) == SQL2RW_when)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	szAction=trigger_action();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		create_trigger_stmt_AST = RefAST(currentAST.root);
		
				tStruct.szStatement=szAction;
							  
			    tStruct.szTriggerName=tName_AST->getText();
			    TrimId(tStruct.szTriggerName);
			    
			    create_trigger_stmt_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(TRIGGER_DEF,"TRIGGER_DEF"))->add(create_trigger_stmt_AST)));
			
		currentAST.root = create_trigger_stmt_AST;
		if ( create_trigger_stmt_AST!=nullAST &&
			create_trigger_stmt_AST->getFirstChild() != nullAST )
			  currentAST.child = create_trigger_stmt_AST->getFirstChild();
		else
			currentAST.child = create_trigger_stmt_AST;
		currentAST.advanceChildToEnd();
	}
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
	
	
	RefAST tmp80_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp80_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp80_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_unique)) {
		RefAST tmp81_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp81_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp81_AST);
		}
		match(SQL2RW_unique);
		if ( inputState->guessing==0 ) {
			iStruct.IsUnique=true;
		}
	}
	else if ((LA(1) == SQL2RW_index)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp82_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp82_AST = astFactory->create(LT(1));
		astFactory->makeASTRoot(currentAST, tmp82_AST);
	}
	match(SQL2RW_index);
	{
	if ((LA(1) == SQL2RW_if) && (LA(2) == SQL2RW_not)) {
		ifnotexists();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_on || LA(2) == DOT)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_on)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		indexName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			    iStruct.szIndexName=indexName_AST->getText();	  
			    TrimId(iStruct.szIndexName);
			
	}
	RefAST tmp83_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp83_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp83_AST);
	}
	match(SQL2RW_on);
	nm();
	if (inputState->guessing==0) {
		tblName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			    iStruct.szTableName=tblName_AST->getText();
			    TrimId(iStruct.szTableName);
			
	}
	RefAST tmp84_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp84_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp84_AST);
	}
	match(LP);
	column_name(iStruct);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp85_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp85_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp85_AST);
			}
			match(COMMA);
			column_name(iStruct);
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop302;
		}
		
	}
	_loop302:;
	} // ( ... )*
	RefAST tmp86_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp86_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp86_AST);
	}
	match(RP);
	{
	if ((LA(1) == SQL2RW_on)) {
		caConflict=conflict_clause();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
			    iStruct.caConflict=caConflict;	  
			
	}
	create_index_stmt_AST = currentAST.root;
	returnAST = create_index_stmt_AST;
	return iStruct;
}

void SqliteParser::temp() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST temp_AST = nullAST;
	
	if ((LA(1) == SQL2RW_temp)) {
		RefAST tmp87_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp87_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp87_AST);
		}
		match(SQL2RW_temp);
		temp_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_temporary)) {
		RefAST tmp88_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp88_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp88_AST);
		}
		match(SQL2RW_temporary);
		temp_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = temp_AST;
}

void SqliteParser::ifnotexists() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST ifnotexists_AST = nullAST;
	
	RefAST tmp89_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp89_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp89_AST);
	}
	match(SQL2RW_if);
	RefAST tmp90_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp90_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp90_AST);
	}
	match(SQL2RW_not);
	RefAST tmp91_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp91_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp91_AST);
	}
	match(SQL2RW_exists);
	if ( inputState->guessing==0 ) {
		ifnotexists_AST = RefAST(currentAST.root);
		ifnotexists_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(IFNOTEXISTS_DEF,"IFNOTEXISTS_DEF"))->add(ifnotexists_AST)));
		currentAST.root = ifnotexists_AST;
		if ( ifnotexists_AST!=nullAST &&
			ifnotexists_AST->getFirstChild() != nullAST )
			  currentAST.child = ifnotexists_AST->getFirstChild();
		else
			currentAST.child = ifnotexists_AST;
		currentAST.advanceChildToEnd();
	}
	ifnotexists_AST = currentAST.root;
	returnAST = ifnotexists_AST;
}

void SqliteParser::table_column_stmt(
	CreateTableStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST table_column_stmt_AST = nullAST;
	
	RefAST tmp92_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp92_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp92_AST);
	}
	match(LP);
	column_def(tStruct);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA) && (_tokenSet_4.member(LA(2)))) {
			match(COMMA);
			column_def(tStruct);
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop178;
		}
		
	}
	_loop178:;
	} // ( ... )*
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			match(COMMA);
			tcons(tStruct);
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop180;
		}
		
	}
	_loop180:;
	} // ( ... )*
	RefAST tmp95_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp95_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp95_AST);
	}
	match(RP);
	table_column_stmt_AST = currentAST.root;
	returnAST = table_column_stmt_AST;
}

void SqliteParser::table_select_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST table_select_stmt_AST = nullAST;
	
	RefAST tmp96_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp96_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp96_AST);
	}
	match(SQL2RW_as);
	select_stmt();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	table_select_stmt_AST = currentAST.root;
	returnAST = table_select_stmt_AST;
}

string  SqliteParser::create_ifnot_table_stmt() {
	string sTable;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_ifnot_table_stmt_AST = nullAST;
	RefToken  t = nullToken;
	RefAST t_AST = nullAST;
	
	sTable="";
	
	
	RefAST tmp97_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp97_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp97_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_table)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	t = LT(1);
	if ( inputState->guessing == 0 ) {
		t_AST = astFactory->create(t);
		astFactory->addASTChild(currentAST, t_AST);
	}
	match(SQL2RW_table);
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
				RefTokenWithIndex t1(t);
				//Todo:fix memory leak
				engine->insertAfter(t1, " IF NOT EXISTS");
			
	}
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_3.member(LA(1)))) {
			RefAST tmp98_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp98_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp98_AST);
			}
			matchNot(SEMI);
		}
		else {
			goto _loop161;
		}
		
	}
	_loop161:;
	} // ( ... )*
	if ( inputState->guessing==0 ) {
		
			     ostringstream os; 
			     engine->toStream(os);
			     
			     sTable=os.str();	     
			
	}
	create_ifnot_table_stmt_AST = currentAST.root;
	returnAST = create_ifnot_table_stmt_AST;
	return sTable;
}

string  SqliteParser::create_ifnot_view_stmt() {
	string sView;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_ifnot_view_stmt_AST = nullAST;
	RefToken  v = nullToken;
	RefAST v_AST = nullAST;
	RefAST vName_AST = nullAST;
	
	sView="";
	
	
	RefAST tmp99_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp99_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp99_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_view)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	v = LT(1);
	if ( inputState->guessing == 0 ) {
		v_AST = astFactory->create(v);
		astFactory->addASTChild(currentAST, v_AST);
	}
	match(SQL2RW_view);
	if ( inputState->guessing==0 ) {
		
				RefTokenWithIndex v1(v);
				//Todo:fix memory leak
				engine->insertAfter(v1, " IF NOT EXISTS");
			
	}
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_as)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		vName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp100_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp100_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp100_AST);
	}
	match(SQL2RW_as);
	select_stmt();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
			     ostringstream os; 
			     engine->toStream(os);
			     
			     sView=os.str();		     
			
	}
	create_ifnot_view_stmt_AST = currentAST.root;
	returnAST = create_ifnot_view_stmt_AST;
	return sView;
}

string  SqliteParser::create_ifnot_trigger_stmt() {
	string sTrigger;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_ifnot_trigger_stmt_AST = nullAST;
	RefToken  t = nullToken;
	RefAST t_AST = nullAST;
	
	CreateTriggerStruct tStruct;
	sTrigger="";
	
	
	RefAST tmp101_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp101_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp101_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_temp || LA(1) == SQL2RW_temporary)) {
		temp();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_trigger)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	t = LT(1);
	if ( inputState->guessing == 0 ) {
		t_AST = astFactory->create(t);
		astFactory->addASTChild(currentAST, t_AST);
	}
	match(SQL2RW_trigger);
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_after || LA(2) == SQL2RW_before || LA(2) == SQL2RW_delete || LA(2) == SQL2RW_insert || LA(2) == SQL2RW_instead || LA(2) == SQL2RW_update)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_after || LA(1) == SQL2RW_before || LA(1) == SQL2RW_instead)) {
		trigger_event(tStruct);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_update)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	database_event(tStruct);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp102_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp102_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp102_AST);
	}
	match(SQL2RW_on);
	tableview_name();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_for)) {
		for_stmt(tStruct);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_begin || LA(1) == SQL2RW_when)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	trigger_action();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
				 RefTokenWithIndex t1(t);
				 //Todo:fix memory leak
				 engine->insertAfter(t1, " IF NOT EXISTS");
			  
			     ostringstream os; 
			     engine->toStream(os);
			     
			     sTrigger=os.str();		     
			
	}
	create_ifnot_trigger_stmt_AST = currentAST.root;
	returnAST = create_ifnot_trigger_stmt_AST;
	return sTrigger;
}

void SqliteParser::trigger_event(
	CreateTriggerStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trigger_event_AST = nullAST;
	
	if ((LA(1) == SQL2RW_before)) {
		RefAST tmp103_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp103_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp103_AST);
		}
		match(SQL2RW_before);
		if ( inputState->guessing==0 ) {
			tStruct.teEvent=teBefore;
		}
		trigger_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_after)) {
		RefAST tmp104_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp104_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp104_AST);
		}
		match(SQL2RW_after);
		if ( inputState->guessing==0 ) {
			tStruct.teEvent=teAfter;
		}
		trigger_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_instead)) {
		RefAST tmp105_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp105_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp105_AST);
		}
		match(SQL2RW_instead);
		RefAST tmp106_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp106_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp106_AST);
		}
		match(SQL2RW_of);
		if ( inputState->guessing==0 ) {
			tStruct.teEvent=teInstead;
		}
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
		RefAST tmp107_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp107_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp107_AST);
		}
		match(SQL2RW_delete);
		if ( inputState->guessing==0 ) {
			tStruct.dbEvent=deDelete;
		}
		database_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_insert)) {
		RefAST tmp108_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp108_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp108_AST);
		}
		match(SQL2RW_insert);
		if ( inputState->guessing==0 ) {
			tStruct.dbEvent=deInsert;
		}
		database_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_update) && (LA(2) == SQL2RW_on)) {
		RefAST tmp109_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp109_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp109_AST);
		}
		match(SQL2RW_update);
		if ( inputState->guessing==0 ) {
			tStruct.dbEvent=deUpdate;
		}
		database_event_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_update) && (LA(2) == SQL2RW_of)) {
		RefAST tmp110_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp110_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp110_AST);
		}
		match(SQL2RW_update);
		RefAST tmp111_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp111_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp111_AST);
		}
		match(SQL2RW_of);
		column_list(tStruct);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			tStruct.dbEvent=deUpdateOf;
		}
		database_event_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = database_event_AST;
}

void SqliteParser::for_stmt(
	CreateTriggerStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST for_stmt_AST = nullAST;
	
	RefAST tmp112_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp112_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp112_AST);
	}
	match(SQL2RW_for);
	RefAST tmp113_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp113_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp113_AST);
	}
	match(SQL2RW_each);
	RefAST tmp114_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp114_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp114_AST);
	}
	match(SQL2RW_row);
	if ( inputState->guessing==0 ) {
		tStruct.ftStatement=ftRow;
	}
	for_stmt_AST = currentAST.root;
	returnAST = for_stmt_AST;
}

string  SqliteParser::trigger_action() {
	string szAction;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trigger_action_AST = nullAST;
	RefToken  bw = nullToken;
	RefAST bw_AST = nullAST;
	RefToken  b = nullToken;
	RefAST b_AST = nullAST;
	RefToken  e = nullToken;
	RefAST e_AST = nullAST;
	
	string szWhen="";
	
	
	{
	if ((LA(1) == SQL2RW_when)) {
		bw = LT(1);
		if ( inputState->guessing == 0 ) {
			bw_AST = astFactory->create(bw);
			astFactory->addASTChild(currentAST, bw_AST);
		}
		match(SQL2RW_when);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			
				    if (iEnableEngine)
				    { 
						RefTokenWithIndex w1(bw), w2(LT(1));
			
						ostringstream osw;
						engine->originalToStream(osw, w1->getIndex(), w2->getIndex());
						szWhen=trim_left_copy(osw.str())+"\r\n";	   
					}
				
		}
	}
	else if ((LA(1) == SQL2RW_begin)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	b = LT(1);
	if ( inputState->guessing == 0 ) {
		b_AST = astFactory->create(b);
		astFactory->addASTChild(currentAST, b_AST);
	}
	match(SQL2RW_begin);
	{
	if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_replace || LA(1) == SQL2RW_select || LA(1) == SQL2RW_update)) {
		trigger_cmd_list();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_end)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	e = LT(1);
	if ( inputState->guessing == 0 ) {
		e_AST = astFactory->create(e);
		astFactory->addASTChild(currentAST, e_AST);
	}
	match(SQL2RW_end);
	if ( inputState->guessing==0 ) {
		
			    if (iEnableEngine)
			    {
					RefTokenWithIndex t1(b), t2(e);
		
					ostringstream os;
					engine->originalToStream(os, t1->getIndex(), t2->getIndex()+1);
					szAction=trim_left_copy(os.str());
					szAction=szWhen+szAction;
				}
			
	}
	trigger_action_AST = currentAST.root;
	returnAST = trigger_action_AST;
	return szAction;
}

string  SqliteParser::create_ifnot_index_stmt() {
	string sIndex;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST create_ifnot_index_stmt_AST = nullAST;
	RefToken  i = nullToken;
	RefAST i_AST = nullAST;
	
	CreateIndexStruct iStruct;
	sIndex="";
	
	
	RefAST tmp115_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp115_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp115_AST);
	}
	match(SQL2RW_create);
	{
	if ((LA(1) == SQL2RW_unique)) {
		RefAST tmp116_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp116_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp116_AST);
		}
		match(SQL2RW_unique);
	}
	else if ((LA(1) == SQL2RW_index)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	i = LT(1);
	if ( inputState->guessing == 0 ) {
		i_AST = astFactory->create(i);
		astFactory->addASTChild(currentAST, i_AST);
	}
	match(SQL2RW_index);
	if ( inputState->guessing==0 ) {
		
				RefTokenWithIndex i1(i);
				//Todo:fix memory leak
				engine->insertAfter(i1, " IF NOT EXISTS");
			
	}
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == SQL2RW_on)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp117_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp117_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp117_AST);
	}
	match(SQL2RW_on);
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp118_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp118_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp118_AST);
	}
	match(LP);
	column_name(iStruct);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp119_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp119_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp119_AST);
			}
			match(COMMA);
			column_name(iStruct);
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop174;
		}
		
	}
	_loop174:;
	} // ( ... )*
	RefAST tmp120_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp120_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp120_AST);
	}
	match(RP);
	{
	if ((LA(1) == SQL2RW_on)) {
		conflict_clause();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
			     ostringstream os; 
			     engine->toStream(os);
			     
			     sIndex=os.str();		     
			
	}
	create_ifnot_index_stmt_AST = currentAST.root;
	returnAST = create_ifnot_index_stmt_AST;
	return sIndex;
}

void SqliteParser::column_name(
	CreateIndexStruct& iStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_name_AST = nullAST;
	RefAST colName_AST = nullAST;
	
	string szCollate="";
	OrderType otOrder=otNone;
	
	
	nm();
	if (inputState->guessing==0) {
		colName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_collate)) {
		szCollate=collate();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_asc || LA(1) == SQL2RW_desc || LA(1) == RP || LA(1) == COMMA)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_asc || LA(1) == SQL2RW_desc)) {
		otOrder=sortorder();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == RP || LA(1) == COMMA)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
		ColumnNameStruct colStruct;
		colStruct.szColumn=colName_AST->getText();
		TrimId(colStruct.szColumn);
		colStruct.szCollate=szCollate;
		colStruct.otOrder=otOrder;
		iStruct.vColumns.push_back(colStruct);
		
	}
	column_name_AST = currentAST.root;
	returnAST = column_name_AST;
}

ConflictAlgorithm  SqliteParser::conflict_clause() {
	ConflictAlgorithm caConflict;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST conflict_clause_AST = nullAST;
	
	try {      // for error handling
		RefAST tmp121_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp121_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp121_AST);
		}
		match(SQL2RW_on);
		RefAST tmp122_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp122_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp122_AST);
		}
		match(SQL2RW_conflict);
		caConflict=conflict_algorithm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		conflict_clause_AST = currentAST.root;
	}
	catch (NoViableAltException ex) {
		if (inputState->guessing==0) {
			
			throw MismatchedTokenException(getTokenNames(), getNumTokens(), LT(1), bs_conflict, false, getFilename());
			
		} else {
			throw;
		}
	}
	returnAST = conflict_clause_AST;
	return caConflict;
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
	
	
	nm();
	if (inputState->guessing==0) {
		colName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((_tokenSet_13.member(LA(1)))) {
		column_type(col);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_14.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_15.member(LA(1)))) {
			column_constraint(col);
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop184;
		}
		
	}
	_loop184:;
	} // ( ... )*
	if ( inputState->guessing==0 ) {
		column_def_AST = RefAST(currentAST.root);
		
		col.szName=colName_AST->getText();
		TrimId(col.szName);
		tStruct.vColumns.push_back(col);
		column_def_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(COLUMN_DEF,"COLUMN_DEF"))->add(column_def_AST)));
		
		currentAST.root = column_def_AST;
		if ( column_def_AST!=nullAST &&
			column_def_AST->getFirstChild() != nullAST )
			  currentAST.child = column_def_AST->getFirstChild();
		else
			currentAST.child = column_def_AST;
		currentAST.advanceChildToEnd();
	}
	column_def_AST = currentAST.root;
	returnAST = column_def_AST;
}

void SqliteParser::tcons(
	CreateTableStruct& tStruct
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST tcons_AST = nullAST;
	RefAST csname_AST = nullAST;
	RefToken  l = nullToken;
	RefAST l_AST = nullAST;
	RefToken  r = nullToken;
	RefAST r_AST = nullAST;
	
	ConflictAlgorithm ca=caNone;
	Constraint cs;
	vector<string> vColumns;
	
	
	if ( inputState->guessing==0 ) {
		cs.szName="";
	}
	{
	if ((LA(1) == SQL2RW_constriant)) {
		RefAST tmp123_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp123_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp123_AST);
		}
		match(SQL2RW_constriant);
		{
		if ((_tokenSet_4.member(LA(1)))) {
			nm();
			if (inputState->guessing==0) {
				csname_AST = returnAST;
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				
				cs.szName=csname_AST->getText();
				TrimId(cs.szName);
				
			}
		}
		else if ((LA(1) == SQL2RW_check || LA(1) == SQL2RW_foreign || LA(1) == SQL2RW_primary || LA(1) == SQL2RW_unique)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
	}
	else if ((LA(1) == SQL2RW_check || LA(1) == SQL2RW_foreign || LA(1) == SQL2RW_primary || LA(1) == SQL2RW_unique)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	switch ( LA(1)) {
	case SQL2RW_primary:
	{
		RefAST tmp124_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp124_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp124_AST);
		}
		match(SQL2RW_primary);
		RefAST tmp125_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp125_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp125_AST);
		}
		match(SQL2RW_key);
		RefAST tmp126_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp126_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp126_AST);
		}
		match(LP);
		idxlist(cs.ColumnList);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == SQL2RW_autoincrement)) {
			RefAST tmp127_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp127_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp127_AST);
			}
			match(SQL2RW_autoincrement);
		}
		else if ((LA(1) == RP)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp128_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp128_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp128_AST);
		}
		match(RP);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == RP || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			
			cs.ctType=ctPrimaryKey;
			cs.caConflict=ca;
			tStruct.vConstraints.push_back(cs);          
			
		}
		break;
	}
	case SQL2RW_unique:
	{
		RefAST tmp129_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp129_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp129_AST);
		}
		match(SQL2RW_unique);
		RefAST tmp130_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp130_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp130_AST);
		}
		match(LP);
		idxlist(cs.ColumnList);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp131_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp131_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp131_AST);
		}
		match(RP);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == RP || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			
			cs.ctType=ctUnique;
			cs.caConflict=ca;    
			tStruct.vConstraints.push_back(cs);                    
			
		}
		break;
	}
	case SQL2RW_check:
	{
		RefAST tmp132_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp132_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp132_AST);
		}
		match(SQL2RW_check);
		l = LT(1);
		if ( inputState->guessing == 0 ) {
			l_AST = astFactory->create(l);
			astFactory->addASTChild(currentAST, l_AST);
		}
		match(LP);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		r = LT(1);
		if ( inputState->guessing == 0 ) {
			r_AST = astFactory->create(r);
			astFactory->addASTChild(currentAST, r_AST);
		}
		match(RP);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == RP || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			
			cs.ctType=ctCheck;
			cs.caConflict=ca;    
			if (iEnableEngine)
			{
						RefTokenWithIndex t1(l), t2(r);
							
						ostringstream os;
						engine->originalToStream(os, t1->getIndex()+1, t2->getIndex());	
						cs.szExpr=trim_left_copy(os.str());          
					  }
			tStruct.vConstraints.push_back(cs);   
			
		}
		break;
	}
	case SQL2RW_foreign:
	{
		RefAST tmp133_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp133_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp133_AST);
		}
		match(SQL2RW_foreign);
		RefAST tmp134_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp134_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp134_AST);
		}
		match(SQL2RW_key);
		RefAST tmp135_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp135_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp135_AST);
		}
		match(LP);
		idxlist(vColumns);
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp136_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp136_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp136_AST);
		}
		match(RP);
		RefAST tmp137_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp137_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp137_AST);
		}
		match(SQL2RW_references);
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == LP)) {
			idxlist_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_deferrable || LA(1) == SQL2RW_match || LA(1) == SQL2RW_not || LA(1) == SQL2RW_on || LA(1) == RP || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_match || LA(1) == SQL2RW_on)) {
			refargs();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_deferrable || LA(1) == SQL2RW_not || LA(1) == RP || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_deferrable || LA(1) == SQL2RW_not)) {
			defer_subclause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == RP || LA(1) == COMMA)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	}
	if ( inputState->guessing==0 ) {
		tcons_AST = RefAST(currentAST.root);
		
		tcons_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(TCONS_DEF,"TCONS_DEF"))->add(tcons_AST)));    
		
		currentAST.root = tcons_AST;
		if ( tcons_AST!=nullAST &&
			tcons_AST->getFirstChild() != nullAST )
			  currentAST.child = tcons_AST->getFirstChild();
		else
			currentAST.child = tcons_AST;
		currentAST.advanceChildToEnd();
	}
	tcons_AST = currentAST.root;
	returnAST = tcons_AST;
}

void SqliteParser::column_type(
	ColumnDef& col
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_type_AST = nullAST;
	RefAST typName_AST = nullAST;
	
	string szSize,szPrecision; 
	
	
	{
	type_name();
	if (inputState->guessing==0) {
		typName_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		col.szType=typName_AST->getText();
	}
	}
	{
	if ((LA(1) == LP)) {
		RefAST tmp138_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp138_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp138_AST);
		}
		match(LP);
		szSize=signed_num();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			col.nTypeSize=atoi(szSize.c_str());
		}
		{
		if ((LA(1) == COMMA)) {
			RefAST tmp139_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp139_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp139_AST);
			}
			match(COMMA);
			szPrecision=signed_num();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				col.nTypePrecision=atoi(szPrecision.c_str());
			}
		}
		else if ((LA(1) == RP)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp140_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp140_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp140_AST);
		}
		match(RP);
	}
	else if ((_tokenSet_14.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
		TrimId(col.szType);
		
	}
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
	
	ColumnConstraint cc;
	ConflictAlgorithm ca=caNone;
	cc.bAutoIncre=false;
	cc.order=otNone;
	cc.caConflict=ca;
	OrderType order=otNone;
	string szVal="";
	string szCollate="";
	
	
	{
	if ((LA(1) == SQL2RW_constriant)) {
		RefAST tmp141_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp141_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp141_AST);
		}
		match(SQL2RW_constriant);
		nm();
		if (inputState->guessing==0) {
			ccName_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			cc.szName=ccName_AST->getText();
		}
	}
	else if ((_tokenSet_16.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	switch ( LA(1)) {
	case SQL2RW_null:
	{
		RefAST tmp142_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp142_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp142_AST);
		}
		match(SQL2RW_null);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				cc.caConflict=ca;
			}
		}
		else if ((_tokenSet_17.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		break;
	}
	case SQL2RW_primary:
	{
		RefAST tmp143_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp143_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp143_AST);
		}
		match(SQL2RW_primary);
		RefAST tmp144_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp144_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp144_AST);
		}
		match(SQL2RW_key);
		{
		if ((LA(1) == SQL2RW_asc || LA(1) == SQL2RW_desc)) {
			order=sortorder();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				cc.order=order;
			}
		}
		else if ((_tokenSet_18.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				cc.caConflict=ca;
			}
		}
		else if ((_tokenSet_19.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_autoincrement)) {
			RefAST tmp145_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp145_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp145_AST);
			}
			match(SQL2RW_autoincrement);
			if ( inputState->guessing==0 ) {
				cc.bAutoIncre=true;
			}
		}
		else if ((_tokenSet_17.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			cc.ctType=ctPrimaryKey;
		}
		break;
	}
	case SQL2RW_unique:
	{
		RefAST tmp146_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp146_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp146_AST);
		}
		match(SQL2RW_unique);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				cc.caConflict=ca;
			}
		}
		else if ((_tokenSet_17.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			cc.ctType=ctUnique;
		}
		break;
	}
	case SQL2RW_check:
	{
		RefAST tmp147_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp147_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp147_AST);
		}
		match(SQL2RW_check);
		l = LT(1);
		if ( inputState->guessing == 0 ) {
			l_AST = astFactory->create(l);
			astFactory->addASTChild(currentAST, l_AST);
		}
		match(LP);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		r = LT(1);
		if ( inputState->guessing == 0 ) {
			r_AST = astFactory->create(r);
			astFactory->addASTChild(currentAST, r_AST);
		}
		match(RP);
		{
		if ((LA(1) == SQL2RW_on)) {
			ca=conflict_clause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				cc.caConflict=ca;
			}
		}
		else if ((_tokenSet_17.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			
			cc.ctType=ctCheck;
			if (iEnableEngine)
			{
			RefTokenWithIndex t1(l), t2(r);
					
				   ostringstream os;
				   engine->originalToStream(os, t1->getIndex()+1, t2->getIndex());
				   cc.szExpr=trim_left_copy(os.str());
				 }
			
		}
		break;
	}
	case SQL2RW_references:
	{
		RefAST tmp148_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp148_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp148_AST);
		}
		match(SQL2RW_references);
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == LP)) {
			idxlist_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_20.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_match || LA(1) == SQL2RW_on)) {
			refargs();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_17.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		if ( inputState->guessing==0 ) {
			cc.ctType=ctReference;
		}
		break;
	}
	case SQL2RW_default:
	{
		RefAST tmp149_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp149_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp149_AST);
		}
		match(SQL2RW_default);
		szVal=default_value();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			cc.ctType=ctDefault;cc.szValue=szVal;
		}
		break;
	}
	case SQL2RW_collate:
	{
		szCollate=collate();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			cc.ctType=ctCollate;cc.szCollateName=szCollate;
		}
		break;
	}
	default:
		bool synPredMatched193 = false;
		if (((LA(1) == SQL2RW_deferrable || LA(1) == SQL2RW_not) && (_tokenSet_21.member(LA(2))))) {
			int _m193 = mark();
			synPredMatched193 = true;
			inputState->guessing++;
			try {
				{
				defer_subclause();
				}
			}
			catch (RecognitionException& pe) {
				synPredMatched193 = false;
			}
			rewind(_m193);
			inputState->guessing--;
		}
		if ( synPredMatched193 ) {
			defer_subclause();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				cc.ctType=ctDefer;
			}
		}
		else if ((LA(1) == SQL2RW_not) && (LA(2) == SQL2RW_null)) {
			RefAST tmp150_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp150_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp150_AST);
			}
			match(SQL2RW_not);
			RefAST tmp151_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp151_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp151_AST);
			}
			match(SQL2RW_null);
			{
			if ((LA(1) == SQL2RW_on)) {
				ca=conflict_clause();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				if ( inputState->guessing==0 ) {
					cc.caConflict=ca;
				}
			}
			else if ((_tokenSet_17.member(LA(1)))) {
			}
			else {
				throw NoViableAltException(LT(1), getFilename());
			}
			
			}
			if ( inputState->guessing==0 ) {
				cc.ctType=ctNotNull;
			}
		}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	}
	if ( inputState->guessing==0 ) {
		
		if (cc.ctType!=ctDefer && cc.ctType!=ctReference)
		def.vConstraints.push_back(cc);
		
	}
	column_constraint_AST = currentAST.root;
	returnAST = column_constraint_AST;
}

void SqliteParser::type_name() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST type_name_AST = nullAST;
	
	{ // ( ... )+
	int _cnt345=0;
	for (;;) {
		if ((_tokenSet_13.member(LA(1)))) {
			ids();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			if ( _cnt345>=1 ) { goto _loop345; } else {throw NoViableAltException(LT(1), getFilename());}
		}
		
		_cnt345++;
	}
	_loop345:;
	}  // ( ... )+
	type_name_AST = currentAST.root;
	returnAST = type_name_AST;
}

string  SqliteParser::signed_num() {
	string szNum;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST signed_num_AST = nullAST;
	
	string s1;
	
	
	if ((LA(1) == INTEGER || LA(1) == FLOAT || LA(1) == PLUS)) {
		s1=plus_num();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szNum= s1;
		}
		signed_num_AST = currentAST.root;
	}
	else if ((LA(1) == MINUS)) {
		s1=minus_num();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szNum= s1;
		}
		signed_num_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = signed_num_AST;
	return szNum;
}

void SqliteParser::defer_subclause() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST defer_subclause_AST = nullAST;
	
	{
	if ((LA(1) == SQL2RW_not)) {
		RefAST tmp152_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp152_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp152_AST);
		}
		match(SQL2RW_not);
	}
	else if ((LA(1) == SQL2RW_deferrable)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp153_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp153_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp153_AST);
	}
	match(SQL2RW_deferrable);
	{
	if ((LA(1) == SQL2RW_initially)) {
		init_deferred_pred_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_17.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	defer_subclause_AST = currentAST.root;
	returnAST = defer_subclause_AST;
}

OrderType  SqliteParser::sortorder() {
	OrderType order;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sortorder_AST = nullAST;
	
	order=otNone;
	
	
	if ((LA(1) == SQL2RW_asc)) {
		RefAST tmp154_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp154_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp154_AST);
		}
		match(SQL2RW_asc);
		if ( inputState->guessing==0 ) {
			order= otAsc;
		}
		sortorder_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_desc)) {
		RefAST tmp155_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp155_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp155_AST);
		}
		match(SQL2RW_desc);
		if ( inputState->guessing==0 ) {
			order= otDesc;
		}
		sortorder_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sortorder_AST;
	return order;
}

void SqliteParser::idxlist_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST idxlist_opt_AST = nullAST;
	
	vector<string> vColumns;
	
	
	RefAST tmp156_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp156_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp156_AST);
	}
	match(LP);
	idxlist(vColumns);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp157_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp157_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp157_AST);
	}
	match(RP);
	idxlist_opt_AST = currentAST.root;
	returnAST = idxlist_opt_AST;
}

void SqliteParser::refargs() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST refargs_AST = nullAST;
	
	{ // ( ... )+
	int _cnt363=0;
	for (;;) {
		if ((LA(1) == SQL2RW_match || LA(1) == SQL2RW_on)) {
			refarg();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			if ( _cnt363>=1 ) { goto _loop363; } else {throw NoViableAltException(LT(1), getFilename());}
		}
		
		_cnt363++;
	}
	_loop363:;
	}  // ( ... )+
	refargs_AST = currentAST.root;
	returnAST = refargs_AST;
}

string  SqliteParser::default_value() {
	string szValue;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST default_value_AST = nullAST;
	RefToken  b = nullToken;
	RefAST b_AST = nullAST;
	RefToken  e = nullToken;
	RefAST e_AST = nullAST;
	
	string s1, s2="";
	
	
	if ((LA(1) == SQL2RW_null || LA(1) == INTEGER || LA(1) == FLOAT || LA(1) == STRING || LA(1) == MINUS || LA(1) == PLUS || LA(1) == BLOB)) {
		{
		if ((LA(1) == MINUS || LA(1) == PLUS)) {
			s1=sign();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_null || LA(1) == INTEGER || LA(1) == FLOAT || LA(1) == STRING || LA(1) == BLOB)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		s2=term();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szValue= s1+s2;
		}
		default_value_AST = currentAST.root;
	}
	else if ((_tokenSet_6.member(LA(1)))) {
		s2=id();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szValue= s2;
		}
		default_value_AST = currentAST.root;
	}
	else if ((LA(1) == LP)) {
		b = LT(1);
		if ( inputState->guessing == 0 ) {
			b_AST = astFactory->create(b);
			astFactory->addASTChild(currentAST, b_AST);
		}
		match(LP);
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		e = LT(1);
		if ( inputState->guessing == 0 ) {
			e_AST = astFactory->create(e);
			astFactory->addASTChild(currentAST, e_AST);
		}
		match(RP);
		if ( inputState->guessing==0 ) {
			
			if (iEnableEngine)
			{     
					  RefTokenWithIndex t1(b), t2(e);
						
					  ostringstream os;
					  engine->originalToStream(os, t1->getIndex(), t2->getIndex()+1);
					  szValue=trim_left_copy(os.str());	    
					}
			
		}
		default_value_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = default_value_AST;
	return szValue;
}

string  SqliteParser::collate() {
	string szCollate;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST collate_AST = nullAST;
	RefAST val_AST = nullAST;
	
	try {      // for error handling
		RefAST tmp158_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp158_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp158_AST);
		}
		match(SQL2RW_collate);
		ids();
		if (inputState->guessing==0) {
			val_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szCollate=val_AST->getText();
		}
		collate_AST = currentAST.root;
	}
	catch (NoViableAltException ex) {
		if (inputState->guessing==0) {
			
			throw MismatchedTokenException(imgTokenNames, 3, LT(1), 2, false, getFilename());
			
		} else {
			throw;
		}
	}
	returnAST = collate_AST;
	return szCollate;
}

string  SqliteParser::sign() {
	string szSign;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sign_AST = nullAST;
	
	if ((LA(1) == PLUS)) {
		RefAST tmp159_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp159_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp159_AST);
		}
		match(PLUS);
		if ( inputState->guessing==0 ) {
			szSign= "+";
		}
		sign_AST = currentAST.root;
	}
	else if ((LA(1) == MINUS)) {
		RefAST tmp160_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp160_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp160_AST);
		}
		match(MINUS);
		if ( inputState->guessing==0 ) {
			szSign= "-";
		}
		sign_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sign_AST;
	return szSign;
}

string  SqliteParser::term() {
	string szTerm;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST term_AST = nullAST;
	RefToken  s1 = nullToken;
	RefAST s1_AST = nullAST;
	RefToken  s2 = nullToken;
	RefAST s2_AST = nullAST;
	RefToken  s3 = nullToken;
	RefAST s3_AST = nullAST;
	RefToken  s4 = nullToken;
	RefAST s4_AST = nullAST;
	RefToken  s5 = nullToken;
	RefAST s5_AST = nullAST;
	
	switch ( LA(1)) {
	case INTEGER:
	{
		s1 = LT(1);
		if ( inputState->guessing == 0 ) {
			s1_AST = astFactory->create(s1);
			astFactory->addASTChild(currentAST, s1_AST);
		}
		match(INTEGER);
		if ( inputState->guessing==0 ) {
			szTerm= s1_AST->getText();
		}
		term_AST = currentAST.root;
		break;
	}
	case FLOAT:
	{
		s2 = LT(1);
		if ( inputState->guessing == 0 ) {
			s2_AST = astFactory->create(s2);
			astFactory->addASTChild(currentAST, s2_AST);
		}
		match(FLOAT);
		if ( inputState->guessing==0 ) {
			szTerm= s2_AST->getText();
		}
		term_AST = currentAST.root;
		break;
	}
	case BLOB:
	{
		s3 = LT(1);
		if ( inputState->guessing == 0 ) {
			s3_AST = astFactory->create(s3);
			astFactory->addASTChild(currentAST, s3_AST);
		}
		match(BLOB);
		if ( inputState->guessing==0 ) {
			szTerm= s3_AST->getText();
		}
		term_AST = currentAST.root;
		break;
	}
	case STRING:
	{
		s4 = LT(1);
		if ( inputState->guessing == 0 ) {
			s4_AST = astFactory->create(s4);
			astFactory->addASTChild(currentAST, s4_AST);
		}
		match(STRING);
		if ( inputState->guessing==0 ) {
			szTerm= s4_AST->getText();
		}
		term_AST = currentAST.root;
		break;
	}
	case SQL2RW_null:
	{
		s5 = LT(1);
		if ( inputState->guessing == 0 ) {
			s5_AST = astFactory->create(s5);
			astFactory->addASTChild(currentAST, s5_AST);
		}
		match(SQL2RW_null);
		if ( inputState->guessing==0 ) {
			szTerm= s5_AST->getText();
		}
		term_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = term_AST;
	return szTerm;
}

string  SqliteParser::id() {
	string szId;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST id_AST = nullAST;
	RefToken  s1 = nullToken;
	RefAST s1_AST = nullAST;
	RefAST s2_AST = nullAST;
	
	if ((LA(1) == ID)) {
		s1 = LT(1);
		if ( inputState->guessing == 0 ) {
			s1_AST = astFactory->create(s1);
			astFactory->addASTChild(currentAST, s1_AST);
		}
		match(ID);
		if ( inputState->guessing==0 ) {
			szId=s1_AST->getText(); TrimId(szId);
		}
		id_AST = currentAST.root;
	}
	else if ((_tokenSet_22.member(LA(1)))) {
		fallback();
		if (inputState->guessing==0) {
			s2_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szId=s2_AST->getText(); TrimId(szId);
		}
		id_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = id_AST;
	return szId;
}

void SqliteParser::idxlist(
	vector<string>& vColumns
) {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST idxlist_AST = nullAST;
	RefAST col1_AST = nullAST;
	RefAST col2_AST = nullAST;
	
	string szCol;
	
	
	nm();
	if (inputState->guessing==0) {
		col1_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		szCol=col1_AST->getText();
		TrimId(szCol);
		vColumns.push_back(szCol);
		
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp161_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp161_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp161_AST);
			}
			match(COMMA);
			nm();
			if (inputState->guessing==0) {
				col2_AST = returnAST;
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				
				szCol=col2_AST->getText();
				TrimId(szCol);
				vColumns.push_back(szCol);
				
			}
		}
		else {
			goto _loop263;
		}
		
	}
	_loop263:;
	} // ( ... )*
	idxlist_AST = currentAST.root;
	returnAST = idxlist_AST;
}

void SqliteParser::compound_expression() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST compound_expression_AST = nullAST;
	
	{
	if ((LA(1) == SQL2RW_not || LA(1) == MINUS || LA(1) == PLUS || LA(1) == BITNOT)) {
		unary_op();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_23.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	sub_expression();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if (((LA(1) == SQL2RW_is || LA(1) == SQL2RW_isnull || LA(1) == SQL2RW_not || LA(1) == SQL2RW_notnull) && (_tokenSet_24.member(LA(2))))&&(LA(1)==SQL2RW_isnull || LA(1)==SQL2RW_notnull || LA(1)==SQL2RW_is || (LA(1)==SQL2RW_not && LA(2)==SQL2RW_null))) {
		null_op();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_collate)) {
		collate();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if (((LA(1) == SQL2RW_in || LA(1) == SQL2RW_not) && (_tokenSet_25.member(LA(2))))&&(LA(1)==SQL2RW_in || (LA(1)==SQL2RW_not && LA(2)==SQL2RW_in))) {
		in_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_26.member(LA(1))) && (_tokenSet_27.member(LA(2)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	compound_expression_AST = currentAST.root;
	returnAST = compound_expression_AST;
}

void SqliteParser::binary_op() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST binary_op_AST = nullAST;
	
	switch ( LA(1)) {
	case LESS_THAN:
	{
		RefAST tmp162_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp162_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp162_AST);
		}
		match(LESS_THAN);
		binary_op_AST = currentAST.root;
		break;
	}
	case GT:
	{
		RefAST tmp163_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp163_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp163_AST);
		}
		match(GT);
		binary_op_AST = currentAST.root;
		break;
	}
	case GE:
	{
		RefAST tmp164_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp164_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp164_AST);
		}
		match(GE);
		binary_op_AST = currentAST.root;
		break;
	}
	case LE:
	{
		RefAST tmp165_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp165_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp165_AST);
		}
		match(LE);
		binary_op_AST = currentAST.root;
		break;
	}
	case EQ:
	{
		RefAST tmp166_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp166_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp166_AST);
		}
		match(EQ);
		binary_op_AST = currentAST.root;
		break;
	}
	case NOT_EQ:
	{
		RefAST tmp167_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp167_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp167_AST);
		}
		match(NOT_EQ);
		binary_op_AST = currentAST.root;
		break;
	}
	case BITAND:
	{
		RefAST tmp168_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp168_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp168_AST);
		}
		match(BITAND);
		binary_op_AST = currentAST.root;
		break;
	}
	case BITOR:
	{
		RefAST tmp169_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp169_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp169_AST);
		}
		match(BITOR);
		binary_op_AST = currentAST.root;
		break;
	}
	case LSHIFT:
	{
		RefAST tmp170_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp170_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp170_AST);
		}
		match(LSHIFT);
		binary_op_AST = currentAST.root;
		break;
	}
	case RSHIFT:
	{
		RefAST tmp171_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp171_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp171_AST);
		}
		match(RSHIFT);
		binary_op_AST = currentAST.root;
		break;
	}
	case PLUS:
	{
		RefAST tmp172_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp172_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp172_AST);
		}
		match(PLUS);
		binary_op_AST = currentAST.root;
		break;
	}
	case MINUS:
	{
		RefAST tmp173_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp173_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp173_AST);
		}
		match(MINUS);
		binary_op_AST = currentAST.root;
		break;
	}
	case STAR:
	{
		RefAST tmp174_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp174_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp174_AST);
		}
		match(STAR);
		binary_op_AST = currentAST.root;
		break;
	}
	case SLASH:
	{
		RefAST tmp175_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp175_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp175_AST);
		}
		match(SLASH);
		binary_op_AST = currentAST.root;
		break;
	}
	case REM:
	{
		RefAST tmp176_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp176_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp176_AST);
		}
		match(REM);
		binary_op_AST = currentAST.root;
		break;
	}
	case CONCAT:
	{
		RefAST tmp177_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp177_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp177_AST);
		}
		match(CONCAT);
		binary_op_AST = currentAST.root;
		break;
	}
	case SQL2RW_and:
	{
		RefAST tmp178_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp178_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp178_AST);
		}
		match(SQL2RW_and);
		binary_op_AST = currentAST.root;
		break;
	}
	case SQL2RW_or:
	{
		RefAST tmp179_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp179_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp179_AST);
		}
		match(SQL2RW_or);
		binary_op_AST = currentAST.root;
		break;
	}
	case SQL2RW_escape:
	{
		RefAST tmp180_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp180_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp180_AST);
		}
		match(SQL2RW_escape);
		binary_op_AST = currentAST.root;
		break;
	}
	default:
		bool synPredMatched253 = false;
		if (((LA(1) == SQL2RW_glob || LA(1) == SQL2RW_like || LA(1) == SQL2RW_match || LA(1) == SQL2RW_not || LA(1) == SQL2RW_regexp) && (_tokenSet_10.member(LA(2))))) {
			int _m253 = mark();
			synPredMatched253 = true;
			inputState->guessing++;
			try {
				{
				likeop();
				}
			}
			catch (RecognitionException& pe) {
				synPredMatched253 = false;
			}
			rewind(_m253);
			inputState->guessing--;
		}
		if ( synPredMatched253 ) {
			likeop();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			binary_op_AST = currentAST.root;
		}
		else {
			bool synPredMatched255 = false;
			if (((LA(1) == SQL2RW_between || LA(1) == SQL2RW_not) && (_tokenSet_12.member(LA(2))))) {
				int _m255 = mark();
				synPredMatched255 = true;
				inputState->guessing++;
				try {
					{
					between_op();
					}
				}
				catch (RecognitionException& pe) {
					synPredMatched255 = false;
				}
				rewind(_m255);
				inputState->guessing--;
			}
			if ( synPredMatched255 ) {
				between_op();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				binary_op_AST = currentAST.root;
			}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	}}
	returnAST = binary_op_AST;
}

void SqliteParser::unary_op() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST unary_op_AST = nullAST;
	
	switch ( LA(1)) {
	case PLUS:
	{
		RefAST tmp181_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp181_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp181_AST);
		}
		match(PLUS);
		unary_op_AST = currentAST.root;
		break;
	}
	case MINUS:
	{
		RefAST tmp182_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp182_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp182_AST);
		}
		match(MINUS);
		unary_op_AST = currentAST.root;
		break;
	}
	case SQL2RW_not:
	{
		RefAST tmp183_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp183_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp183_AST);
		}
		match(SQL2RW_not);
		unary_op_AST = currentAST.root;
		break;
	}
	case BITNOT:
	{
		RefAST tmp184_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp184_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp184_AST);
		}
		match(BITNOT);
		unary_op_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = unary_op_AST;
}

void SqliteParser::sub_expression() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sub_expression_AST = nullAST;
	
	bool synPredMatched224 = false;
	if (((LA(1) == SQL2RW_cast) && (LA(2) == LP))) {
		int _m224 = mark();
		synPredMatched224 = true;
		inputState->guessing++;
		try {
			{
			cast_function();
			}
		}
		catch (RecognitionException& pe) {
			synPredMatched224 = false;
		}
		rewind(_m224);
		inputState->guessing--;
	}
	if ( synPredMatched224 ) {
		cast_function();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		sub_expression_AST = currentAST.root;
	}
	else {
		bool synPredMatched226 = false;
		if (((LA(1) == SQL2RW_raise) && (LA(2) == LP))) {
			int _m226 = mark();
			synPredMatched226 = true;
			inputState->guessing++;
			try {
				{
				match(SQL2RW_raise);
				match(LP);
				}
			}
			catch (RecognitionException& pe) {
				synPredMatched226 = false;
			}
			rewind(_m226);
			inputState->guessing--;
		}
		if ( synPredMatched226 ) {
			RefAST tmp185_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp185_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp185_AST);
			}
			match(SQL2RW_raise);
			RefAST tmp186_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp186_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp186_AST);
			}
			match(LP);
			{
			if ((LA(1) == SQL2RW_ignore)) {
				RefAST tmp187_AST = nullAST;
				if ( inputState->guessing == 0 ) {
					tmp187_AST = astFactory->create(LT(1));
					astFactory->addASTChild(currentAST, tmp187_AST);
				}
				match(SQL2RW_ignore);
			}
			else if ((LA(1) == SQL2RW_abort || LA(1) == SQL2RW_fail || LA(1) == SQL2RW_rollback)) {
				raisetype();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				RefAST tmp188_AST = nullAST;
				if ( inputState->guessing == 0 ) {
					tmp188_AST = astFactory->create(LT(1));
					astFactory->addASTChild(currentAST, tmp188_AST);
				}
				match(COMMA);
				nm();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
			}
			else {
				throw NoViableAltException(LT(1), getFilename());
			}
			
			}
			RefAST tmp189_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp189_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp189_AST);
			}
			match(RP);
			sub_expression_AST = currentAST.root;
		}
		else {
			bool synPredMatched229 = false;
			if (((_tokenSet_6.member(LA(1))) && (LA(2) == LP))) {
				int _m229 = mark();
				synPredMatched229 = true;
				inputState->guessing++;
				try {
					{
					function();
					}
				}
				catch (RecognitionException& pe) {
					synPredMatched229 = false;
				}
				rewind(_m229);
				inputState->guessing--;
			}
			if ( synPredMatched229 ) {
				function();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				sub_expression_AST = currentAST.root;
			}
			else if ((_tokenSet_6.member(LA(1))) && (_tokenSet_28.member(LA(2)))) {
				id();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				if ( inputState->guessing==0 ) {
					sub_expression_AST = RefAST(currentAST.root);
					sub_expression_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(IDEXP_DEF,"IDEXP_DEF"))->add(sub_expression_AST)));
					currentAST.root = sub_expression_AST;
					if ( sub_expression_AST!=nullAST &&
						sub_expression_AST->getFirstChild() != nullAST )
						  currentAST.child = sub_expression_AST->getFirstChild();
					else
						currentAST.child = sub_expression_AST;
					currentAST.advanceChildToEnd();
				}
				sub_expression_AST = currentAST.root;
			}
			else if ((LA(1) == SQL2RW_null || LA(1) == INTEGER || LA(1) == FLOAT || LA(1) == STRING || LA(1) == BLOB) && (_tokenSet_28.member(LA(2)))) {
				term();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				sub_expression_AST = currentAST.root;
			}
			else if ((LA(1) == VARIABLE)) {
				RefAST tmp190_AST = nullAST;
				if ( inputState->guessing == 0 ) {
					tmp190_AST = astFactory->create(LT(1));
					astFactory->addASTChild(currentAST, tmp190_AST);
				}
				match(VARIABLE);
				sub_expression_AST = currentAST.root;
			}
			else if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
				nm();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				RefAST tmp191_AST = nullAST;
				if ( inputState->guessing == 0 ) {
					tmp191_AST = astFactory->create(LT(1));
					astFactory->addASTChild(currentAST, tmp191_AST);
				}
				match(DOT);
				nm();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				{
				if ((LA(1) == DOT)) {
					RefAST tmp192_AST = nullAST;
					if ( inputState->guessing == 0 ) {
						tmp192_AST = astFactory->create(LT(1));
						astFactory->addASTChild(currentAST, tmp192_AST);
					}
					match(DOT);
					nm();
					if (inputState->guessing==0) {
						astFactory->addASTChild( currentAST, returnAST );
					}
				}
				else if ((_tokenSet_28.member(LA(1)))) {
				}
				else {
					throw NoViableAltException(LT(1), getFilename());
				}
				
				}
				if ( inputState->guessing==0 ) {
					sub_expression_AST = RefAST(currentAST.root);
					sub_expression_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(DOTEXP_DEF,"DOTEXP_DEF"))->add(sub_expression_AST)));
					currentAST.root = sub_expression_AST;
					if ( sub_expression_AST!=nullAST &&
						sub_expression_AST->getFirstChild() != nullAST )
						  currentAST.child = sub_expression_AST->getFirstChild();
					else
						currentAST.child = sub_expression_AST;
					currentAST.advanceChildToEnd();
				}
				sub_expression_AST = currentAST.root;
			}
			else if ((LA(1) == SQL2RW_exists || LA(1) == LP)) {
				sub_select();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				sub_expression_AST = currentAST.root;
			}
			else if ((LA(1) == SQL2RW_case)) {
				case_function();
				if (inputState->guessing==0) {
					astFactory->addASTChild( currentAST, returnAST );
				}
				sub_expression_AST = currentAST.root;
			}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	}}
	returnAST = sub_expression_AST;
}

void SqliteParser::null_op() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST null_op_AST = nullAST;
	
	{
	switch ( LA(1)) {
	case SQL2RW_is:
	{
		RefAST tmp193_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp193_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp193_AST);
		}
		match(SQL2RW_is);
		{
		if ((LA(1) == SQL2RW_not)) {
			RefAST tmp194_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp194_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp194_AST);
			}
			match(SQL2RW_not);
		}
		else if ((LA(1) == SQL2RW_null)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp195_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp195_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp195_AST);
		}
		match(SQL2RW_null);
		break;
	}
	case SQL2RW_not:
	{
		RefAST tmp196_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp196_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp196_AST);
		}
		match(SQL2RW_not);
		RefAST tmp197_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp197_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp197_AST);
		}
		match(SQL2RW_null);
		break;
	}
	case SQL2RW_isnull:
	{
		RefAST tmp198_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp198_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp198_AST);
		}
		match(SQL2RW_isnull);
		break;
	}
	case SQL2RW_notnull:
	{
		RefAST tmp199_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp199_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp199_AST);
		}
		match(SQL2RW_notnull);
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	}
	if ( inputState->guessing==0 ) {
		null_op_AST = RefAST(currentAST.root);
		null_op_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(NULLOP_DEF,"NULLOP_DEF"))->add(null_op_AST)));
		currentAST.root = null_op_AST;
		if ( null_op_AST!=nullAST &&
			null_op_AST->getFirstChild() != nullAST )
			  currentAST.child = null_op_AST->getFirstChild();
		else
			currentAST.child = null_op_AST;
		currentAST.advanceChildToEnd();
	}
	null_op_AST = currentAST.root;
	returnAST = null_op_AST;
}

void SqliteParser::in_stmt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST in_stmt_AST = nullAST;
	
	{
	bool synPredMatched234 = false;
	if (((LA(1) == SQL2RW_in || LA(1) == SQL2RW_not) && (LA(2) == SQL2RW_in || LA(2) == LP))) {
		int _m234 = mark();
		synPredMatched234 = true;
		inputState->guessing++;
		try {
			{
			in_op();
			match(LP);
			}
		}
		catch (RecognitionException& pe) {
			synPredMatched234 = false;
		}
		rewind(_m234);
		inputState->guessing--;
	}
	if ( synPredMatched234 ) {
		in_op();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp200_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp200_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp200_AST);
		}
		match(LP);
		{
		if ((LA(1) == SQL2RW_select)) {
			select_stmt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_10.member(LA(1)))) {
			exprlist();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp201_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp201_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp201_AST);
		}
		match(RP);
	}
	else if ((LA(1) == SQL2RW_in || LA(1) == SQL2RW_not) && (_tokenSet_29.member(LA(2)))) {
		in_op();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == DOT)) {
			RefAST tmp202_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp202_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp202_AST);
			}
			match(DOT);
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_26.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		in_stmt_AST = RefAST(currentAST.root);
		in_stmt_AST=RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(IN_DEF,"IN_DEF"))->add(in_stmt_AST)));
		currentAST.root = in_stmt_AST;
		if ( in_stmt_AST!=nullAST &&
			in_stmt_AST->getFirstChild() != nullAST )
			  currentAST.child = in_stmt_AST->getFirstChild();
		else
			currentAST.child = in_stmt_AST;
		currentAST.advanceChildToEnd();
	}
	in_stmt_AST = currentAST.root;
	returnAST = in_stmt_AST;
}

void SqliteParser::cast_function() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST cast_function_AST = nullAST;
	
	RefAST tmp203_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp203_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp203_AST);
	}
	match(SQL2RW_cast);
	RefAST tmp204_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp204_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp204_AST);
	}
	match(LP);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp205_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp205_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp205_AST);
	}
	match(SQL2RW_as);
	typetoken();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp206_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp206_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp206_AST);
	}
	match(RP);
	if ( inputState->guessing==0 ) {
		cast_function_AST = RefAST(currentAST.root);
		cast_function_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(CAST_DEF,"CAST_DEF"))->add(cast_function_AST)));
		currentAST.root = cast_function_AST;
		if ( cast_function_AST!=nullAST &&
			cast_function_AST->getFirstChild() != nullAST )
			  currentAST.child = cast_function_AST->getFirstChild();
		else
			currentAST.child = cast_function_AST;
		currentAST.advanceChildToEnd();
	}
	cast_function_AST = currentAST.root;
	returnAST = cast_function_AST;
}

void SqliteParser::raisetype() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST raisetype_AST = nullAST;
	
	if ((LA(1) == SQL2RW_rollback)) {
		RefAST tmp207_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp207_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp207_AST);
		}
		match(SQL2RW_rollback);
		raisetype_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_abort)) {
		RefAST tmp208_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp208_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp208_AST);
		}
		match(SQL2RW_abort);
		raisetype_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_fail)) {
		RefAST tmp209_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp209_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp209_AST);
		}
		match(SQL2RW_fail);
		raisetype_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = raisetype_AST;
}

void SqliteParser::function() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST function_AST = nullAST;
	
	id();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp210_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp210_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp210_AST);
	}
	match(LP);
	{
	if ((LA(1) == SQL2RW_all || LA(1) == SQL2RW_distinct)) {
		distinct();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_30.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((_tokenSet_10.member(LA(1)))) {
		exprlist();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == STAR)) {
		RefAST tmp211_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp211_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp211_AST);
		}
		match(STAR);
	}
	else if ((LA(1) == RP)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp212_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp212_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp212_AST);
	}
	match(RP);
	if ( inputState->guessing==0 ) {
		function_AST = RefAST(currentAST.root);
		function_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(FUNC_DEF,"FUNC_DEF"))->add(function_AST)));
		currentAST.root = function_AST;
		if ( function_AST!=nullAST &&
			function_AST->getFirstChild() != nullAST )
			  currentAST.child = function_AST->getFirstChild();
		else
			currentAST.child = function_AST;
		currentAST.advanceChildToEnd();
	}
	function_AST = currentAST.root;
	returnAST = function_AST;
}

void SqliteParser::sub_select() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sub_select_AST = nullAST;
	
	if ((LA(1) == LP)) {
		RefAST tmp213_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp213_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp213_AST);
		}
		match(LP);
		{
		if ((LA(1) == SQL2RW_select)) {
			select_stmt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_10.member(LA(1)))) {
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp214_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp214_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp214_AST);
		}
		match(RP);
		sub_select_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_exists)) {
		RefAST tmp215_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp215_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp215_AST);
		}
		match(SQL2RW_exists);
		RefAST tmp216_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp216_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp216_AST);
		}
		match(LP);
		{
		select_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		}
		RefAST tmp217_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp217_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp217_AST);
		}
		match(RP);
		sub_select_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sub_select_AST;
}

void SqliteParser::case_function() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST case_function_AST = nullAST;
	
	RefAST tmp218_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp218_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp218_AST);
	}
	match(SQL2RW_case);
	{
	if ((_tokenSet_10.member(LA(1)))) {
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_when)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	case_exprlist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_else)) {
		case_else();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_end)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	RefAST tmp219_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp219_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp219_AST);
	}
	match(SQL2RW_end);
	case_function_AST = currentAST.root;
	returnAST = case_function_AST;
}

void SqliteParser::in_op() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST in_op_AST = nullAST;
	
	if ((LA(1) == SQL2RW_in)) {
		RefAST tmp220_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp220_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp220_AST);
		}
		match(SQL2RW_in);
		in_op_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_not)) {
		RefAST tmp221_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp221_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp221_AST);
		}
		match(SQL2RW_not);
		RefAST tmp222_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp222_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp222_AST);
		}
		match(SQL2RW_in);
		in_op_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = in_op_AST;
}

void SqliteParser::exprlist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST exprlist_AST = nullAST;
	
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp223_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp223_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp223_AST);
			}
			match(COMMA);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop258;
		}
		
	}
	_loop258:;
	} // ( ... )*
	exprlist_AST = currentAST.root;
	returnAST = exprlist_AST;
}

void SqliteParser::distinct() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST distinct_AST = nullAST;
	
	if ((LA(1) == SQL2RW_distinct)) {
		RefAST tmp224_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp224_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp224_AST);
		}
		match(SQL2RW_distinct);
		distinct_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_all)) {
		RefAST tmp225_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp225_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp225_AST);
		}
		match(SQL2RW_all);
		distinct_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = distinct_AST;
}

void SqliteParser::typetoken() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST typetoken_AST = nullAST;
	
	type_name();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == LP)) {
		RefAST tmp226_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp226_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp226_AST);
		}
		match(LP);
		signed_num();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == COMMA)) {
			RefAST tmp227_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp227_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp227_AST);
			}
			match(COMMA);
			signed_num();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == RP)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp228_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp228_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp228_AST);
		}
		match(RP);
	}
	else if ((_tokenSet_31.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	typetoken_AST = currentAST.root;
	returnAST = typetoken_AST;
}

void SqliteParser::case_exprlist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST case_exprlist_AST = nullAST;
	
	{ // ( ... )+
	int _cnt373=0;
	for (;;) {
		if ((LA(1) == SQL2RW_when)) {
			RefAST tmp229_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp229_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp229_AST);
			}
			match(SQL2RW_when);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp230_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp230_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp230_AST);
			}
			match(SQL2RW_then);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			if ( _cnt373>=1 ) { goto _loop373; } else {throw NoViableAltException(LT(1), getFilename());}
		}
		
		_cnt373++;
	}
	_loop373:;
	}  // ( ... )+
	case_exprlist_AST = currentAST.root;
	returnAST = case_exprlist_AST;
}

void SqliteParser::case_else() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST case_else_AST = nullAST;
	
	RefAST tmp231_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp231_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp231_AST);
	}
	match(SQL2RW_else);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	case_else_AST = currentAST.root;
	returnAST = case_else_AST;
}

void SqliteParser::likeop() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST likeop_AST = nullAST;
	
	{
	if ((LA(1) == SQL2RW_not)) {
		RefAST tmp232_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp232_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp232_AST);
		}
		match(SQL2RW_not);
	}
	else if ((LA(1) == SQL2RW_glob || LA(1) == SQL2RW_like || LA(1) == SQL2RW_match || LA(1) == SQL2RW_regexp)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_glob || LA(1) == SQL2RW_like || LA(1) == SQL2RW_regexp)) {
		like_kw();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == SQL2RW_match)) {
		RefAST tmp233_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp233_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp233_AST);
		}
		match(SQL2RW_match);
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	likeop_AST = currentAST.root;
	returnAST = likeop_AST;
}

void SqliteParser::between_op() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST between_op_AST = nullAST;
	
	if ((LA(1) == SQL2RW_between)) {
		RefAST tmp234_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp234_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp234_AST);
		}
		match(SQL2RW_between);
		between_op_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_not)) {
		RefAST tmp235_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp235_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp235_AST);
		}
		match(SQL2RW_not);
		RefAST tmp236_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp236_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp236_AST);
		}
		match(SQL2RW_between);
		between_op_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = between_op_AST;
}

ConflictAlgorithm  SqliteParser::conflict_algorithm() {
	ConflictAlgorithm caConflict;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST conflict_algorithm_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_rollback:
	{
		RefAST tmp237_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp237_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp237_AST);
		}
		match(SQL2RW_rollback);
		if ( inputState->guessing==0 ) {
			caConflict= caRollback;
		}
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_abort:
	{
		RefAST tmp238_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp238_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp238_AST);
		}
		match(SQL2RW_abort);
		if ( inputState->guessing==0 ) {
			caConflict= caAbort;
		}
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_fail:
	{
		RefAST tmp239_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp239_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp239_AST);
		}
		match(SQL2RW_fail);
		if ( inputState->guessing==0 ) {
			caConflict= caFail;
		}
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_ignore:
	{
		RefAST tmp240_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp240_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp240_AST);
		}
		match(SQL2RW_ignore);
		if ( inputState->guessing==0 ) {
			caConflict= caIgnore;
		}
		conflict_algorithm_AST = currentAST.root;
		break;
	}
	case SQL2RW_replace:
	{
		RefAST tmp241_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp241_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp241_AST);
		}
		match(SQL2RW_replace);
		if ( inputState->guessing==0 ) {
			caConflict= caReplace;
		}
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

void SqliteParser::trigger_cmd_list() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trigger_cmd_list_AST = nullAST;
	
	{ // ( ... )+
	int _cnt284=0;
	for (;;) {
		if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_replace || LA(1) == SQL2RW_select || LA(1) == SQL2RW_update)) {
			trigger_cmd();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp242_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp242_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp242_AST);
			}
			match(SEMI);
		}
		else {
			if ( _cnt284>=1 ) { goto _loop284; } else {throw NoViableAltException(LT(1), getFilename());}
		}
		
		_cnt284++;
	}
	_loop284:;
	}  // ( ... )+
	trigger_cmd_list_AST = currentAST.root;
	returnAST = trigger_cmd_list_AST;
}

void SqliteParser::trigger_action_check() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trigger_action_check_AST = nullAST;
	
	SyntaxCheckStruct st;
	m_tmpstate=ss_Unknown;
	
	
	try {      // for error handling
		{
		if ((LA(1) == SQL2RW_when)) {
			RefAST tmp243_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp243_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp243_AST);
			}
			match(SQL2RW_when);
			expr();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_begin)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp244_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp244_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp244_AST);
		}
		match(SQL2RW_begin);
		{
		if ((LA(1) == SQL2RW_delete || LA(1) == SQL2RW_insert || LA(1) == SQL2RW_replace || LA(1) == SQL2RW_select || LA(1) == SQL2RW_update)) {
			trigger_cmd_list();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_end)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		RefAST tmp245_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp245_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp245_AST);
		}
		match(SQL2RW_end);
		trigger_action_check_AST = currentAST.root;
	}
	catch ( NoViableAltException& e ) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+e.token->getText().length();
			
					if (st.iEndCol>st.iBeginCol)
						m_vHints.push_back(st);
					
					//if (input pos==error pos)
					if (iRow==-1 && iColumn==-1 && e.token->getType()==Token::EOF_TYPE)
					{
					  m_sqlstate=m_tmpstate;		    		
					}
					else if (st.iRow==iRow && st.iBeginCol<=iColumn && st.iEndCol>=iColumn)
					{
					  m_sqlstate=m_tmpstate;		    
					}
			
			
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << e.token->getText().length() << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	catch (MismatchedTokenException& e) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+e.token->getText().length();
			
					if (st.iEndCol>st.iBeginCol)
						m_vHints.push_back(st);
					
					//if (input pos==error pos)
					if (iRow==-1 && iColumn==-1 && e.token->getType()==Token::EOF_TYPE)
					{
					  m_sqlstate=m_tmpstate;		    		
					}
					else if (st.iRow==iRow && st.iBeginCol<=iColumn && st.iEndCol>=iColumn)
					{
					  m_sqlstate=m_tmpstate;		    
					}
			
					
					//the syntax error was occured at the input position
			
					//if prefix = "", look ahead
					if (prefix=="")
					{
					    
					}
					
					if (iRow==st.iRow && iColumn>=st.iBeginCol && iColumn<=st.iEndCol)
					{
						if (e.mismatchType==MismatchedTokenException::SET)
						{
							vector<unsigned int> elems = e.set.toArray();
							for ( unsigned int i = 0; i < elems.size(); i++ )
						    {
							  m_vAutocomplete.push_back(tokenNames[elems[i]]);
							}
						}
						else if (e.mismatchType==MismatchedTokenException::TOKEN)
						{
					       //does not process <expression>
						   if (e.expecting>=30)
							  m_vAutocomplete.push_back(tokenNames[e.expecting]);
						}		    
					}
			
			
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << e.token->getText().length() << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery		
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	catch (SemanticException& e) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+1;
			
					m_vHints.push_back(st);
					
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << 1 << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery		
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	catch (RecognitionException& e) {
		if (inputState->guessing==0) {
			
					st.szHint=e.getMessage();
					st.iRow=e.getLine();
					st.iBeginCol=e.getColumn();
					st.iEndCol=e.getColumn()+1;
			
					m_vHints.push_back(st);
					
					//cout<< "line:" << st.iRow << "column" << st.iBeginCol << "length" << 1 << endl;
					//cout<< e.getMessage()<< endl;
					//Error Recovery
					while (LA(1) != Token.EOF_TYPE && LA(1)!=SEMI ) {
					  consume();
					}
			//		if (LA(1)==SEMI)
			//		  consume();		
				
		} else {
			throw;
		}
	}
	returnAST = trigger_action_check_AST;
}

void SqliteParser::trigger_cmd() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trigger_cmd_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_update:
	{
		RefAST tmp246_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp246_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp246_AST);
		}
		match(SQL2RW_update);
		{
		if ((LA(1) == SQL2RW_or)) {
			orconf();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_4.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		simple_table_name();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp247_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp247_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp247_AST);
		}
		match(SQL2RW_set);
		setlist();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == SQL2RW_where)) {
			where_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		trigger_cmd_AST = currentAST.root;
		break;
	}
	case SQL2RW_insert:
	case SQL2RW_replace:
	{
		insert_cmd();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp248_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp248_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp248_AST);
		}
		match(SQL2RW_into);
		simple_table_name();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == LP)) {
			inscollist_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SQL2RW_select || LA(1) == SQL2RW_values)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_values)) {
			RefAST tmp249_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp249_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp249_AST);
			}
			match(SQL2RW_values);
			RefAST tmp250_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp250_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp250_AST);
			}
			match(LP);
			itemlist();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp251_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp251_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp251_AST);
			}
			match(RP);
		}
		else if ((LA(1) == SQL2RW_select)) {
			select_stmt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		trigger_cmd_AST = currentAST.root;
		break;
	}
	case SQL2RW_delete:
	{
		RefAST tmp252_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp252_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp252_AST);
		}
		match(SQL2RW_delete);
		RefAST tmp253_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp253_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp253_AST);
		}
		match(SQL2RW_from);
		simple_table_name();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((LA(1) == SQL2RW_where)) {
			where_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((LA(1) == SEMI)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		trigger_cmd_AST = currentAST.root;
		break;
	}
	case SQL2RW_select:
	{
		select_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		trigger_cmd_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = trigger_cmd_AST;
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
	
	
	nm();
	if (inputState->guessing==0) {
		col1_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		szCol=col1_AST->getText();
		TrimId(szCol);
		tStruct.vColumns.push_back(szCol);
		
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp254_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp254_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp254_AST);
			}
			match(COMMA);
			nm();
			if (inputState->guessing==0) {
				col2_AST = returnAST;
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				
				szCol=col2_AST->getText();
				TrimId(szCol);
				tStruct.vColumns.push_back(szCol);
				
			}
		}
		else {
			goto _loop295;
		}
		
	}
	_loop295:;
	} // ( ... )*
	column_list_AST = currentAST.root;
	returnAST = column_list_AST;
}

void SqliteParser::join_kw() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST join_kw_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_right:
	{
		RefAST tmp255_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp255_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp255_AST);
		}
		match(SQL2RW_right);
		join_kw_AST = currentAST.root;
		break;
	}
	case SQL2RW_left:
	{
		RefAST tmp256_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp256_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp256_AST);
		}
		match(SQL2RW_left);
		join_kw_AST = currentAST.root;
		break;
	}
	case SQL2RW_cross:
	{
		RefAST tmp257_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp257_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp257_AST);
		}
		match(SQL2RW_cross);
		join_kw_AST = currentAST.root;
		break;
	}
	case SQL2RW_full:
	{
		RefAST tmp258_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp258_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp258_AST);
		}
		match(SQL2RW_full);
		join_kw_AST = currentAST.root;
		break;
	}
	case SQL2RW_inner:
	{
		RefAST tmp259_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp259_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp259_AST);
		}
		match(SQL2RW_inner);
		join_kw_AST = currentAST.root;
		break;
	}
	case SQL2RW_natural:
	{
		RefAST tmp260_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp260_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp260_AST);
		}
		match(SQL2RW_natural);
		join_kw_AST = currentAST.root;
		break;
	}
	case SQL2RW_outer:
	{
		RefAST tmp261_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp261_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp261_AST);
		}
		match(SQL2RW_outer);
		join_kw_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = join_kw_AST;
}

void SqliteParser::full_name() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST full_name_AST = nullAST;
	
	{
	if ((_tokenSet_4.member(LA(1))) && (LA(2) == DOT)) {
		dbnm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_4.member(LA(1))) && (LA(2) == Token::EOF_TYPE || LA(2) == LP || LA(2) == SEMI || LA(2) == EQ)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	full_name_AST = currentAST.root;
	returnAST = full_name_AST;
}

void SqliteParser::nmnum() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST nmnum_AST = nullAST;
	
	switch ( LA(1)) {
	case INTEGER:
	case FLOAT:
	case PLUS:
	{
		plus_num();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		nmnum_AST = currentAST.root;
		break;
	}
	case SQL2RW_abort:
	case SQL2RW_after:
	case SQL2RW_analyze:
	case SQL2RW_asc:
	case SQL2RW_attach:
	case SQL2RW_before:
	case SQL2RW_begin:
	case SQL2RW_by:
	case SQL2RW_cascade:
	case SQL2RW_cast:
	case SQL2RW_column:
	case SQL2RW_conflict:
	case SQL2RW_cross:
	case SQL2RW_currentdate:
	case SQL2RW_currenttime:
	case SQL2RW_currenttimestamp:
	case SQL2RW_database:
	case SQL2RW_deferred:
	case SQL2RW_desc:
	case SQL2RW_detach:
	case SQL2RW_end:
	case SQL2RW_each:
	case SQL2RW_exclusive:
	case SQL2RW_explain:
	case SQL2RW_fail:
	case SQL2RW_for:
	case SQL2RW_full:
	case SQL2RW_glob:
	case SQL2RW_if:
	case SQL2RW_ignore:
	case SQL2RW_immediate:
	case SQL2RW_initially:
	case SQL2RW_inner:
	case SQL2RW_instead:
	case SQL2RW_key:
	case SQL2RW_left:
	case SQL2RW_like:
	case SQL2RW_match:
	case SQL2RW_natural:
	case SQL2RW_of:
	case SQL2RW_offset:
	case SQL2RW_outer:
	case SQL2RW_plan:
	case SQL2RW_pragma:
	case SQL2RW_query:
	case SQL2RW_raise:
	case SQL2RW_regexp:
	case SQL2RW_reindex:
	case SQL2RW_rename:
	case SQL2RW_replace:
	case SQL2RW_restrict:
	case SQL2RW_right:
	case SQL2RW_rollback:
	case SQL2RW_row:
	case SQL2RW_temp:
	case SQL2RW_temporary:
	case SQL2RW_trigger:
	case SQL2RW_vacuum:
	case SQL2RW_view:
	case SQL2RW_virtual:
	case SQL2RW_indexed:
	case SQL2RW_savepoint:
	case SQL2RW_release:
	case ID:
	case STRING:
	{
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		nmnum_AST = currentAST.root;
		break;
	}
	case SQL2RW_on:
	{
		RefAST tmp262_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp262_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp262_AST);
		}
		match(SQL2RW_on);
		nmnum_AST = currentAST.root;
		break;
	}
	case SQL2RW_default:
	{
		RefAST tmp263_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp263_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp263_AST);
		}
		match(SQL2RW_default);
		nmnum_AST = currentAST.root;
		break;
	}
	case SQL2RW_delete:
	{
		RefAST tmp264_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp264_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp264_AST);
		}
		match(SQL2RW_delete);
		nmnum_AST = currentAST.root;
		break;
	}
	default:
	{
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = nmnum_AST;
}

string  SqliteParser::minus_num() {
	string szNum;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST minus_num_AST = nullAST;
	RefAST n_AST = nullAST;
	
	RefAST tmp265_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp265_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp265_AST);
	}
	match(MINUS);
	number();
	if (inputState->guessing==0) {
		n_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		szNum="-"+n_AST->getText();
		
	}
	minus_num_AST = currentAST.root;
	returnAST = minus_num_AST;
	return szNum;
}

void SqliteParser::ifexists() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST ifexists_AST = nullAST;
	
	RefAST tmp266_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp266_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp266_AST);
	}
	match(SQL2RW_if);
	RefAST tmp267_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp267_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp267_AST);
	}
	match(SQL2RW_exists);
	if ( inputState->guessing==0 ) {
		ifexists_AST = RefAST(currentAST.root);
		ifexists_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(IFEXISTS_DEF,"IFEXISTS_DEF"))->add(ifexists_AST)));
		currentAST.root = ifexists_AST;
		if ( ifexists_AST!=nullAST &&
			ifexists_AST->getFirstChild() != nullAST )
			  currentAST.child = ifexists_AST->getFirstChild();
		else
			currentAST.child = ifexists_AST;
		currentAST.advanceChildToEnd();
	}
	ifexists_AST = currentAST.root;
	returnAST = ifexists_AST;
}

void SqliteParser::column() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST column_AST = nullAST;
	
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((_tokenSet_13.member(LA(1)))) {
		typetoken();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_32.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	carglist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	column_AST = currentAST.root;
	returnAST = column_AST;
}

void SqliteParser::transtype() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST transtype_AST = nullAST;
	
	if ((LA(1) == SQL2RW_deferred)) {
		RefAST tmp268_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp268_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp268_AST);
		}
		match(SQL2RW_deferred);
		transtype_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_immediate)) {
		RefAST tmp269_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp269_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp269_AST);
		}
		match(SQL2RW_immediate);
		transtype_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_exclusive)) {
		RefAST tmp270_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp270_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp270_AST);
		}
		match(SQL2RW_exclusive);
		transtype_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = transtype_AST;
}

void SqliteParser::trans_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST trans_opt_AST = nullAST;
	
	RefAST tmp271_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp271_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp271_AST);
	}
	match(SQL2RW_transaction);
	{
	if ((_tokenSet_4.member(LA(1)))) {
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_to || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	trans_opt_AST = currentAST.root;
	returnAST = trans_opt_AST;
}

void SqliteParser::savepoint_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST savepoint_opt_AST = nullAST;
	
	RefAST tmp272_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp272_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp272_AST);
	}
	match(SQL2RW_savepoint);
	savepoint_opt_AST = currentAST.root;
	returnAST = savepoint_opt_AST;
}

void SqliteParser::resolvetype() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST resolvetype_AST = nullAST;
	
	if ((LA(1) == SQL2RW_abort || LA(1) == SQL2RW_fail || LA(1) == SQL2RW_rollback)) {
		raisetype();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		resolvetype_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_ignore)) {
		RefAST tmp273_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp273_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp273_AST);
		}
		match(SQL2RW_ignore);
		resolvetype_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_replace)) {
		RefAST tmp274_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp274_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp274_AST);
		}
		match(SQL2RW_replace);
		resolvetype_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = resolvetype_AST;
}

void SqliteParser::fallback() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST fallback_AST = nullAST;
	
	switch ( LA(1)) {
	case SQL2RW_explain:
	{
		RefAST tmp275_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp275_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp275_AST);
		}
		match(SQL2RW_explain);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_query:
	{
		RefAST tmp276_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp276_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp276_AST);
		}
		match(SQL2RW_query);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_plan:
	{
		RefAST tmp277_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp277_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp277_AST);
		}
		match(SQL2RW_plan);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_begin:
	{
		RefAST tmp278_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp278_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp278_AST);
		}
		match(SQL2RW_begin);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_deferred:
	{
		RefAST tmp279_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp279_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp279_AST);
		}
		match(SQL2RW_deferred);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_immediate:
	{
		RefAST tmp280_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp280_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp280_AST);
		}
		match(SQL2RW_immediate);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_exclusive:
	{
		RefAST tmp281_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp281_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp281_AST);
		}
		match(SQL2RW_exclusive);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_end:
	{
		RefAST tmp282_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp282_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp282_AST);
		}
		match(SQL2RW_end);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_if:
	{
		RefAST tmp283_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp283_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp283_AST);
		}
		match(SQL2RW_if);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_temp:
	{
		RefAST tmp284_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp284_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp284_AST);
		}
		match(SQL2RW_temp);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_temporary:
	{
		RefAST tmp285_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp285_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp285_AST);
		}
		match(SQL2RW_temporary);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_abort:
	{
		RefAST tmp286_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp286_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp286_AST);
		}
		match(SQL2RW_abort);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_after:
	{
		RefAST tmp287_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp287_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp287_AST);
		}
		match(SQL2RW_after);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_analyze:
	{
		RefAST tmp288_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp288_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp288_AST);
		}
		match(SQL2RW_analyze);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_asc:
	{
		RefAST tmp289_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp289_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp289_AST);
		}
		match(SQL2RW_asc);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_attach:
	{
		RefAST tmp290_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp290_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp290_AST);
		}
		match(SQL2RW_attach);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_before:
	{
		RefAST tmp291_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp291_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp291_AST);
		}
		match(SQL2RW_before);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_cascade:
	{
		RefAST tmp292_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp292_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp292_AST);
		}
		match(SQL2RW_cascade);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_cast:
	{
		RefAST tmp293_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp293_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp293_AST);
		}
		match(SQL2RW_cast);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_conflict:
	{
		RefAST tmp294_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp294_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp294_AST);
		}
		match(SQL2RW_conflict);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_database:
	{
		RefAST tmp295_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp295_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp295_AST);
		}
		match(SQL2RW_database);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_desc:
	{
		RefAST tmp296_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp296_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp296_AST);
		}
		match(SQL2RW_desc);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_detach:
	{
		RefAST tmp297_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp297_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp297_AST);
		}
		match(SQL2RW_detach);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_each:
	{
		RefAST tmp298_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp298_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp298_AST);
		}
		match(SQL2RW_each);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_fail:
	{
		RefAST tmp299_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp299_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp299_AST);
		}
		match(SQL2RW_fail);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_for:
	{
		RefAST tmp300_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp300_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp300_AST);
		}
		match(SQL2RW_for);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_ignore:
	{
		RefAST tmp301_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp301_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp301_AST);
		}
		match(SQL2RW_ignore);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_initially:
	{
		RefAST tmp302_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp302_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp302_AST);
		}
		match(SQL2RW_initially);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_instead:
	{
		RefAST tmp303_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp303_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp303_AST);
		}
		match(SQL2RW_instead);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_indexed:
	{
		RefAST tmp304_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp304_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp304_AST);
		}
		match(SQL2RW_indexed);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_glob:
	case SQL2RW_like:
	case SQL2RW_regexp:
	{
		like_kw();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_match:
	{
		RefAST tmp305_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp305_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp305_AST);
		}
		match(SQL2RW_match);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_key:
	{
		RefAST tmp306_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp306_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp306_AST);
		}
		match(SQL2RW_key);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_of:
	{
		RefAST tmp307_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp307_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp307_AST);
		}
		match(SQL2RW_of);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_offset:
	{
		RefAST tmp308_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp308_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp308_AST);
		}
		match(SQL2RW_offset);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_pragma:
	{
		RefAST tmp309_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp309_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp309_AST);
		}
		match(SQL2RW_pragma);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_raise:
	{
		RefAST tmp310_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp310_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp310_AST);
		}
		match(SQL2RW_raise);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_replace:
	{
		RefAST tmp311_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp311_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp311_AST);
		}
		match(SQL2RW_replace);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_restrict:
	{
		RefAST tmp312_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp312_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp312_AST);
		}
		match(SQL2RW_restrict);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_row:
	{
		RefAST tmp313_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp313_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp313_AST);
		}
		match(SQL2RW_row);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_trigger:
	{
		RefAST tmp314_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp314_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp314_AST);
		}
		match(SQL2RW_trigger);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_vacuum:
	{
		RefAST tmp315_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp315_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp315_AST);
		}
		match(SQL2RW_vacuum);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_view:
	{
		RefAST tmp316_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp316_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp316_AST);
		}
		match(SQL2RW_view);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_virtual:
	{
		RefAST tmp317_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp317_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp317_AST);
		}
		match(SQL2RW_virtual);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_reindex:
	{
		RefAST tmp318_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp318_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp318_AST);
		}
		match(SQL2RW_reindex);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_rename:
	{
		RefAST tmp319_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp319_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp319_AST);
		}
		match(SQL2RW_rename);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_currentdate:
	case SQL2RW_currenttime:
	case SQL2RW_currenttimestamp:
	{
		ctime_kw();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_rollback:
	{
		RefAST tmp320_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp320_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp320_AST);
		}
		match(SQL2RW_rollback);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_by:
	{
		RefAST tmp321_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp321_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp321_AST);
		}
		match(SQL2RW_by);
		fallback_AST = currentAST.root;
		break;
	}
	case SQL2RW_column:
	{
		RefAST tmp322_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp322_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp322_AST);
		}
		match(SQL2RW_column);
		fallback_AST = currentAST.root;
		break;
	}
	default:
		if ((LA(1) == SQL2RW_savepoint) && (_tokenSet_33.member(LA(2)))) {
			RefAST tmp323_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp323_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp323_AST);
			}
			match(SQL2RW_savepoint);
			fallback_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_release) && (_tokenSet_33.member(LA(2)))) {
			RefAST tmp324_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp324_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp324_AST);
			}
			match(SQL2RW_release);
			fallback_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_savepoint) && (_tokenSet_33.member(LA(2)))) {
			RefAST tmp325_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp325_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp325_AST);
			}
			match(SQL2RW_savepoint);
			fallback_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_release) && (_tokenSet_33.member(LA(2)))) {
			RefAST tmp326_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp326_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp326_AST);
			}
			match(SQL2RW_release);
			fallback_AST = currentAST.root;
		}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = fallback_AST;
}

void SqliteParser::ids() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST ids_AST = nullAST;
	
	if ((_tokenSet_6.member(LA(1)))) {
		id();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		ids_AST = currentAST.root;
	}
	else if ((LA(1) == STRING)) {
		RefAST tmp327_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp327_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp327_AST);
		}
		match(STRING);
		ids_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = ids_AST;
}

string  SqliteParser::plus_num() {
	string szNum;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST plus_num_AST = nullAST;
	RefAST n_AST = nullAST;
	
	szNum="";
	
	
	{
	if ((LA(1) == PLUS)) {
		RefAST tmp328_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp328_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp328_AST);
		}
		match(PLUS);
		if ( inputState->guessing==0 ) {
			szNum="+";
		}
	}
	else if ((LA(1) == INTEGER || LA(1) == FLOAT)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	number();
	if (inputState->guessing==0) {
		n_AST = returnAST;
		astFactory->addASTChild( currentAST, returnAST );
	}
	if ( inputState->guessing==0 ) {
		
		szNum+=n_AST->getText();
		
	}
	plus_num_AST = currentAST.root;
	returnAST = plus_num_AST;
	return szNum;
}

void SqliteParser::number() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST number_AST = nullAST;
	
	if ((LA(1) == INTEGER)) {
		RefAST tmp329_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp329_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp329_AST);
		}
		match(INTEGER);
		number_AST = currentAST.root;
	}
	else if ((LA(1) == FLOAT)) {
		RefAST tmp330_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp330_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp330_AST);
		}
		match(FLOAT);
		number_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = number_AST;
}

void SqliteParser::ctime_kw() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST ctime_kw_AST = nullAST;
	
	if ((LA(1) == SQL2RW_currentdate)) {
		RefAST tmp331_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp331_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp331_AST);
		}
		match(SQL2RW_currentdate);
		ctime_kw_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_currenttime)) {
		RefAST tmp332_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp332_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp332_AST);
		}
		match(SQL2RW_currenttime);
		ctime_kw_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_currenttimestamp)) {
		RefAST tmp333_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp333_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp333_AST);
		}
		match(SQL2RW_currenttimestamp);
		ctime_kw_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = ctime_kw_AST;
}

void SqliteParser::refarg() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST refarg_AST = nullAST;
	
	if ((LA(1) == SQL2RW_match)) {
		RefAST tmp334_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp334_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp334_AST);
		}
		match(SQL2RW_match);
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		refarg_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_on) && (LA(2) == SQL2RW_delete)) {
		RefAST tmp335_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp335_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp335_AST);
		}
		match(SQL2RW_on);
		RefAST tmp336_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp336_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp336_AST);
		}
		match(SQL2RW_delete);
		refact();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		refarg_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_on) && (LA(2) == SQL2RW_update)) {
		RefAST tmp337_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp337_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp337_AST);
		}
		match(SQL2RW_on);
		RefAST tmp338_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp338_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp338_AST);
		}
		match(SQL2RW_update);
		refact();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		refarg_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_on) && (LA(2) == SQL2RW_insert)) {
		RefAST tmp339_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp339_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp339_AST);
		}
		match(SQL2RW_on);
		RefAST tmp340_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp340_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp340_AST);
		}
		match(SQL2RW_insert);
		refact();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		refarg_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = refarg_AST;
}

void SqliteParser::like_kw() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST like_kw_AST = nullAST;
	
	if ((LA(1) == SQL2RW_like)) {
		RefAST tmp341_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp341_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp341_AST);
		}
		match(SQL2RW_like);
		like_kw_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_glob)) {
		RefAST tmp342_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp342_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp342_AST);
		}
		match(SQL2RW_glob);
		like_kw_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_regexp)) {
		RefAST tmp343_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp343_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp343_AST);
		}
		match(SQL2RW_regexp);
		like_kw_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = like_kw_AST;
}

void SqliteParser::refact() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST refact_AST = nullAST;
	
	if ((LA(1) == SQL2RW_set) && (LA(2) == SQL2RW_null)) {
		RefAST tmp344_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp344_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp344_AST);
		}
		match(SQL2RW_set);
		RefAST tmp345_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp345_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp345_AST);
		}
		match(SQL2RW_null);
		refact_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_set) && (LA(2) == SQL2RW_default)) {
		RefAST tmp346_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp346_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp346_AST);
		}
		match(SQL2RW_set);
		RefAST tmp347_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp347_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp347_AST);
		}
		match(SQL2RW_default);
		refact_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_cascade)) {
		RefAST tmp348_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp348_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp348_AST);
		}
		match(SQL2RW_cascade);
		refact_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_restrict)) {
		RefAST tmp349_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp349_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp349_AST);
		}
		match(SQL2RW_restrict);
		refact_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = refact_AST;
}

void SqliteParser::oneselect() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST oneselect_AST = nullAST;
	RefToken  b = nullToken;
	RefAST b_AST = nullAST;
	
	RefToken e;
	
	
	b = LT(1);
	if ( inputState->guessing == 0 ) {
		b_AST = astFactory->create(b);
		astFactory->makeASTRoot(currentAST, b_AST);
	}
	match(SQL2RW_select);
	{
	if ((LA(1) == SQL2RW_all || LA(1) == SQL2RW_distinct)) {
		distinct();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_34.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	selcollist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_from)) {
		from();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_35.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_where)) {
		where_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_36.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_group)) {
		groupby_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_37.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_having)) {
		having_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_38.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_order)) {
		orderby_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_except || LA(1) == SQL2RW_intersect || LA(1) == SQL2RW_limit || LA(1) == SQL2RW_union || LA(1) == RP || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	{
	if ((LA(1) == SQL2RW_limit)) {
		limit_opt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_except || LA(1) == SQL2RW_intersect || LA(1) == SQL2RW_union || LA(1) == RP || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		
		e=LT(1);
		QueryAlias alias;
		alias.iBeginRow=b->getLine();
		alias.iBeginCol=b->getColumn();
		alias.iEndRow=e->getLine();
		alias.iEndCol=e->getColumn();
		alias.vAlias=m_vAlias;
		m_vAlias.clear();
		
		m_vQryAlias.push_back(alias);
		
	}
	oneselect_AST = currentAST.root;
	returnAST = oneselect_AST;
}

void SqliteParser::multiselect_op() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST multiselect_op_AST = nullAST;
	
	if ((LA(1) == SQL2RW_union)) {
		RefAST tmp350_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp350_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp350_AST);
		}
		match(SQL2RW_union);
		{
		if ((LA(1) == SQL2RW_all)) {
			RefAST tmp351_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp351_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp351_AST);
			}
			match(SQL2RW_all);
		}
		else if ((LA(1) == SQL2RW_select)) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		multiselect_op_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_except)) {
		RefAST tmp352_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp352_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp352_AST);
		}
		match(SQL2RW_except);
		multiselect_op_AST = currentAST.root;
	}
	else if ((LA(1) == SQL2RW_intersect)) {
		RefAST tmp353_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp353_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp353_AST);
		}
		match(SQL2RW_intersect);
		multiselect_op_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = multiselect_op_AST;
}

void SqliteParser::selcollist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST selcollist_AST = nullAST;
	
	sclp();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp354_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp354_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp354_AST);
			}
			match(COMMA);
			sclp();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop391;
		}
		
	}
	_loop391:;
	} // ( ... )*
	selcollist_AST = currentAST.root;
	returnAST = selcollist_AST;
}

void SqliteParser::from() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST from_AST = nullAST;
	
	RefAST tmp355_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp355_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp355_AST);
	}
	match(SQL2RW_from);
	seltablist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	from_AST = currentAST.root;
	returnAST = from_AST;
}

void SqliteParser::groupby_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST groupby_opt_AST = nullAST;
	
	RefAST tmp356_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp356_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp356_AST);
	}
	match(SQL2RW_group);
	RefAST tmp357_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp357_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp357_AST);
	}
	match(SQL2RW_by);
	exprlist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	groupby_opt_AST = currentAST.root;
	returnAST = groupby_opt_AST;
}

void SqliteParser::having_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST having_opt_AST = nullAST;
	
	RefAST tmp358_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp358_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp358_AST);
	}
	match(SQL2RW_having);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	having_opt_AST = currentAST.root;
	returnAST = having_opt_AST;
}

void SqliteParser::orderby_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST orderby_opt_AST = nullAST;
	
	RefAST tmp359_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp359_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp359_AST);
	}
	match(SQL2RW_order);
	RefAST tmp360_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp360_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp360_AST);
	}
	match(SQL2RW_by);
	sortlist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	orderby_opt_AST = currentAST.root;
	returnAST = orderby_opt_AST;
}

void SqliteParser::limit_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST limit_opt_AST = nullAST;
	
	RefAST tmp361_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp361_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp361_AST);
	}
	match(SQL2RW_limit);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_offset || LA(1) == COMMA)) {
		{
		if ((LA(1) == SQL2RW_offset)) {
			RefAST tmp362_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp362_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp362_AST);
			}
			match(SQL2RW_offset);
		}
		else if ((LA(1) == COMMA)) {
			RefAST tmp363_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp363_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp363_AST);
			}
			match(COMMA);
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((LA(1) == Token::EOF_TYPE || LA(1) == SQL2RW_except || LA(1) == SQL2RW_intersect || LA(1) == SQL2RW_union || LA(1) == RP || LA(1) == SEMI)) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	limit_opt_AST = currentAST.root;
	returnAST = limit_opt_AST;
}

void SqliteParser::sclp() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sclp_AST = nullAST;
	
	bool synPredMatched394 = false;
	if (((_tokenSet_4.member(LA(1))) && (LA(2) == DOT))) {
		int _m394 = mark();
		synPredMatched394 = true;
		inputState->guessing++;
		try {
			{
			nm();
			match(DOT);
			match(STAR);
			}
		}
		catch (RecognitionException& pe) {
			synPredMatched394 = false;
		}
		rewind(_m394);
		inputState->guessing--;
	}
	if ( synPredMatched394 ) {
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp364_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp364_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp364_AST);
		}
		match(DOT);
		RefAST tmp365_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp365_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp365_AST);
		}
		match(STAR);
		sclp_AST = currentAST.root;
	}
	else if ((LA(1) == STAR)) {
		RefAST tmp366_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp366_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp366_AST);
		}
		match(STAR);
		sclp_AST = currentAST.root;
	}
	else if ((_tokenSet_10.member(LA(1))) && (_tokenSet_39.member(LA(2)))) {
		expr();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((_tokenSet_40.member(LA(1)))) {
			sub_select_as();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_41.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		sclp_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = sclp_AST;
}

void SqliteParser::sub_select_as() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sub_select_as_AST = nullAST;
	
	{
	if ((LA(1) == SQL2RW_as)) {
		RefAST tmp367_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp367_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp367_AST);
		}
		match(SQL2RW_as);
		nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_13.member(LA(1)))) {
		ids();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		sub_select_as_AST = RefAST(currentAST.root);
		sub_select_as_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(AS_DEF,"AS_DEF"))->add(sub_select_as_AST)));
		currentAST.root = sub_select_as_AST;
		if ( sub_select_as_AST!=nullAST &&
			sub_select_as_AST->getFirstChild() != nullAST )
			  currentAST.child = sub_select_as_AST->getFirstChild();
		else
			currentAST.child = sub_select_as_AST;
		currentAST.advanceChildToEnd();
	}
	sub_select_as_AST = currentAST.root;
	returnAST = sub_select_as_AST;
}

string  SqliteParser::table_as() {
	string szAlias;
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST table_as_AST = nullAST;
	RefAST id_AST = nullAST;
	
	{
	if ((LA(1) == SQL2RW_as)) {
		RefAST tmp368_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp368_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp368_AST);
		}
		match(SQL2RW_as);
		szAlias=nm();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_13.member(LA(1)))) {
		ids();
		if (inputState->guessing==0) {
			id_AST = returnAST;
			astFactory->addASTChild( currentAST, returnAST );
		}
		if ( inputState->guessing==0 ) {
			szAlias=id_AST->getText();
		}
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	if ( inputState->guessing==0 ) {
		table_as_AST = RefAST(currentAST.root);
		table_as_AST = RefAST(astFactory->make((new ASTArray(2))->add(astFactory->create(AS_DEF,"AS_DEF"))->add(table_as_AST)));
		currentAST.root = table_as_AST;
		if ( table_as_AST!=nullAST &&
			table_as_AST->getFirstChild() != nullAST )
			  currentAST.child = table_as_AST->getFirstChild();
		else
			currentAST.child = table_as_AST;
		currentAST.advanceChildToEnd();
	}
	table_as_AST = currentAST.root;
	returnAST = table_as_AST;
	return szAlias;
}

void SqliteParser::seltablist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST seltablist_AST = nullAST;
	
	seltabitem();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_42.member(LA(1)))) {
			joinop();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			seltabitem();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop403;
		}
		
	}
	_loop403:;
	} // ( ... )*
	seltablist_AST = currentAST.root;
	returnAST = seltablist_AST;
}

void SqliteParser::seltabitem() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST seltabitem_AST = nullAST;
	
	string szTable="";
	string szAlias="";
	AliasTable at;
	
	
	if ((_tokenSet_4.member(LA(1)))) {
		szTable=tableview_name();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		{
		if ((_tokenSet_40.member(LA(1))) && (_tokenSet_43.member(LA(2)))) {
			szAlias=table_as();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			if ( inputState->guessing==0 ) {
				at.szTable=szTable; at.szAlias=szAlias;m_vAlias.push_back(at);
			}
		}
		else if ((_tokenSet_44.member(LA(1))) && (_tokenSet_45.member(LA(2)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_not || LA(1) == SQL2RW_indexed)) {
			indexed_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_46.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_on)) {
			on_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_47.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_using)) {
			using_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_48.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		seltabitem_AST = currentAST.root;
	}
	else if ((LA(1) == LP)) {
		RefAST tmp369_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp369_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp369_AST);
		}
		match(LP);
		seltablist_paren();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		RefAST tmp370_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp370_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp370_AST);
		}
		match(RP);
		{
		if ((_tokenSet_40.member(LA(1)))) {
			sub_select_as();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_46.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_on)) {
			on_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_47.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		{
		if ((LA(1) == SQL2RW_using)) {
			using_opt();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else if ((_tokenSet_48.member(LA(1)))) {
		}
		else {
			throw NoViableAltException(LT(1), getFilename());
		}
		
		}
		seltabitem_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = seltabitem_AST;
}

void SqliteParser::joinop() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST joinop_AST = nullAST;
	
	if ((LA(1) == COMMA)) {
		RefAST tmp371_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp371_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp371_AST);
		}
		match(COMMA);
		joinop_AST = currentAST.root;
	}
	else {
		bool synPredMatched415 = false;
		if (((LA(1) == SQL2RW_cross || LA(1) == SQL2RW_full || LA(1) == SQL2RW_inner || LA(1) == SQL2RW_left || LA(1) == SQL2RW_natural || LA(1) == SQL2RW_outer || LA(1) == SQL2RW_right) && (_tokenSet_4.member(LA(2))))) {
			int _m415 = mark();
			synPredMatched415 = true;
			inputState->guessing++;
			try {
				{
				join_kw();
				nm();
				nm();
				}
			}
			catch (RecognitionException& pe) {
				synPredMatched415 = false;
			}
			rewind(_m415);
			inputState->guessing--;
		}
		if ( synPredMatched415 ) {
			join_kw();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp372_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp372_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp372_AST);
			}
			match(SQL2RW_join);
			joinop_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_cross || LA(1) == SQL2RW_full || LA(1) == SQL2RW_inner || LA(1) == SQL2RW_left || LA(1) == SQL2RW_natural || LA(1) == SQL2RW_outer || LA(1) == SQL2RW_right) && (_tokenSet_4.member(LA(2)))) {
			join_kw();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp373_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp373_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp373_AST);
			}
			match(SQL2RW_join);
			joinop_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_cross || LA(1) == SQL2RW_full || LA(1) == SQL2RW_inner || LA(1) == SQL2RW_left || LA(1) == SQL2RW_natural || LA(1) == SQL2RW_outer || LA(1) == SQL2RW_right) && (LA(2) == SQL2RW_join)) {
			join_kw();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
			RefAST tmp374_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp374_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp374_AST);
			}
			match(SQL2RW_join);
			joinop_AST = currentAST.root;
		}
		else if ((LA(1) == SQL2RW_join)) {
			RefAST tmp375_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp375_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp375_AST);
			}
			match(SQL2RW_join);
			joinop_AST = currentAST.root;
		}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	}
	returnAST = joinop_AST;
}

void SqliteParser::on_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST on_opt_AST = nullAST;
	
	RefAST tmp376_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp376_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp376_AST);
	}
	match(SQL2RW_on);
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	on_opt_AST = currentAST.root;
	returnAST = on_opt_AST;
}

void SqliteParser::using_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST using_opt_AST = nullAST;
	
	RefAST tmp377_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp377_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp377_AST);
	}
	match(SQL2RW_using);
	RefAST tmp378_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp378_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp378_AST);
	}
	match(LP);
	inscollist();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	RefAST tmp379_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp379_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp379_AST);
	}
	match(RP);
	using_opt_AST = currentAST.root;
	returnAST = using_opt_AST;
}

void SqliteParser::seltablist_paren() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST seltablist_paren_AST = nullAST;
	
	if ((LA(1) == SQL2RW_select)) {
		select_stmt();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		seltablist_paren_AST = currentAST.root;
	}
	else if ((_tokenSet_49.member(LA(1)))) {
		seltablist();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
		seltablist_paren_AST = currentAST.root;
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	returnAST = seltablist_paren_AST;
}

void SqliteParser::inscollist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST inscollist_AST = nullAST;
	
	nm();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp380_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp380_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp380_AST);
			}
			match(COMMA);
			nm();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop420;
		}
		
	}
	_loop420:;
	} // ( ... )*
	inscollist_AST = currentAST.root;
	returnAST = inscollist_AST;
}

void SqliteParser::sortlist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sortlist_AST = nullAST;
	
	sortitem();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == COMMA)) {
			RefAST tmp381_AST = nullAST;
			if ( inputState->guessing == 0 ) {
				tmp381_AST = astFactory->create(LT(1));
				astFactory->addASTChild(currentAST, tmp381_AST);
			}
			match(COMMA);
			sortitem();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop430;
		}
		
	}
	_loop430:;
	} // ( ... )*
	sortlist_AST = currentAST.root;
	returnAST = sortlist_AST;
}

void SqliteParser::sortitem() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST sortitem_AST = nullAST;
	
	expr();
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	{
	if ((LA(1) == SQL2RW_asc || LA(1) == SQL2RW_desc)) {
		sortorder();
		if (inputState->guessing==0) {
			astFactory->addASTChild( currentAST, returnAST );
		}
	}
	else if ((_tokenSet_50.member(LA(1)))) {
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	sortitem_AST = currentAST.root;
	returnAST = sortitem_AST;
}

void SqliteParser::init_deferred_pred_opt() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST init_deferred_pred_opt_AST = nullAST;
	
	RefAST tmp382_AST = nullAST;
	if ( inputState->guessing == 0 ) {
		tmp382_AST = astFactory->create(LT(1));
		astFactory->addASTChild(currentAST, tmp382_AST);
	}
	match(SQL2RW_initially);
	{
	if ((LA(1) == SQL2RW_deferred)) {
		RefAST tmp383_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp383_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp383_AST);
		}
		match(SQL2RW_deferred);
	}
	else if ((LA(1) == SQL2RW_immediate)) {
		RefAST tmp384_AST = nullAST;
		if ( inputState->guessing == 0 ) {
			tmp384_AST = astFactory->create(LT(1));
			astFactory->addASTChild(currentAST, tmp384_AST);
		}
		match(SQL2RW_immediate);
	}
	else {
		throw NoViableAltException(LT(1), getFilename());
	}
	
	}
	init_deferred_pred_opt_AST = currentAST.root;
	returnAST = init_deferred_pred_opt_AST;
}

void SqliteParser::carglist() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST carglist_AST = nullAST;
	
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_15.member(LA(1)))) {
			carg();
			if (inputState->guessing==0) {
				astFactory->addASTChild( currentAST, returnAST );
			}
		}
		else {
			goto _loop453;
		}
		
	}
	_loop453:;
	} // ( ... )*
	carglist_AST = currentAST.root;
	returnAST = carglist_AST;
}

void SqliteParser::carg() {
	returnAST = nullAST;
	ASTPair currentAST;
	RefAST carg_AST = nullAST;
	
	ColumnDef col;
	
	
	column_constraint(col);
	if (inputState->guessing==0) {
		astFactory->addASTChild( currentAST, returnAST );
	}
	carg_AST = currentAST.root;
	returnAST = carg_AST;
}

void SqliteParser::initializeASTFactory( ASTFactory& factory )
{
	factory.setMaxNodeType(327);
}
const char* SqliteParser::tokenNames[] = {
	"<0>",
	"EOF",
	"<2>",
	"NULL_TREE_LOOKAHEAD",
	"<4>",
	"<5>",
	"<6>",
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
	"\"abort\"",
	"\"add\"",
	"\"after\"",
	"\"all\"",
	"\"alter\"",
	"\"analyze\"",
	"\"and\"",
	"\"as\"",
	"\"asc\"",
	"\"attach\"",
	"\"autoincrement\"",
	"<41>",
	"<42>",
	"<43>",
	"<44>",
	"<45>",
	"<46>",
	"<47>",
	"<48>",
	"<49>",
	"\"before\"",
	"\"begin\"",
	"\"between\"",
	"\"by\"",
	"<54>",
	"<55>",
	"<56>",
	"<57>",
	"<58>",
	"<59>",
	"\"cascade\"",
	"\"case\"",
	"\"cast\"",
	"\"check\"",
	"\"collate\"",
	"\"column\"",
	"\"commit\"",
	"\"conflict\"",
	"\"constraint\"",
	"\"create\"",
	"\"cross\"",
	"\"current_date\"",
	"\"current_time\"",
	"\"current_timestamp\"",
	"<74>",
	"<75>",
	"<76>",
	"<77>",
	"<78>",
	"<79>",
	"\"database\"",
	"\"default\"",
	"\"deferred\"",
	"\"deferrable\"",
	"\"delete\"",
	"\"desc\"",
	"\"detach\"",
	"\"distinct\"",
	"\"drop\"",
	"<89>",
	"\"end\"",
	"\"each\"",
	"\"else\"",
	"\"escape\"",
	"\"except\"",
	"\"exclusive\"",
	"\"exists\"",
	"\"explain\"",
	"<98>",
	"<99>",
	"\"fail\"",
	"\"for\"",
	"\"foreign\"",
	"\"from\"",
	"\"full\"",
	"\"glob\"",
	"\"group\"",
	"<107>",
	"<108>",
	"<109>",
	"\"having\"",
	"<111>",
	"<112>",
	"<113>",
	"<114>",
	"<115>",
	"<116>",
	"<117>",
	"<118>",
	"<119>",
	"\"if\"",
	"\"ignore\"",
	"\"immediate\"",
	"\"in\"",
	"\"index\"",
	"\"initially\"",
	"\"inner\"",
	"\"insert\"",
	"\"instead\"",
	"\"intersect\"",
	"\"into\"",
	"\"is\"",
	"\"isnull\"",
	"<133>",
	"<134>",
	"<135>",
	"<136>",
	"<137>",
	"<138>",
	"<139>",
	"\"join\"",
	"<141>",
	"<142>",
	"<143>",
	"<144>",
	"<145>",
	"<146>",
	"<147>",
	"<148>",
	"<149>",
	"\"key\"",
	"\"left\"",
	"\"like\"",
	"\"limit\"",
	"<154>",
	"<155>",
	"<156>",
	"<157>",
	"<158>",
	"<159>",
	"\"match\"",
	"<161>",
	"<162>",
	"<163>",
	"<164>",
	"<165>",
	"<166>",
	"<167>",
	"<168>",
	"<169>",
	"\"natural\"",
	"\"not\"",
	"\"notnull\"",
	"\"null\"",
	"<174>",
	"<175>",
	"<176>",
	"<177>",
	"<178>",
	"<179>",
	"\"of\"",
	"\"offset\"",
	"\"on\"",
	"\"or\"",
	"\"order\"",
	"\"outer\"",
	"<186>",
	"<187>",
	"<188>",
	"<189>",
	"\"plan\"",
	"\"pragma\"",
	"\"primary\"",
	"<193>",
	"<194>",
	"<195>",
	"<196>",
	"<197>",
	"<198>",
	"<199>",
	"\"query\"",
	"<201>",
	"<202>",
	"<203>",
	"<204>",
	"<205>",
	"<206>",
	"<207>",
	"<208>",
	"<209>",
	"\"raise\"",
	"\"references\"",
	"\"regexp\"",
	"\"reindex\"",
	"\"rename\"",
	"\"replace\"",
	"\"restrict\"",
	"\"right\"",
	"\"rollback\"",
	"\"row\"",
	"\"select\"",
	"\"set\"",
	"<222>",
	"<223>",
	"<224>",
	"<225>",
	"<226>",
	"<227>",
	"<228>",
	"<229>",
	"\"table\"",
	"\"temp\"",
	"\"temporary\"",
	"\"then\"",
	"\"to\"",
	"\"transaction\"",
	"\"trigger\"",
	"<237>",
	"<238>",
	"<239>",
	"\"union\"",
	"\"unique\"",
	"\"update\"",
	"\"using\"",
	"<244>",
	"<245>",
	"<246>",
	"<247>",
	"<248>",
	"<249>",
	"\"vacuum\"",
	"\"values\"",
	"\"view\"",
	"\"virtual\"",
	"<254>",
	"<255>",
	"<256>",
	"<257>",
	"<258>",
	"<259>",
	"\"when\"",
	"\"where\"",
	"\"indexed\"",
	"\"savepoint\"",
	"\"release\"",
	"COMMENT",
	"NOT_EQ",
	"INTEGER",
	"FLOAT",
	"DOT",
	"VARIABLE",
	"ID",
	"STRING",
	"IFEXISTS_DEF",
	"IFNOTEXISTS_DEF",
	"AS_DEF",
	"CAST_DEF",
	"IDEXP_DEF",
	"DOTEXP_DEF",
	"FUNC_DEF",
	"NULLOP_DEF",
	"IN_DEF",
	"ATTACHDB_DEF",
	"ATTACH_DEF",
	"DETACHDB_DEF",
	"DETACH_DEF",
	"VIEW_DEF",
	"TRIGGER_DEF",
	"VIRTUAL_DEF",
	"COLUMN_DEF",
	"TCONS_DEF",
	"SPACE",
	"NEW_LINE",
	"SL_COMMENT",
	"-",
	"(",
	")",
	";",
	"+",
	"*",
	"ML_COMMENT",
	"/",
	"%",
	"=",
	"<=",
	"<>",
	"<<",
	"<",
	">=",
	">>",
	">",
	"!=",
	"||",
	"|",
	",",
	"&",
	"~",
	"string",
	"string",
	"string",
	"NUMBERIC",
	"identifier",
	"variable",
	"variable",
	"BLOB",
	"identifier",
	"SIMPLE_LETTER",
	"ANY",
	0
};

const unsigned long SqliteParser::_tokenSet_0_data_[] = { 0UL, 524428UL, 89128996UL, 2147483650UL, 0UL, 2147483648UL, 346030080UL, 67371008UL, 384UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "alter" "analyze" "attach" "begin" "commit" "create" "delete" "detach" 
// "drop" "end" "explain" "insert" "pragma" "reindex" "replace" "rollback" 
// "select" "update" "vacuum" "savepoint" "release" 
const BitSet SqliteParser::_tokenSet_0(_tokenSet_0_data_,20);
const unsigned long SqliteParser::_tokenSet_1_data_[] = { 0UL, 524428UL, 89128996UL, 2147483648UL, 0UL, 2147483648UL, 346030080UL, 67371008UL, 384UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "alter" "analyze" "attach" "begin" "commit" "create" "delete" "detach" 
// "drop" "end" "insert" "pragma" "reindex" "replace" "rollback" "select" 
// "update" "vacuum" "savepoint" "release" 
const BitSet SqliteParser::_tokenSet_1(_tokenSet_1_data_,20);
const unsigned long SqliteParser::_tokenSet_2_data_[] = { 0UL, 140UL, 20971552UL, 0UL, 0UL, 2147483648UL, 2097152UL, 67108864UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "alter" "analyze" "attach" "create" "detach" "drop" "pragma" "reindex" 
// "vacuum" 
const BitSet SqliteParser::_tokenSet_2(_tokenSet_2_data_,16);
const unsigned long SqliteParser::_tokenSet_3_data_[] = { 4294967280UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294966783UL, 255UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// null null null null null null null null null null null null null null 
// null null null null null null null null null null null null "abort" 
// "add" "after" "all" "alter" "analyze" "and" "as" "asc" "attach" "autoincrement" 
// null null null null null null null null null "before" "begin" "between" 
// "by" null null null null null null "cascade" "case" "cast" "check" "collate" 
// "column" "commit" "conflict" "constraint" "create" "cross" "current_date" 
// "current_time" "current_timestamp" null null null null null null "database" 
// "default" "deferred" "deferrable" "delete" "desc" "detach" "distinct" 
// "drop" null "end" "each" "else" "escape" "except" "exclusive" "exists" 
// "explain" null null "fail" "for" "foreign" "from" "full" "glob" "group" 
// null null null "having" null null null null null null null null null 
// "if" "ignore" "immediate" "in" "index" "initially" "inner" "insert" 
// "instead" "intersect" "into" "is" "isnull" null null null null null 
// null null "join" null null null null null null null null null "key" 
// "left" "like" "limit" null null null null null null "match" null null 
// null null null null null null null "natural" "not" "notnull" "null" 
// null null null null null null "of" "offset" "on" "or" "order" "outer" 
// null null null null "plan" "pragma" "primary" null null null null null 
// null null "query" null null null null null null null null null "raise" 
// "references" "regexp" "reindex" "rename" "replace" "restrict" "right" 
// "rollback" "row" "select" "set" null null null null null null null null 
// "table" "temp" "temporary" "then" "to" "transaction" "trigger" null 
// null null "union" "unique" "update" "using" null null null null null 
// null "vacuum" "values" "view" "virtual" null null null null null null 
// "when" "where" "indexed" "savepoint" "release" COMMENT NOT_EQ INTEGER 
// FLOAT DOT VARIABLE ID STRING IFEXISTS_DEF IFNOTEXISTS_DEF AS_DEF CAST_DEF 
// IDEXP_DEF DOTEXP_DEF FUNC_DEF NULLOP_DEF IN_DEF ATTACHDB_DEF ATTACH_DEF 
// DETACHDB_DEF DETACH_DEF VIEW_DEF TRIGGER_DEF VIRTUAL_DEF COLUMN_DEF 
// TCONS_DEF SPACE NEW_LINE SL_COMMENT MINUS LP RP PLUS STAR ML_COMMENT 
// SLASH REM EQ LE NE LSHIFT LESS_THAN GE RSHIFT GT NE_LEGAL BITOR CONCAT 
// COMMA BITAND BITNOT STRING_LITERAL1 STRING_LITERAL2 STRING_LITERAL3 
// NUMBERIC ID_1 VARIABLE_1 VARIABLE_2 BLOB ID_2 SIMPLE_LETTER ANY 
const BitSet SqliteParser::_tokenSet_3(_tokenSet_3_data_,40);
const unsigned long SqliteParser::_tokenSet_4_data_[] = { 1073741824UL, 1345061065UL, 2355430346UL, 1728054066UL, 29360129UL, 3257926657UL, 267649280UL, 872419712UL, 98752UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "full" "glob" "if" "ignore" "immediate" "initially" "inner" 
// "instead" "key" "left" "like" "match" "natural" "of" "offset" "outer" 
// "plan" "pragma" "query" "raise" "regexp" "reindex" "rename" "replace" 
// "restrict" "right" "rollback" "row" "temp" "temporary" "trigger" "vacuum" 
// "view" "virtual" "indexed" "savepoint" "release" ID STRING 
const BitSet SqliteParser::_tokenSet_4(_tokenSet_4_data_,20);
const unsigned long SqliteParser::_tokenSet_5_data_[] = { 2UL, 0UL, 131072UL, 0UL, 0UL, 2048UL, 805306368UL, 134217728UL, 96UL, 640UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "default" "not" "select" "set" "values" "where" "indexed" LP SEMI 
const BitSet SqliteParser::_tokenSet_5(_tokenSet_5_data_,20);
const unsigned long SqliteParser::_tokenSet_6_data_[] = { 1073741824UL, 1345061065UL, 2355430282UL, 654311986UL, 20971521UL, 3224371201UL, 234094848UL, 872419712UL, 33216UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "glob" "if" "ignore" "immediate" "initially" "instead" 
// "key" "like" "match" "of" "offset" "plan" "pragma" "query" "raise" "regexp" 
// "reindex" "rename" "replace" "restrict" "rollback" "row" "temp" "temporary" 
// "trigger" "vacuum" "view" "virtual" "indexed" "savepoint" "release" 
// ID 
const BitSet SqliteParser::_tokenSet_6(_tokenSet_6_data_,20);
const unsigned long SqliteParser::_tokenSet_7_data_[] = { 1073741826UL, 1345061097UL, 3429172170UL, 1728071474UL, 62918659UL, 3278900225UL, 267649280UL, 873009536UL, 98800UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "as" "asc" "attach" "before" "begin" "by" 
// "cascade" "cast" "column" "conflict" "cross" "current_date" "current_time" 
// "current_timestamp" "database" "deferred" "desc" "detach" "end" "each" 
// "except" "exclusive" "explain" "fail" "for" "full" "glob" "group" "having" 
// "if" "ignore" "immediate" "initially" "inner" "instead" "intersect" 
// "join" "key" "left" "like" "limit" "match" "natural" "not" "of" "offset" 
// "on" "order" "outer" "plan" "pragma" "query" "raise" "regexp" "reindex" 
// "rename" "replace" "restrict" "right" "rollback" "row" "temp" "temporary" 
// "trigger" "union" "using" "vacuum" "view" "virtual" "when" "where" "indexed" 
// "savepoint" "release" ID STRING RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_7(_tokenSet_7_data_,20);
const unsigned long SqliteParser::_tokenSet_8_data_[] = { 1073741824UL, 1345061065UL, 2356609994UL, 1728054066UL, 29360129UL, 3262120961UL, 267649280UL, 872419712UL, 104896UL, 1024UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "default" "deferred" "delete" "desc" "detach" "end" "each" 
// "exclusive" "explain" "fail" "for" "full" "glob" "if" "ignore" "immediate" 
// "initially" "inner" "instead" "key" "left" "like" "match" "natural" 
// "of" "offset" "on" "outer" "plan" "pragma" "query" "raise" "regexp" 
// "reindex" "rename" "replace" "restrict" "right" "rollback" "row" "temp" 
// "temporary" "trigger" "vacuum" "view" "virtual" "indexed" "savepoint" 
// "release" INTEGER FLOAT ID STRING PLUS 
const BitSet SqliteParser::_tokenSet_8(_tokenSet_8_data_,20);
const unsigned long SqliteParser::_tokenSet_9_data_[] = { 1073741826UL, 3492544713UL, 2356085659UL, 654311986UL, 20971521UL, 3224381441UL, 234619137UL, 872550784UL, 98752UL, 512UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "check" "collate" "column" "conflict" "constraint" "current_date" 
// "current_time" "current_timestamp" "database" "default" "deferred" "deferrable" 
// "desc" "detach" "end" "each" "exclusive" "explain" "fail" "for" "glob" 
// "if" "ignore" "immediate" "initially" "instead" "key" "like" "match" 
// "not" "null" "of" "offset" "plan" "pragma" "primary" "query" "raise" 
// "references" "regexp" "reindex" "rename" "replace" "restrict" "rollback" 
// "row" "temp" "temporary" "trigger" "unique" "vacuum" "view" "virtual" 
// "indexed" "savepoint" "release" ID STRING SEMI 
const BitSet SqliteParser::_tokenSet_9(_tokenSet_9_data_,20);
const unsigned long SqliteParser::_tokenSet_10_data_[] = { 1073741824UL, 1881931977UL, 2355430346UL, 1728054067UL, 29360129UL, 3257936897UL, 267649280UL, 872419712UL, 121280UL, 268436672UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "case" "cast" "column" "conflict" "cross" "current_date" "current_time" 
// "current_timestamp" "database" "deferred" "desc" "detach" "end" "each" 
// "exclusive" "exists" "explain" "fail" "for" "full" "glob" "if" "ignore" 
// "immediate" "initially" "inner" "instead" "key" "left" "like" "match" 
// "natural" "not" "null" "of" "offset" "outer" "plan" "pragma" "query" 
// "raise" "regexp" "reindex" "rename" "replace" "restrict" "right" "rollback" 
// "row" "temp" "temporary" "trigger" "vacuum" "view" "virtual" "indexed" 
// "savepoint" "release" INTEGER FLOAT VARIABLE ID STRING MINUS LP PLUS 
// BITNOT BLOB 
const BitSet SqliteParser::_tokenSet_10(_tokenSet_10_data_,24);
const unsigned long SqliteParser::_tokenSet_11_data_[] = { 0UL, 1048592UL, 536870912UL, 512UL, 16777216UL, 8390657UL, 1048576UL, 0UL, 1024UL, 192801856UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "and" "between" "escape" "glob" "like" "match" "not" "or" "regexp" NOT_EQ 
// MINUS PLUS STAR SLASH REM EQ LE LSHIFT LESS_THAN GE RSHIFT GT BITOR 
// CONCAT BITAND 
const BitSet SqliteParser::_tokenSet_11(_tokenSet_11_data_,20);
const unsigned long SqliteParser::_tokenSet_12_data_[] = { 1073741824UL, 1882980553UL, 2355430346UL, 1728054067UL, 29360129UL, 3257936897UL, 267649280UL, 872419712UL, 121280UL, 268436672UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "between" 
// "by" "cascade" "case" "cast" "column" "conflict" "cross" "current_date" 
// "current_time" "current_timestamp" "database" "deferred" "desc" "detach" 
// "end" "each" "exclusive" "exists" "explain" "fail" "for" "full" "glob" 
// "if" "ignore" "immediate" "initially" "inner" "instead" "key" "left" 
// "like" "match" "natural" "not" "null" "of" "offset" "outer" "plan" "pragma" 
// "query" "raise" "regexp" "reindex" "rename" "replace" "restrict" "right" 
// "rollback" "row" "temp" "temporary" "trigger" "vacuum" "view" "virtual" 
// "indexed" "savepoint" "release" INTEGER FLOAT VARIABLE ID STRING MINUS 
// LP PLUS BITNOT BLOB 
const BitSet SqliteParser::_tokenSet_12(_tokenSet_12_data_,24);
const unsigned long SqliteParser::_tokenSet_13_data_[] = { 1073741824UL, 1345061065UL, 2355430282UL, 654311986UL, 20971521UL, 3224371201UL, 234094848UL, 872419712UL, 98752UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "glob" "if" "ignore" "immediate" "initially" "instead" 
// "key" "like" "match" "of" "offset" "plan" "pragma" "query" "raise" "regexp" 
// "reindex" "rename" "replace" "restrict" "rollback" "row" "temp" "temporary" 
// "trigger" "vacuum" "view" "virtual" "indexed" "savepoint" "release" 
// ID STRING 
const BitSet SqliteParser::_tokenSet_13(_tokenSet_13_data_,20);
const unsigned long SqliteParser::_tokenSet_14_data_[] = { 0UL, 2147483648UL, 655377UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 67109120UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "check" "collate" "constraint" "default" "deferrable" "not" "null" "primary" 
// "references" "unique" RP COMMA 
const BitSet SqliteParser::_tokenSet_14(_tokenSet_14_data_,20);
const unsigned long SqliteParser::_tokenSet_15_data_[] = { 0UL, 2147483648UL, 655377UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "check" "collate" "constraint" "default" "deferrable" "not" "null" "primary" 
// "references" "unique" 
const BitSet SqliteParser::_tokenSet_15(_tokenSet_15_data_,16);
const unsigned long SqliteParser::_tokenSet_16_data_[] = { 0UL, 2147483648UL, 655361UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "check" "collate" "default" "deferrable" "not" "null" "primary" "references" 
// "unique" 
const BitSet SqliteParser::_tokenSet_16(_tokenSet_16_data_,16);
const unsigned long SqliteParser::_tokenSet_17_data_[] = { 2UL, 2147483648UL, 655377UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "check" "collate" "constraint" "default" "deferrable" "not" "null" 
// "primary" "references" "unique" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_17(_tokenSet_17_data_,20);
const unsigned long SqliteParser::_tokenSet_18_data_[] = { 2UL, 2147483904UL, 655377UL, 0UL, 0UL, 4204544UL, 524289UL, 131072UL, 0UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "autoincrement" "check" "collate" "constraint" "default" "deferrable" 
// "not" "null" "on" "primary" "references" "unique" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_18(_tokenSet_18_data_,20);
const unsigned long SqliteParser::_tokenSet_19_data_[] = { 2UL, 2147483904UL, 655377UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "autoincrement" "check" "collate" "constraint" "default" "deferrable" 
// "not" "null" "primary" "references" "unique" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_19(_tokenSet_19_data_,20);
const unsigned long SqliteParser::_tokenSet_20_data_[] = { 2UL, 2147483648UL, 655377UL, 0UL, 0UL, 4204545UL, 524289UL, 131072UL, 0UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "check" "collate" "constraint" "default" "deferrable" "match" "not" 
// "null" "on" "primary" "references" "unique" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_20(_tokenSet_20_data_,20);
const unsigned long SqliteParser::_tokenSet_21_data_[] = { 2UL, 2147483648UL, 655377UL, 536870912UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "check" "collate" "constraint" "default" "deferrable" "initially" 
// "not" "null" "primary" "references" "unique" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_21(_tokenSet_21_data_,20);
const unsigned long SqliteParser::_tokenSet_22_data_[] = { 1073741824UL, 1345061065UL, 2355430282UL, 654311986UL, 20971521UL, 3224371201UL, 234094848UL, 872419712UL, 448UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "glob" "if" "ignore" "immediate" "initially" "instead" 
// "key" "like" "match" "of" "offset" "plan" "pragma" "query" "raise" "regexp" 
// "reindex" "rename" "replace" "restrict" "rollback" "row" "temp" "temporary" 
// "trigger" "vacuum" "view" "virtual" "indexed" "savepoint" "release" 
const BitSet SqliteParser::_tokenSet_22(_tokenSet_22_data_,20);
const unsigned long SqliteParser::_tokenSet_23_data_[] = { 1073741824UL, 1881931977UL, 2355430346UL, 1728054067UL, 29360129UL, 3257934849UL, 267649280UL, 872419712UL, 121280UL, 128UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "case" "cast" "column" "conflict" "cross" "current_date" "current_time" 
// "current_timestamp" "database" "deferred" "desc" "detach" "end" "each" 
// "exclusive" "exists" "explain" "fail" "for" "full" "glob" "if" "ignore" 
// "immediate" "initially" "inner" "instead" "key" "left" "like" "match" 
// "natural" "null" "of" "offset" "outer" "plan" "pragma" "query" "raise" 
// "regexp" "reindex" "rename" "replace" "restrict" "right" "rollback" 
// "row" "temp" "temporary" "trigger" "vacuum" "view" "virtual" "indexed" 
// "savepoint" "release" INTEGER FLOAT VARIABLE ID STRING LP BLOB 
const BitSet SqliteParser::_tokenSet_23(_tokenSet_23_data_,24);
const unsigned long SqliteParser::_tokenSet_24_data_[] = { 1073741826UL, 1346109689UL, 4234478538UL, 1728071602UL, 62918659UL, 3283102721UL, 267649280UL, 873010048UL, 99824UL, 259911488UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "and" "as" "asc" "attach" "before" "begin" 
// "between" "by" "cascade" "cast" "column" "conflict" "cross" "current_date" 
// "current_time" "current_timestamp" "database" "deferred" "desc" "detach" 
// "end" "each" "else" "escape" "except" "exclusive" "explain" "fail" "for" 
// "from" "full" "glob" "group" "having" "if" "ignore" "immediate" "initially" 
// "inner" "instead" "intersect" "join" "key" "left" "like" "limit" "match" 
// "natural" "not" "null" "of" "offset" "or" "order" "outer" "plan" "pragma" 
// "query" "raise" "regexp" "reindex" "rename" "replace" "restrict" "right" 
// "rollback" "row" "temp" "temporary" "then" "trigger" "union" "using" 
// "vacuum" "view" "virtual" "when" "where" "indexed" "savepoint" "release" 
// NOT_EQ ID STRING MINUS RP SEMI PLUS STAR SLASH REM EQ LE LSHIFT LESS_THAN 
// GE RSHIFT GT BITOR CONCAT COMMA BITAND 
const BitSet SqliteParser::_tokenSet_24(_tokenSet_24_data_,20);
const unsigned long SqliteParser::_tokenSet_25_data_[] = { 1073741824UL, 1345061065UL, 2355430346UL, 1862271794UL, 29360129UL, 3257926657UL, 267649280UL, 872419712UL, 98752UL, 128UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "full" "glob" "if" "ignore" "immediate" "in" "initially" 
// "inner" "instead" "key" "left" "like" "match" "natural" "of" "offset" 
// "outer" "plan" "pragma" "query" "raise" "regexp" "reindex" "rename" 
// "replace" "restrict" "right" "rollback" "row" "temp" "temporary" "trigger" 
// "vacuum" "view" "virtual" "indexed" "savepoint" "release" ID STRING 
// LP 
const BitSet SqliteParser::_tokenSet_25(_tokenSet_25_data_,20);
const unsigned long SqliteParser::_tokenSet_26_data_[] = { 1073741826UL, 1346109689UL, 4234478538UL, 1728071602UL, 62918659UL, 3283094529UL, 267649280UL, 873010048UL, 99824UL, 259911488UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "and" "as" "asc" "attach" "before" "begin" 
// "between" "by" "cascade" "cast" "column" "conflict" "cross" "current_date" 
// "current_time" "current_timestamp" "database" "deferred" "desc" "detach" 
// "end" "each" "else" "escape" "except" "exclusive" "explain" "fail" "for" 
// "from" "full" "glob" "group" "having" "if" "ignore" "immediate" "initially" 
// "inner" "instead" "intersect" "join" "key" "left" "like" "limit" "match" 
// "natural" "not" "of" "offset" "or" "order" "outer" "plan" "pragma" "query" 
// "raise" "regexp" "reindex" "rename" "replace" "restrict" "right" "rollback" 
// "row" "temp" "temporary" "then" "trigger" "union" "using" "vacuum" "view" 
// "virtual" "when" "where" "indexed" "savepoint" "release" NOT_EQ ID STRING 
// MINUS RP SEMI PLUS STAR SLASH REM EQ LE LSHIFT LESS_THAN GE RSHIFT GT 
// BITOR CONCAT COMMA BITAND 
const BitSet SqliteParser::_tokenSet_26(_tokenSet_26_data_,20);
const unsigned long SqliteParser::_tokenSet_27_data_[] = { 1073741826UL, 4030464255UL, 4252959743UL, 4009772979UL, 62918683UL, 3287301121UL, 536609025UL, 873403264UL, 122352UL, 528347072UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "all" "alter" "analyze" "and" "as" "asc" "attach" 
// "before" "begin" "between" "by" "cascade" "case" "cast" "check" "collate" 
// "column" "commit" "conflict" "constraint" "create" "cross" "current_date" 
// "current_time" "current_timestamp" "database" "default" "deferred" "deferrable" 
// "delete" "desc" "detach" "drop" "end" "each" "else" "escape" "except" 
// "exclusive" "exists" "explain" "fail" "for" "from" "full" "glob" "group" 
// "having" "if" "ignore" "immediate" "in" "initially" "inner" "insert" 
// "instead" "intersect" "is" "isnull" "join" "key" "left" "like" "limit" 
// "match" "natural" "not" "notnull" "null" "of" "offset" "on" "or" "order" 
// "outer" "plan" "pragma" "primary" "query" "raise" "references" "regexp" 
// "reindex" "rename" "replace" "restrict" "right" "rollback" "row" "select" 
// "temp" "temporary" "then" "trigger" "union" "unique" "update" "using" 
// "vacuum" "view" "virtual" "when" "where" "indexed" "savepoint" "release" 
// NOT_EQ INTEGER FLOAT VARIABLE ID STRING MINUS LP RP SEMI PLUS STAR SLASH 
// REM EQ LE LSHIFT LESS_THAN GE RSHIFT GT BITOR CONCAT COMMA BITAND BITNOT 
// BLOB 
const BitSet SqliteParser::_tokenSet_27(_tokenSet_27_data_,24);
const unsigned long SqliteParser::_tokenSet_28_data_[] = { 1073741826UL, 1346109689UL, 4234478539UL, 1862289330UL, 62918683UL, 3283098625UL, 267649280UL, 873010048UL, 99824UL, 259911488UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "and" "as" "asc" "attach" "before" "begin" 
// "between" "by" "cascade" "cast" "collate" "column" "conflict" "cross" 
// "current_date" "current_time" "current_timestamp" "database" "deferred" 
// "desc" "detach" "end" "each" "else" "escape" "except" "exclusive" "explain" 
// "fail" "for" "from" "full" "glob" "group" "having" "if" "ignore" "immediate" 
// "in" "initially" "inner" "instead" "intersect" "is" "isnull" "join" 
// "key" "left" "like" "limit" "match" "natural" "not" "notnull" "of" "offset" 
// "or" "order" "outer" "plan" "pragma" "query" "raise" "regexp" "reindex" 
// "rename" "replace" "restrict" "right" "rollback" "row" "temp" "temporary" 
// "then" "trigger" "union" "using" "vacuum" "view" "virtual" "when" "where" 
// "indexed" "savepoint" "release" NOT_EQ ID STRING MINUS RP SEMI PLUS 
// STAR SLASH REM EQ LE LSHIFT LESS_THAN GE RSHIFT GT BITOR CONCAT COMMA 
// BITAND 
const BitSet SqliteParser::_tokenSet_28(_tokenSet_28_data_,20);
const unsigned long SqliteParser::_tokenSet_29_data_[] = { 1073741824UL, 1345061065UL, 2355430346UL, 1862271794UL, 29360129UL, 3257926657UL, 267649280UL, 872419712UL, 98752UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "full" "glob" "if" "ignore" "immediate" "in" "initially" 
// "inner" "instead" "key" "left" "like" "match" "natural" "of" "offset" 
// "outer" "plan" "pragma" "query" "raise" "regexp" "reindex" "rename" 
// "replace" "restrict" "right" "rollback" "row" "temp" "temporary" "trigger" 
// "vacuum" "view" "virtual" "indexed" "savepoint" "release" ID STRING 
const BitSet SqliteParser::_tokenSet_29(_tokenSet_29_data_,20);
const unsigned long SqliteParser::_tokenSet_30_data_[] = { 1073741824UL, 1881931977UL, 2355430346UL, 1728054067UL, 29360129UL, 3257936897UL, 267649280UL, 872419712UL, 121280UL, 268438976UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "case" "cast" "column" "conflict" "cross" "current_date" "current_time" 
// "current_timestamp" "database" "deferred" "desc" "detach" "end" "each" 
// "exclusive" "exists" "explain" "fail" "for" "full" "glob" "if" "ignore" 
// "immediate" "initially" "inner" "instead" "key" "left" "like" "match" 
// "natural" "not" "null" "of" "offset" "outer" "plan" "pragma" "query" 
// "raise" "regexp" "reindex" "rename" "replace" "restrict" "right" "rollback" 
// "row" "temp" "temporary" "trigger" "vacuum" "view" "virtual" "indexed" 
// "savepoint" "release" INTEGER FLOAT VARIABLE ID STRING MINUS LP RP PLUS 
// STAR BITNOT BLOB 
const BitSet SqliteParser::_tokenSet_30(_tokenSet_30_data_,24);
const unsigned long SqliteParser::_tokenSet_31_data_[] = { 2UL, 2147483648UL, 655377UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 768UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "check" "collate" "constraint" "default" "deferrable" "not" "null" 
// "primary" "references" "unique" RP SEMI 
const BitSet SqliteParser::_tokenSet_31(_tokenSet_31_data_,20);
const unsigned long SqliteParser::_tokenSet_32_data_[] = { 2UL, 2147483648UL, 655377UL, 0UL, 0UL, 10240UL, 524289UL, 131072UL, 0UL, 512UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "check" "collate" "constraint" "default" "deferrable" "not" "null" 
// "primary" "references" "unique" SEMI 
const BitSet SqliteParser::_tokenSet_32(_tokenSet_32_data_,20);
const unsigned long SqliteParser::_tokenSet_33_data_[] = { 4294967282UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 255UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF null null null null null null null null null null null null null 
// null null null null null null null null null null null null null "abort" 
// "add" "after" "all" "alter" "analyze" "and" "as" "asc" "attach" "autoincrement" 
// null null null null null null null null null "before" "begin" "between" 
// "by" null null null null null null "cascade" "case" "cast" "check" "collate" 
// "column" "commit" "conflict" "constraint" "create" "cross" "current_date" 
// "current_time" "current_timestamp" null null null null null null "database" 
// "default" "deferred" "deferrable" "delete" "desc" "detach" "distinct" 
// "drop" null "end" "each" "else" "escape" "except" "exclusive" "exists" 
// "explain" null null "fail" "for" "foreign" "from" "full" "glob" "group" 
// null null null "having" null null null null null null null null null 
// "if" "ignore" "immediate" "in" "index" "initially" "inner" "insert" 
// "instead" "intersect" "into" "is" "isnull" null null null null null 
// null null "join" null null null null null null null null null "key" 
// "left" "like" "limit" null null null null null null "match" null null 
// null null null null null null null "natural" "not" "notnull" "null" 
// null null null null null null "of" "offset" "on" "or" "order" "outer" 
// null null null null "plan" "pragma" "primary" null null null null null 
// null null "query" null null null null null null null null null "raise" 
// "references" "regexp" "reindex" "rename" "replace" "restrict" "right" 
// "rollback" "row" "select" "set" null null null null null null null null 
// "table" "temp" "temporary" "then" "to" "transaction" "trigger" null 
// null null "union" "unique" "update" "using" null null null null null 
// null "vacuum" "values" "view" "virtual" null null null null null null 
// "when" "where" "indexed" "savepoint" "release" COMMENT NOT_EQ INTEGER 
// FLOAT DOT VARIABLE ID STRING IFEXISTS_DEF IFNOTEXISTS_DEF AS_DEF CAST_DEF 
// IDEXP_DEF DOTEXP_DEF FUNC_DEF NULLOP_DEF IN_DEF ATTACHDB_DEF ATTACH_DEF 
// DETACHDB_DEF DETACH_DEF VIEW_DEF TRIGGER_DEF VIRTUAL_DEF COLUMN_DEF 
// TCONS_DEF SPACE NEW_LINE SL_COMMENT MINUS LP RP SEMI PLUS STAR ML_COMMENT 
// SLASH REM EQ LE NE LSHIFT LESS_THAN GE RSHIFT GT NE_LEGAL BITOR CONCAT 
// COMMA BITAND BITNOT STRING_LITERAL1 STRING_LITERAL2 STRING_LITERAL3 
// NUMBERIC ID_1 VARIABLE_1 VARIABLE_2 BLOB ID_2 SIMPLE_LETTER ANY 
const BitSet SqliteParser::_tokenSet_33(_tokenSet_33_data_,40);
const unsigned long SqliteParser::_tokenSet_34_data_[] = { 1073741824UL, 1881931977UL, 2355430346UL, 1728054067UL, 29360129UL, 3257936897UL, 267649280UL, 872419712UL, 121280UL, 268438720UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "case" "cast" "column" "conflict" "cross" "current_date" "current_time" 
// "current_timestamp" "database" "deferred" "desc" "detach" "end" "each" 
// "exclusive" "exists" "explain" "fail" "for" "full" "glob" "if" "ignore" 
// "immediate" "initially" "inner" "instead" "key" "left" "like" "match" 
// "natural" "not" "null" "of" "offset" "outer" "plan" "pragma" "query" 
// "raise" "regexp" "reindex" "rename" "replace" "restrict" "right" "rollback" 
// "row" "temp" "temporary" "trigger" "vacuum" "view" "virtual" "indexed" 
// "savepoint" "release" INTEGER FLOAT VARIABLE ID STRING MINUS LP PLUS 
// STAR BITNOT BLOB 
const BitSet SqliteParser::_tokenSet_34(_tokenSet_34_data_,24);
const unsigned long SqliteParser::_tokenSet_35_data_[] = { 2UL, 0UL, 1073741824UL, 17408UL, 33554434UL, 16777216UL, 0UL, 65536UL, 32UL, 768UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "except" "group" "having" "intersect" "limit" "order" "union" "where" 
// RP SEMI 
const BitSet SqliteParser::_tokenSet_35(_tokenSet_35_data_,20);
const unsigned long SqliteParser::_tokenSet_36_data_[] = { 2UL, 0UL, 1073741824UL, 17408UL, 33554434UL, 16777216UL, 0UL, 65536UL, 0UL, 768UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "except" "group" "having" "intersect" "limit" "order" "union" RP 
// SEMI 
const BitSet SqliteParser::_tokenSet_36(_tokenSet_36_data_,20);
const unsigned long SqliteParser::_tokenSet_37_data_[] = { 2UL, 0UL, 1073741824UL, 16384UL, 33554434UL, 16777216UL, 0UL, 65536UL, 0UL, 768UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "except" "having" "intersect" "limit" "order" "union" RP SEMI 
const BitSet SqliteParser::_tokenSet_37(_tokenSet_37_data_,20);
const unsigned long SqliteParser::_tokenSet_38_data_[] = { 2UL, 0UL, 1073741824UL, 0UL, 33554434UL, 16777216UL, 0UL, 65536UL, 0UL, 768UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "except" "intersect" "limit" "order" "union" RP SEMI 
const BitSet SqliteParser::_tokenSet_38(_tokenSet_38_data_,20);
const unsigned long SqliteParser::_tokenSet_39_data_[] = { 1073741826UL, 1882980601UL, 3966043083UL, 1862289331UL, 62914587UL, 3283106817UL, 536084736UL, 872485248UL, 130544UL, 528347072UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "and" "as" "asc" "attach" "before" "begin" 
// "between" "by" "cascade" "case" "cast" "collate" "column" "conflict" 
// "cross" "current_date" "current_time" "current_timestamp" "database" 
// "deferred" "desc" "detach" "end" "each" "escape" "except" "exclusive" 
// "exists" "explain" "fail" "for" "from" "full" "glob" "group" "having" 
// "if" "ignore" "immediate" "in" "initially" "inner" "instead" "intersect" 
// "is" "isnull" "key" "left" "like" "limit" "match" "natural" "not" "notnull" 
// "null" "of" "offset" "or" "order" "outer" "plan" "pragma" "query" "raise" 
// "regexp" "reindex" "rename" "replace" "restrict" "right" "rollback" 
// "row" "select" "temp" "temporary" "trigger" "union" "vacuum" "view" 
// "virtual" "when" "where" "indexed" "savepoint" "release" NOT_EQ INTEGER 
// FLOAT DOT VARIABLE ID STRING MINUS LP RP SEMI PLUS STAR SLASH REM EQ 
// LE LSHIFT LESS_THAN GE RSHIFT GT BITOR CONCAT COMMA BITAND BITNOT BLOB 
const BitSet SqliteParser::_tokenSet_39(_tokenSet_39_data_,24);
const unsigned long SqliteParser::_tokenSet_40_data_[] = { 1073741824UL, 1345061097UL, 2355430282UL, 654311986UL, 20971521UL, 3224371201UL, 234094848UL, 872419712UL, 98752UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "as" "asc" "attach" "before" "begin" "by" 
// "cascade" "cast" "column" "conflict" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "glob" "if" "ignore" "immediate" "initially" "instead" 
// "key" "like" "match" "of" "offset" "plan" "pragma" "query" "raise" "regexp" 
// "reindex" "rename" "replace" "restrict" "rollback" "row" "temp" "temporary" 
// "trigger" "vacuum" "view" "virtual" "indexed" "savepoint" "release" 
// ID STRING 
const BitSet SqliteParser::_tokenSet_40(_tokenSet_40_data_,20);
const unsigned long SqliteParser::_tokenSet_41_data_[] = { 2UL, 0UL, 1073741824UL, 17536UL, 33554434UL, 16777216UL, 0UL, 65536UL, 32UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "except" "from" "group" "having" "intersect" "limit" "order" "union" 
// "where" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_41(_tokenSet_41_data_,20);
const unsigned long SqliteParser::_tokenSet_42_data_[] = { 0UL, 0UL, 64UL, 1073742080UL, 8392704UL, 33555456UL, 33554432UL, 0UL, 0UL, 67108864UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "cross" "full" "inner" "join" "left" "natural" "outer" "right" COMMA 
const BitSet SqliteParser::_tokenSet_42(_tokenSet_42_data_,20);
const unsigned long SqliteParser::_tokenSet_43_data_[] = { 1073741826UL, 1345061065UL, 3429172170UL, 1728071474UL, 62918659UL, 3278900225UL, 267649280UL, 873009536UL, 98784UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "except" "exclusive" 
// "explain" "fail" "for" "full" "glob" "group" "having" "if" "ignore" 
// "immediate" "initially" "inner" "instead" "intersect" "join" "key" "left" 
// "like" "limit" "match" "natural" "not" "of" "offset" "on" "order" "outer" 
// "plan" "pragma" "query" "raise" "regexp" "reindex" "rename" "replace" 
// "restrict" "right" "rollback" "row" "temp" "temporary" "trigger" "union" 
// "using" "vacuum" "view" "virtual" "where" "indexed" "savepoint" "release" 
// ID STRING RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_43(_tokenSet_43_data_,20);
const unsigned long SqliteParser::_tokenSet_44_data_[] = { 2UL, 0UL, 1073741888UL, 1073759488UL, 41947138UL, 54529024UL, 33554432UL, 589824UL, 96UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "cross" "except" "full" "group" "having" "inner" "intersect" "join" 
// "left" "limit" "natural" "not" "on" "order" "outer" "right" "union" 
// "using" "where" "indexed" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_44(_tokenSet_44_data_,20);
const unsigned long SqliteParser::_tokenSet_45_data_[] = { 1073741826UL, 1882980607UL, 4252304367UL, 4009772979UL, 62918683UL, 3287301121UL, 536084736UL, 873272192UL, 122352UL, 528347072UL, 16UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "abort" "after" "all" "alter" "analyze" "and" "as" "asc" "attach" 
// "before" "begin" "between" "by" "cascade" "case" "cast" "collate" "column" 
// "commit" "conflict" "create" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "delete" "desc" "detach" "drop" "end" "each" "else" 
// "escape" "except" "exclusive" "exists" "explain" "fail" "for" "from" 
// "full" "glob" "group" "having" "if" "ignore" "immediate" "in" "initially" 
// "inner" "insert" "instead" "intersect" "is" "isnull" "join" "key" "left" 
// "like" "limit" "match" "natural" "not" "notnull" "null" "of" "offset" 
// "on" "or" "order" "outer" "plan" "pragma" "query" "raise" "regexp" "reindex" 
// "rename" "replace" "restrict" "right" "rollback" "row" "select" "temp" 
// "temporary" "then" "trigger" "union" "update" "using" "vacuum" "view" 
// "virtual" "when" "where" "indexed" "savepoint" "release" NOT_EQ INTEGER 
// FLOAT VARIABLE ID STRING MINUS LP RP SEMI PLUS STAR SLASH REM EQ LE 
// LSHIFT LESS_THAN GE RSHIFT GT BITOR CONCAT COMMA BITAND BITNOT BLOB 
const BitSet SqliteParser::_tokenSet_45(_tokenSet_45_data_,24);
const unsigned long SqliteParser::_tokenSet_46_data_[] = { 2UL, 0UL, 1073741888UL, 1073759488UL, 41947138UL, 54526976UL, 33554432UL, 589824UL, 32UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "cross" "except" "full" "group" "having" "inner" "intersect" "join" 
// "left" "limit" "natural" "on" "order" "outer" "right" "union" "using" 
// "where" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_46(_tokenSet_46_data_,20);
const unsigned long SqliteParser::_tokenSet_47_data_[] = { 2UL, 0UL, 1073741888UL, 1073759488UL, 41947138UL, 50332672UL, 33554432UL, 589824UL, 32UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "cross" "except" "full" "group" "having" "inner" "intersect" "join" 
// "left" "limit" "natural" "order" "outer" "right" "union" "using" "where" 
// RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_47(_tokenSet_47_data_,20);
const unsigned long SqliteParser::_tokenSet_48_data_[] = { 2UL, 0UL, 1073741888UL, 1073759488UL, 41947138UL, 50332672UL, 33554432UL, 65536UL, 32UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "cross" "except" "full" "group" "having" "inner" "intersect" "join" 
// "left" "limit" "natural" "order" "outer" "right" "union" "where" RP 
// SEMI COMMA 
const BitSet SqliteParser::_tokenSet_48(_tokenSet_48_data_,20);
const unsigned long SqliteParser::_tokenSet_49_data_[] = { 1073741824UL, 1345061065UL, 2355430346UL, 1728054066UL, 29360129UL, 3257926657UL, 267649280UL, 872419712UL, 98752UL, 128UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// "abort" "after" "analyze" "asc" "attach" "before" "begin" "by" "cascade" 
// "cast" "column" "conflict" "cross" "current_date" "current_time" "current_timestamp" 
// "database" "deferred" "desc" "detach" "end" "each" "exclusive" "explain" 
// "fail" "for" "full" "glob" "if" "ignore" "immediate" "initially" "inner" 
// "instead" "key" "left" "like" "match" "natural" "of" "offset" "outer" 
// "plan" "pragma" "query" "raise" "regexp" "reindex" "rename" "replace" 
// "restrict" "right" "rollback" "row" "temp" "temporary" "trigger" "vacuum" 
// "view" "virtual" "indexed" "savepoint" "release" ID STRING LP 
const BitSet SqliteParser::_tokenSet_49(_tokenSet_49_data_,20);
const unsigned long SqliteParser::_tokenSet_50_data_[] = { 2UL, 0UL, 1073741824UL, 0UL, 33554434UL, 0UL, 0UL, 65536UL, 0UL, 67109632UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// EOF "except" "intersect" "limit" "union" RP SEMI COMMA 
const BitSet SqliteParser::_tokenSet_50(_tokenSet_50_data_,20);


