header "pre_include_cpp" {
	#include "StdAfx.h"
}

header {
#include "SqliteEntity.h"
#include <antlr/TokenStreamRewriteEngine.hpp>
#include <antlr/TokenStreamHiddenTokenFilter.hpp>
#include "UnicodeCharBuffer.hpp"
#include "UnicodeCharScanner.hpp"

ANTLR_USING_NAMESPACE(std)
ANTLR_USING_NAMESPACE(antlr)
}



options {
	// Global options for the entire grammar file
	language=Cpp;
	namespaceAntlr="";
	namespaceStd=""; 
	genHashLines = false;
}

{

}

class SqliteLexer extends Lexer("UnicodeCharScanner");


options {
    importVocab = SqliteImp; // Main import vocabulary file
    exportVocab = SqliteLex; // Lexer's exportVocab is parser's importVocab
    testLiterals = false; // For literals' translation see <REGULAR_ID>
    k = 3; // Lookahead
    defaultErrorHandler = false; // Automatic error handling
    caseSensitive = true; // The grammar per se may be case sensitive
    caseSensitiveLiterals = false; // Keywords are case insensitive
    //charVocabulary = '\0' .. '\377'; // Accept 8-bit characters
    charVocabulary='\u0000'..'\uFFFE';    
    noConstructors = true;    
    filter = ANY; // Filter off all unhandled characters
}

tokens { // moved to the import vocabulary
	COMMENT; // Imaginary token based on subtoken typecasting 
	NOT_EQ;  // Imaginary token based on subtoken typecasting 
	INTEGER; // Imaginary token based on subtoken typecasting 
	FLOAT; //Imaginary token based on subtoken typecasting 
	DOT; //Imaginary token based on subtoken typecasting 
	VARIABLE; //Imaginary token based on subtoken typecasting 
	ID; //Imaginary token based on subtoken typecasting 
	STRING; //Imaginary token based on subtoken typecasting      
	IFEXISTS_DEF;
	IFNOTEXISTS_DEF;
	AS_DEF;
	CAST_DEF;
	IDEXP_DEF;
	DOTEXP_DEF;
	FUNC_DEF;
	NULLOP_DEF;
	IN_DEF;
	ATTACHDB_DEF;
	ATTACH_DEF;
	DETACHDB_DEF;
	DETACH_DEF;
	VIEW_DEF;
	TRIGGER_DEF;
	VIRTUAL_DEF;
	COLUMN_DEF;
	TCONS_DEF;
}

{
public:
	bool done;
	bool comment_valid;
	void uponEOF()
	{
		done = true;
	}	

    //note: set case_sensitive=false
	SqliteLexer( std::istream& in )
	: UnicodeCharScanner(new UnicodeCharBuffer(in),false)
	{
		initLiterals();
	}
	SqliteLexer( UnicodeCharBuffer& ib )
	: UnicodeCharScanner(ib,false)
	{
		initLiterals();
	}
	
    /**
     * State variable used to hold current lexer state.
     * In this case it's used for incomplete tokens only.
     */
    int state;

    int getState() {
        return state;
    }

    void resetState() {
        state = 0;
    }	
    
}

SPACE	:	(' '
	|	'\t'
	|   '\f'
	|	'\r')
		/*{ _ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP; }*/
	;

NEW_LINE:
	'\n'  {newline();}/*{_ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP;newline();} */
    ;
	
SL_COMMENT:  
    '-' '-' ( ~( '\n') )* (NEW_LINE)? {if (comment_valid)
                                          $setType(COMMENT);
                                       else
                                          $setType(ANTLR_USE_NAMESPACE(antlr)Token::SKIP); 
                                       }
    ;

MINUS
options {
  paraphrase = "-";
}
: '-'
    ;

LP
options {
  paraphrase = "(";
}
:	'('
	;

RP
options {
  paraphrase = ")";
}
:	')'
	;

SEMI
options {
  paraphrase = ";";
}
:	';'
	;
	
PLUS
options {
  paraphrase = "+";
}
:	'+'
	;
	
STAR
options {
  paraphrase = "*";
}
:	'*'
	;

ML_COMMENT
	:	
	    '/' '*'
		(	/*	'\r' '\n' can be matched in one alternative or by matching
				'\r' in one iteration and '\n' in another.  I am trying to
				handle any flavor of newline that comes in, but the language
				that allows both "\r\n" and "\r" and "\n" to all be valid
				newline is ambiguous.  Consequently, the resulting grammar
				must be ambiguous.  I'm shutting this warning off.
			 */
			options {
				generateAmbigWarnings=false;
			}
		:
			{ LA(2)!='/' }? '*'
		|	'\n'			{newline();}
		|	~('*'|'\n')
		)*
		'*' '/' {if (comment_valid)
                    $setType(COMMENT);
                else
                    $setType(ANTLR_USE_NAMESPACE(antlr)Token::SKIP); 
                }
	;
	
SLASH
options {
  paraphrase = "/";
}
: '/'
    ;	
	
REM
options {
  paraphrase = "%";
}
:	'%'
   ;
   
EQ
options {
  paraphrase = "=";
}
:   '=' ('=')? 
   ;

LE
options {
  paraphrase = "<=";
}
:   '<' '='
   ;
   
NE
options {
  paraphrase = "<>";
}
:   '<' '>'  {$setType(NOT_EQ);}
   ;

LSHIFT
options {
  paraphrase = "<<";
}
: '<' '<'
   ;

LESS_THAN
options {
  paraphrase = "<";
}
:   '<'
   ;
   
GE
options {
  paraphrase = ">=";
}
:   '>' '='
   ;
   
RSHIFT
options {
  paraphrase = ">>";
}
: '>' '>'
   ;

GT
options {
  paraphrase = ">";
}
:   '>'
   ;
   
NE_LEGAL
options {
  paraphrase = "!=";
}
:  '!' '=' {$setType(NOT_EQ);}
   ;
   
BITOR 
options {
  paraphrase = "||";
}
: '|' '|'
   ;

CONCAT
options {
  paraphrase = "|";
}
: '|'
   ;
   
COMMA
options {
  paraphrase = ",";
}
: ','
   ;

BITAND
options {
  paraphrase = "&";
}
: '&'
   ;

BITNOT
options {
  paraphrase = "~";
}
: '~'
   ;

STRING_LITERAL1
options {
  paraphrase = "string";
}
	:	'`'  (('`' '`')|NEW_LINE|~'`')* '`' {$setType(STRING);}
	;

STRING_LITERAL2
options {
  paraphrase = "string";
}
	:	'\''  (('\'' '\'')|NEW_LINE|~'\'')* '\'' {$setType(STRING);}
	;

STRING_LITERAL3
options {
  paraphrase = "string";
}
	:	'"'  (('"' '"')|NEW_LINE|~'"')* '"' {$setType(STRING);}
	;


NUMBERIC
    :   '.' {$setType(DOT);}
            (	('0'..'9')+ (('e'|'E') ('+'|'-')? ('0'..'9')+)?  {$setType(FLOAT);}    )?

	|	(('0'..'9')+{$setType(INTEGER);}) 
	        ('.' ('0'..'9')*  {$setType(FLOAT);})?
	        ((('e'|'E') ('+'|'-')? ('0'..'9')+) {$setType(FLOAT);} )? 
	;
	
	
ID_1
options {
  paraphrase = "identifier";
}
: '[' (~']')* ']' {$setType(ID);}
   ;

VARIABLE_1
options {
  paraphrase = "variable";
}
: '?' (('0'..'9')+)? {$setType(VARIABLE);}
   ;

VARIABLE_2
options {
  paraphrase = "variable";
}
:  ('@' | ':' ) ('0'..'9'| SIMPLE_LETTER | '$')+ {$setType(VARIABLE);}
   ;

BLOB: ('x' | 'X') ('\'' | '"') ('0'..'9' | 'A'..'F' | 'a'..'f')+
   ;   

ID_2
options {
  paraphrase = "identifier";
}
: SIMPLE_LETTER ('0'..'9'| SIMPLE_LETTER | '$')* {$setType(testLiteralsTable(ID));}
   ;

protected

SIMPLE_LETTER:
     'a'..'z' 
   | 'A'..'Z' 
   | '_'
   | '\u0080'..'\ufffe'
;

protected

ANY : 
	.
;

//
//  SqliteParser
{
#include <boost/algorithm/string.hpp>
using namespace boost;

const char* SqliteParser::imgTokenNames[] = {
    "<invalid token>",
	"<expression>",
	"<identifier>",
	0
};

}

class SqliteParser extends Parser;
options {
    importVocab = SqliteLex; // Import vocabulary module from the lexer
    exportVocab = Sqlite; // Export vocabulary
    k = 2; // Lookahead
    defaultErrorHandler = false; // Automatic error handling
    codeGenMakeSwitchThreshold=4; // Code optimization
    codeGenBitsetTestThreshold=8; // Code optimization
    buildAST = true; // Automatic AST building
    noConstructors = true;	// disable generation of default constructors
}

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
}

// ---------------
// Top-level rules
// ---------------
//{ Rule #--- <any_token> is a helper rule for the lexer debugging
any_token :! 
	. // {cout << tokenNames[LA(1)] << " " << LT(1)->getText() << endl;}
;

sql_script returns [string szSemiPos]
{
   szSemiPos="";
}
: 
	(sql_stmt)? ( semi:SEMI! 
	{
	   RefTokenWithIndex ts(semi);
	   string sline=IntToString(ts->getLine());
	   string scolumn=IntToString(ts->getColumn());
	   
	   szSemiPos=szSemiPos+sline+"="+scolumn+"\n";
	   
	}
	(sql_stmt)? )*

;

multi_script returns [string szSemiPos]
{
   szSemiPos="";
}
: 
	single_script ( semi:SEMI 
	{
	   RefTokenWithIndex ts(semi);
	   string sline=IntToString(ts->getLine());
	   string scolumn=IntToString(ts->getColumn());
	   
	   szSemiPos=szSemiPos+sline+"="+scolumn+"\n";
	   
	}
	single_script )*

;

single_script:
  (~SEMI)*   
;

sql_single_stmt 

: 
	(  sql_stmt)? (SEMI)?
;

sql_stmt 
{
SyntaxCheckStruct st;
Sqlite_Sql_Type temp_type=sst_Unknown;
m_tmpstate=ss_Unknown;
}
: 
      (explain {temp_type=sst_Explain;})?
      (
	  sql_data_stmt 
	  |sql_schema_stmt 
	  |sql_transaction_stmt
	  )	  
	  {
	    if (temp_type!=sst_Unknown)
	     m_sqltype=sst_Explain;
	  }

      exception catch [ NoViableAltException& e ] 
	  { 
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
	  }
	  catch [MismatchedTokenException& e]
	  {
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
	  }
	  catch [SemanticException& e]
	  {
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
	   }
	   catch [RecognitionException& e]
	   {
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
  	   }
;
sql_data_stmt : 
	  select_stmt 
	| insert_stmt
	| update_stmt 
	| delete_stmt 
;

explain : 
	"explain"^ ("query" "plan")?
;

insert_stmt 
{
   Sqlite_Sql_Type cmd_type;
}
: 
	cmd_type=insert_cmd "into" table_name (inscollist_opt)? 
	("values" LP itemlist RP | select_stmt | "default" "values")
	{
	   m_sqltype=cmd_type;
	}
;

insert_cmd returns [Sqlite_Sql_Type cmd_type]: 
    ("insert" (orconf)? {cmd_type=sst_Insert;}) | ("replace" {cmd_type=sst_Replace;})
;

inscollist_opt:
   LP nm (COMMA nm)* RP
;

update_stmt : 
	  "update" (orconf)? table_name (indexed_opt)? "set" setlist (where_opt)?
	  {
	     m_sqltype=sst_Update;
	  }
;

delete_stmt : 
	  "delete" "from" table_name (indexed_opt)? (where_opt)?
	  {
	     m_sqltype=sst_Delete;
	  }
;
//}

table_name
{
   RefToken e;
   m_tmpstate=ss_FromTable;   
}
:
     (dbnm)? {e=LT(1);} nm 
     {
       if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
          m_sqlstate=ss_FromTable; 
       m_tmpstate=ss_Unknown;          
     } 
;

drop_name returns [string szName]
{
    RefToken e;
	if (m_sqltype==sst_DropTable)
		m_tmpstate=ss_DropTable; 
	else if (m_sqltype==sst_DropView)
		m_tmpstate=ss_FromView;
	else if (m_sqltype==sst_DropTrigger)
		m_tmpstate=ss_FromTrigger;
	else if (m_sqltype==sst_DropIndex)
		m_tmpstate=ss_DropIndex;

}
:
     (dbnm)? {e=LT(1);} szName=nm 
     {
       if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
       {  
           m_sqlstate=m_tmpstate;
       }
       m_tmpstate=ss_Unknown;
     } 
;

tableview_name returns [string szName]
{
   RefToken e;
   m_tmpstate=ss_FromTableView;   
   string szDbnm="";
}
:
     (szDbnm=dbnm)? {e=LT(1);} szName=nm 
     {
       if (e->getLine()==iRow && e->getColumn()<=iColumn && e->getColumn()>=(iColumn-e->getText().length()))
          m_sqlstate=ss_FromTableView; 
       m_tmpstate=ss_Unknown;          
       
       szName=szDbnm+szName;
     } 
;

sql_schema_stmt:
        create_stmt
	  | pragma_stmt
	  | drop_stmt
	  | vacuum_stmt
	  | alter_stmt
	  | reindex_stmt
	  | analyze_stmt
	  | attach_stmt

;

reindex_stmt:
   "reindex"^ (dbnm)? nm
;

analyze_stmt:
   "analyze"^ (dbnm)? nm
;

attach_stmt:
    ("attach" "database")=> "attach" "database" expr "as" expr (key_opt)? 
    {
       m_sqltype=sst_Attach;
       ## = #([ATTACHDB_DEF,"ATTACHDB_DEF"], #attach_stmt);
    }
   |"attach" expr "as" expr (key_opt)? 
   {
      m_sqltype=sst_Attach;
      ## = #([ATTACH_DEF,"ATTACH_DEF"], #attach_stmt);
   }
   |("detach" "database")=> "detach" "database" expr 
   {
      m_sqltype=sst_Detach;
      ## = #([DETACHDB_DEF,"DETACHDB_DEF"], #attach_stmt);
   }
   |"detach" expr
   {
      m_sqltype=sst_Detach;
      ## = #([DETACH_DEF,"DETACH_DEF"], #attach_stmt);
   }
;

key_opt: "key" expr
;

create_stmt
options{
//generateAmbigWarnings=false;
}
:
    {((LA(2) == SQL2RW_temp || LA(2)==SQL2RW_temporary) && LA(3)==SQL2RW_table) || (LA(2)==SQL2RW_table)}? create_table_stmt
   |create_virtual_table_stmt
   |{((LA(2) == SQL2RW_temp || LA(2)==SQL2RW_temporary) && LA(3)==SQL2RW_view) || (LA(2)==SQL2RW_view)}? create_view_stmt
   |{((LA(2) == SQL2RW_temp || LA(2)==SQL2RW_temporary) && LA(3)==SQL2RW_trigger) || (LA(2)==SQL2RW_trigger)}? create_trigger_stmt
   |create_index_stmt
;

create_virtual_table_stmt returns [CreateVirtualTableStruct tStruct]
{
   RefToken e;
   string szDbnm;   
}
:
    "create" "virtual" "table" (dName:dbnm {tStruct.szTableName=#dName->getText()+".";})?
    tName:nm {tStruct.szTableName=tStruct.szTableName+#tName->getText();}
    "using" mName:nm 
    {tStruct.szModule=#mName->getText();}
    //b:LP (vtabarglist)? e:RP
    b:LP ({e=LT(1);}~SEMI)*
    {
        if (iEnableEngine)
        {
			RefTokenWithIndex t1(b), t2(e);
				
 			ostringstream os;
			engine->originalToStream(os, t1->getIndex(), t2->getIndex()+1);
			tStruct.szParameters=trim_left_copy(os.str());	    
		}
        m_sqltype=sst_CreateVirtualTable;
        ##=#([VIRTUAL_DEF, "VIRTUAL_DEF"], #create_virtual_table_stmt);
    }
;

/*
vtabarglist: vtabarg (COMMA vtabarg)*
;

vtabarg: (vtabargtoken)*
;

vtabargtoken: ANY | LP anylist RP
;

anylist: (~SEMI)*
;
*/
create_table_stmt returns [CreateTableStruct tStruct]
{
tStruct.bTemp=false;
Sqlite_Sql_Type sql_type=sst_CreateTable;
}
:
	  "create" (temp 
	  {
	  tStruct.bTemp=true;
	  sql_type=sst_CreateTempTable;
	  } )?
	  "table" (ifnotexists)? (dbnm)? tName:nm
	  {
	    tStruct.szTableName=#tName->getText();
	    TrimId(tStruct.szTableName);
	  } 
	  ( table_column_stmt[tStruct] | table_select_stmt )
	  {
	     m_sqltype=sql_type;	  
	  }
;

create_ifnot_table_stmt returns [string sTable]
{
sTable="";
}
:
	  "create" (temp)?
	  t:"table" nm 
	  {
		RefTokenWithIndex t1(t);
		//Todo:fix memory leak
		engine->insertAfter(t1, " IF NOT EXISTS");
	  } 
	  (~SEMI)*
	  
	  {
	     ostringstream os; 
	     engine->toStream(os);
	     
	     sTable=os.str();	     
	  }
;

create_ifnot_view_stmt returns [string sView]
{
sView="";
}
:
	  "create" (temp)? v:"view"  
	  {
		RefTokenWithIndex v1(v);
		//Todo:fix memory leak
		engine->insertAfter(v1, " IF NOT EXISTS");
	  }
	  (dbnm)? vName:nm
	  "as" 
	  select_stmt
	  {
	     ostringstream os; 
	     engine->toStream(os);
	     
	     sView=os.str();		     
	  }
;

create_ifnot_trigger_stmt returns [string sTrigger]
{
CreateTriggerStruct tStruct;
sTrigger="";
}
:
      
	  "create" (temp)? t:"trigger" 
	  (dbnm)? nm (trigger_event[tStruct])?
	  database_event[tStruct] "on" tableview_name (for_stmt[tStruct])? 
	  trigger_action
	  {
		 RefTokenWithIndex t1(t);
		 //Todo:fix memory leak
   		 engine->insertAfter(t1, " IF NOT EXISTS");
	  
	     ostringstream os; 
	     engine->toStream(os);
	     
	     sTrigger=os.str();		     
	  }
;

create_ifnot_index_stmt returns [string sIndex]
{
CreateIndexStruct iStruct;
sIndex="";
}
:
	  "create" ("unique")? i:"index"
	  {
		RefTokenWithIndex i1(i);
		//Todo:fix memory leak
		engine->insertAfter(i1, " IF NOT EXISTS");
	  }
	  (dbnm)? nm
	  "on" nm
	  LP column_name[iStruct] ( COMMA column_name[iStruct] )* RP
	  (conflict_clause )?	
	  {
	     ostringstream os; 
	     engine->toStream(os);
	     
	     sIndex=os.str();		     
	  }
;

table_column_stmt [CreateTableStruct& tStruct]
:
  LP column_def[tStruct] (COMMA! column_def[tStruct])* (COMMA! tcons[tStruct])* RP
;

column_def[CreateTableStruct& tStruct]
{
ColumnDef col;
col.nTypePrecision=-1;
col.nTypeSize=-1;
}
:
  colName:nm (column_type[col])? (column_constraint[col])*
  {
     col.szName=#colName->getText();
     TrimId(col.szName);
     tStruct.vColumns.push_back(col);
     ##=#([COLUMN_DEF, "COLUMN_DEF"],#column_def);
  }
;

column_type [ColumnDef& col]
{
  string szSize,szPrecision; 
}
:
  ( typName:type_name {col.szType=#typName->getText();}) (LP szSize=signed_num {col.nTypeSize=atoi(szSize.c_str());}
  (COMMA szPrecision=signed_num{col.nTypePrecision=atoi(szPrecision.c_str());})? RP)?
  {
    TrimId(col.szType);
  }
;

column_constraint [ColumnDef& def]
{
ColumnConstraint cc;
ConflictAlgorithm ca=caNone;
cc.bAutoIncre=false;
cc.order=otNone;
cc.caConflict=ca;
OrderType order=otNone;
string szVal="";
string szCollate="";
}
:

   ("constraint" ccName:nm {cc.szName=#ccName->getText();})?
   (
    (defer_subclause)=>defer_subclause {cc.ctType=ctDefer;}
   | "null" (ca=conflict_clause {cc.caConflict=ca;})?  
   | "not" "null" (ca=conflict_clause {cc.caConflict=ca;})? {cc.ctType=ctNotNull;} 
   | "primary" "key" (order=sortorder{cc.order=order;})? (ca=conflict_clause{cc.caConflict=ca;})? ("autoincrement"{cc.bAutoIncre=true;})?
   {cc.ctType=ctPrimaryKey;}
   | "unique" (ca=conflict_clause{cc.caConflict=ca;})?{cc.ctType=ctUnique;}
   | "check" l:LP expr r:RP (ca=conflict_clause{cc.caConflict=ca;})? 
   {
     cc.ctType=ctCheck;
     if (iEnableEngine)
     {
       RefTokenWithIndex t1(l), t2(r);
		
 	   ostringstream os;
	   engine->originalToStream(os, t1->getIndex()+1, t2->getIndex());
  	   cc.szExpr=trim_left_copy(os.str());
	 }
   }
   | "references" nm (idxlist_opt)? (refargs)? {cc.ctType=ctReference;}
   | "default" szVal=default_value {cc.ctType=ctDefault;cc.szValue=szVal;}
   | szCollate=collate {cc.ctType=ctCollate;cc.szCollateName=szCollate;})
   { 
     if (cc.ctType!=ctDefer && cc.ctType!=ctReference)
       def.vConstraints.push_back(cc);
   }
;

default_value returns [string szValue]
{
string s1, s2="";
}
:
      (s1=sign )? s2=term {szValue= s1+s2;} 
     |s2=id {szValue= s2;}  
     | b:LP expr e:RP
     {
        if (iEnableEngine)
        {     
		  RefTokenWithIndex t1(b), t2(e);
			
 		  ostringstream os;
		  engine->originalToStream(os, t1->getIndex(), t2->getIndex()+1);
		  szValue=trim_left_copy(os.str());	    
		}
     }
;

tcons [CreateTableStruct& tStruct]
{
ConflictAlgorithm ca=caNone;
Constraint cs;
vector<string> vColumns;
}
:   
    {cs.szName="";}
    
    ("constraint" (csname:nm {
    cs.szName=#csname->getText();
    TrimId(cs.szName);
    })?)?
    
    (  "primary" "key" LP idxlist[cs.ColumnList] ("autoincrement")? RP (ca=conflict_clause)? 
      {
          cs.ctType=ctPrimaryKey;
          cs.caConflict=ca;
          tStruct.vConstraints.push_back(cs);          
      }
    | "unique" LP idxlist[cs.ColumnList] RP (ca=conflict_clause)?
    {
          cs.ctType=ctUnique;
          cs.caConflict=ca;    
          tStruct.vConstraints.push_back(cs);                    
    }
    | "check" l:LP expr r:RP (ca=conflict_clause)?
    {
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
    | "foreign" "key" LP idxlist[vColumns] RP "references" nm (idxlist_opt)? (refargs)? (defer_subclause)?
    )
    {
       ##=#([TCONS_DEF, "TCONS_DEF"],#tcons);    
    }
;

expr
{
   RefToken b=LT(1);
   RefToken e;
   m_tmpstate=ss_Expression;   
}
:
    compound_expression (options {
		        warnWhenFollowAmbig=false;
		    }:
    binary_op compound_expression)*
    {
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
;

compound_expression 
:
    (unary_op)? sub_expression 
    (
      {LA(1)==SQL2RW_isnull || LA(1)==SQL2RW_notnull || LA(1)==SQL2RW_is || (LA(1)==SQL2RW_not && LA(2)==SQL2RW_null)}? null_op 
    | collate
    | {LA(1)==SQL2RW_in || (LA(1)==SQL2RW_not && LA(2)==SQL2RW_in)}? in_stmt
    )?
;

sub_expression:
     (cast_function)=>cast_function
    | ("raise" LP)=> "raise" LP ("ignore" | raisetype COMMA nm) RP
    | (function)=>function    
    | id {## = #([IDEXP_DEF,"IDEXP_DEF"], #sub_expression);} 
    | term
    | VARIABLE
    | nm DOT nm (DOT nm)? {## = #([DOTEXP_DEF,"DOTEXP_DEF"], #sub_expression);} 
    | sub_select
    | case_function
;

in_stmt:
    (  (in_op LP)=> in_op LP (select_stmt | exprlist) RP
    | in_op nm (DOT nm)?)
    {##=#([IN_DEF, "IN_DEF"], #in_stmt);}
;

function:
    id LP (distinct)? (exprlist | STAR)? RP
    {## = #([FUNC_DEF,"FUNC_DEF"], #function);} 
;

cast_function:
    "cast" LP  expr "as" typetoken RP
    {## = #([CAST_DEF,"CAST_DEF"], #cast_function);} 
;

case_function:
    "case" (expr)? case_exprlist (case_else)? "end"
;

sub_select:
      LP ( select_stmt | expr )  RP
    | "exists" LP ( select_stmt )  RP
;

unary_op:
          PLUS 
        | MINUS  
        | "not" 
        | BITNOT
;

null_op:
          (    "is" ("not")? "null"
		    | "not" "null"
		    | "isnull"
		    | "notnull")
		 {##=#([NULLOP_DEF, "NULLOP_DEF"], #null_op);}
;

binary_op  :
		      (likeop)=>likeop
		    | (between_op)=>between_op
		    | LESS_THAN 
		    | GT 
		    | GE 
		    | LE 
		    | EQ 
		    | NOT_EQ
		    | BITAND 
		    | BITOR 
		    | LSHIFT 
		    | RSHIFT
		    | PLUS | MINUS
		    | STAR|SLASH|REM
		    | CONCAT 
		    | "and" | "or"
		    | "escape"
;

exprlist: expr (COMMA expr)*
;

/* 220  "expr ::= expr in_op LP select RP",						 */
/* 219  "expr ::= LP select RP",								 */
/* 222  "expr ::= EXISTS LP select RP",							 */

/* 223  "expr ::= CASE case_operand case_exprlist case_else END",*/
/* 221  "expr ::= expr in_op nm dbnm",							 */
/* 218  "expr ::= expr in_op LP exprlist RP",					 */
/* 215  "expr ::= expr between_op expr AND expr",				 */
/* 205  "expr ::= expr likeop expr escape",						 */
/* 188  "expr ::= ID LP distinct exprlist RP",					 */
/* 187  "expr ::= CAST LP expr AS typetoken RP",				 */
/* 196  "expr ::= expr PLUS|MINUS expr",						 */
/* 197  "expr ::= expr STAR|SLASH|REM expr",					 */
/* 198  "expr ::= expr CONCAT expr",							 */
/* 194  "expr ::= expr EQ|NE expr",								 */
/* 195  "expr ::= expr BITAND|BITOR|LSHIFT|RSHIFT expr",		 */
/* 191  "expr ::= expr AND expr",								 */
/* 192  "expr ::= expr OR expr",								 */
/* 193  "expr ::= expr LT|GT|GE|LE expr",						 */
/* 177  "expr ::= LP expr RP",                                    */
/* 210  "expr ::= NOT|BITNOT expr",								 */
/* 211  "expr ::= MINUS expr",									 */
/* 212  "expr ::= PLUS expr",									 */
/* 176  "expr ::= term",                                         */
/* 179  "expr ::= ID",                                           */       
/* 180  "expr ::= JOIN_KW",										 */
/* 181  "expr ::= nm DOT nm",									 */
/* 182  "expr ::= nm DOT nm DOT nm",							 */
/* 185  "expr ::= REGISTER",									 */
/* 186  "expr ::= VARIABLE",									 */
/* 189  "expr ::= ID LP STAR RP",								 */
/* 277  "expr ::= RAISE LP IGNORE RP",							 */
/* 278  "expr ::= RAISE LP raisetype COMMA nm RP",				 */
/* 206  "expr ::= expr ISNULL|NOTNULL",							 */
/* 207  "expr ::= expr IS NULL",								 */
/* 208  "expr ::= expr NOT NULL",								 */
/* 209  "expr ::= expr IS NOT NULL",							 */

conflict_clause returns [ConflictAlgorithm caConflict]
:
    "on" "conflict" caConflict=conflict_algorithm 
    exception catch [NoViableAltException ex]{
         throw MismatchedTokenException(getTokenNames(), getNumTokens(), LT(1), bs_conflict, false, getFilename());
    }
;

idxlist_opt 
{
vector<string> vColumns;
}:
    LP idxlist[vColumns] RP
;

idxlist[vector<string>& vColumns]
{
  string szCol;
}
:
     col1:nm 
     {
       szCol=#col1->getText();
       TrimId(szCol);
       vColumns.push_back(szCol);
     } 
     (COMMA col2:nm
     {
       szCol=#col2->getText();
       TrimId(szCol);
       vColumns.push_back(szCol);
     })*
;

table_select_stmt
:
   "as" select_stmt
;

create_view_stmt returns [CreateViewStruct vStruct]
{
vStruct.bTemp=false;
string szSelectSql;
}
:
	  "create" (temp {vStruct.bTemp=true;})? "view" (ifnotexists)? 
	  (dbnm)? vName:nm
	  {
	    vStruct.szViewName=#vName->getText(); 
	    TrimId(vStruct.szViewName);
	  }
	  "as" 
	  szSelectSql=select_stmt
	  {
		vStruct.szSelectSql=szSelectSql; 
		if (vStruct.bTemp)
			m_sqltype=sst_CreateTempView;
		else
		    m_sqltype=sst_CreateView;
		##=#([VIEW_DEF, "VIEW_DEF"],#create_view_stmt);
	  }
;

create_trigger_stmt returns [CreateTriggerStruct tStruct]
{
tStruct.bTemp=false;
tStruct.teEvent=teNone;
tStruct.dbEvent=deDelete;
tStruct.ftStatement=ftNone;
m_sqltype=sst_CreateTrigger;
string szTemp;
string szAction="";
}
:
	  "create" (temp
	  {
	   tStruct.bTemp=true;
	   m_sqltype=sst_CreateTempTrigger;
	  })? "trigger" (ifnotexists)? (dbnm)? tName:nm (trigger_event[tStruct])?
	  database_event[tStruct] "on" 
	  (dbnm)?
	  szTemp=nm {tStruct.szTarget=szTemp;} 
	  (for_stmt[tStruct])? 
	  szAction=trigger_action
	  {
		tStruct.szStatement=szAction;
					  
	    tStruct.szTriggerName=#tName->getText();
	    TrimId(tStruct.szTriggerName);
	    
	    ##=#([TRIGGER_DEF, "TRIGGER_DEF"], #create_trigger_stmt);
	  }
;

trigger_action returns [string szAction]
{
string szWhen="";
}
:
	  (bw:"when" expr
	   {
	    if (iEnableEngine)
	    { 
			RefTokenWithIndex w1(bw), w2(LT(1));

			ostringstream osw;
			engine->originalToStream(osw, w1->getIndex(), w2->getIndex());
			szWhen=trim_left_copy(osw.str())+"\r\n";	   
		}
	   }
	  )? 
	  b:"begin" (trigger_cmd_list)? e:"end" 
	  {
	    if (iEnableEngine)
	    {
			RefTokenWithIndex t1(b), t2(e);

			ostringstream os;
			engine->originalToStream(os, t1->getIndex(), t2->getIndex()+1);
			szAction=trim_left_copy(os.str());
			szAction=szWhen+szAction;
		}
	  }
;

trigger_action_check
{
SyntaxCheckStruct st;
m_tmpstate=ss_Unknown;
}
:
	  ("when" expr)? 
	  "begin" (trigger_cmd_list)? "end" 
      exception catch [ NoViableAltException& e ] 
	  { 
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
	  }
	  catch [MismatchedTokenException& e]
	  {
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
	  }
	  catch [SemanticException& e]
	  {
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
	   }
	   catch [RecognitionException& e]
	   {
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
  	   }	  
;

trigger_cmd_list:(trigger_cmd SEMI)+
;

trigger_cmd:   "update" (orconf)? table_name (tridxby)? "set" setlist (where_opt)?
             | insert_cmd "into" table_name (inscollist_opt)? ("values" LP itemlist RP | select_stmt)
             | "delete" "from" table_name (tridxby)? (where_opt)? 
             | select_stmt
;

tridxby:   "indexed" "by" nm
         | "not" "indexed"
;

trigger_event [CreateTriggerStruct& tStruct]:
     "before" {tStruct.teEvent=teBefore;}
   | "after"  {tStruct.teEvent=teAfter;}
   | "instead" "of" {tStruct.teEvent=teInstead;}
;

database_event [CreateTriggerStruct& tStruct]:
       "delete" {tStruct.dbEvent=deDelete;}
      |"insert" {tStruct.dbEvent=deInsert;}
      |"update" {tStruct.dbEvent=deUpdate;}
      |"update" "of" column_list[tStruct] {tStruct.dbEvent=deUpdateOf;}
;



column_list[CreateTriggerStruct& tStruct]
{
  string szCol;
}
:
     col1:nm 
     {
       szCol=#col1->getText();
       TrimId(szCol);
       tStruct.vColumns.push_back(szCol);
     } 
     (COMMA col2:nm
     {
       szCol=#col2->getText();
       TrimId(szCol);
       tStruct.vColumns.push_back(szCol);
     })*
;

//Todo:add keyword autocomplete
for_stmt [CreateTriggerStruct& tStruct]:
      "for" "each" "row" {tStruct.ftStatement=ftRow;}
;

create_index_stmt returns [CreateIndexStruct iStruct]
{
m_sqltype=sst_CreateIndex;
iStruct.IsUnique=false;
ConflictAlgorithm caConflict=caNone;
}
:
	  "create" ("unique" {iStruct.IsUnique=true;})? "index"^  (ifnotexists)? (dbnm)? indexName:nm
	  {
	    iStruct.szIndexName=#indexName->getText();	  
	    TrimId(iStruct.szIndexName);
	  }  
	  "on" tblName:nm
	  {
	    iStruct.szTableName=#tblName->getText();
	    TrimId(iStruct.szTableName);
	  } 
	  LP column_name[iStruct] ( COMMA column_name[iStruct] )* RP
	  (caConflict=conflict_clause)?	
	  {
	    iStruct.caConflict=caConflict;	  
	  }
;

column_name [CreateIndexStruct& iStruct]
{
string szCollate="";
OrderType otOrder=otNone;
}
:
      colName:nm (szCollate=collate)? 
      (otOrder=sortorder)?
      {
        ColumnNameStruct colStruct;
        colStruct.szColumn=#colName->getText();
        TrimId(colStruct.szColumn);
        colStruct.szCollate=szCollate;
        colStruct.otOrder=otOrder;
        iStruct.vColumns.push_back(colStruct);
      }
;

conflict_algorithm returns [ConflictAlgorithm caConflict]
:
       "rollback" {caConflict= caRollback;}
     | "abort"    {caConflict= caAbort;}
     | "fail"     {caConflict= caFail;}
     | "ignore"   {caConflict= caIgnore;}
     | "replace"  {caConflict= caReplace;}
;

//port from Sqlite 

temp : "temp"
      |"temporary"
;

join_kw:
        "right"
      | "left"
      | "cross"
      | "full"
      | "inner"
      | "natural"
      | "outer"
;

//Todo:
pragma_stmt
{
      m_sqltype=sst_Pragma;
}
:
      "pragma"^  full_name ( EQ (nmnum | minus_num )  { m_sqltype=sst_PragmaSetting; }  
      | LP (nmnum | minus_num) RP { m_sqltype=sst_PragmaSetting; })? 
;

full_name:
     (dbnm)? nm
;

drop_stmt returns [string szName]
:
	  "drop"^ ("table"  {m_sqltype=sst_DropTable;} 
	| "view" {m_sqltype=sst_DropView;} 
	| "trigger" {m_sqltype=sst_DropTrigger;} 
	| "index" {m_sqltype=sst_DropIndex;}) (ifexists)? oName:drop_name 
	{
	   szName=#oName->getText();
	   TrimId(szName);
	} 
;

vacuum_stmt
:       "vacuum"^ (nm)? 
       { 
         m_sqltype=sst_Vacuum;
       }
;

alter_stmt returns [AlterStruct as]
:
    "alter"^ "table" (dbnm)? oldName:nm 
    { 
      as.szOldName=#oldName->getText();
      TrimId(as.szOldName);
    }
     ("rename" "to" newName:nm 
     {
       m_sqltype=sst_RenameTable;
       as.szNewName=#newName->getText();
       TrimId(as.szNewName);
     } 
     | "add" ("column")? column)
;

sql_transaction_stmt
{
m_sqltype=sst_Transaction;   
}
:
     "begin"^ (transtype)? (trans_opt)?
   | "end"^ (trans_opt)?
   | "commit"^ (trans_opt)?
   | "rollback"^ (trans_opt)? ("to" (savepoint_opt)? nm)?
   | "savepoint" nm
   | "release" (savepoint_opt)? nm
;

savepoint_opt
:
     "savepoint"
;

trans_opt: "transaction" (nm)?
;

transtype: "deferred" | "immediate" | "exclusive"
;

raisetype :
    "rollback"
   |"abort"
   |"fail"
;

resolvetype:
   raisetype
   |"ignore"
   |"replace"
;

orconf:
   "or" resolvetype
;

id returns [string szId]  : 
           s1:ID {szId=#s1->getText(); TrimId(szId);}
         | s2:fallback {szId=#s2->getText(); TrimId(szId);}
;

ids  : id
     | STRING
;

type_name: (ids)+
;
     
ifexists: "if" "exists"
         {## = #([IFEXISTS_DEF,"IFEXISTS_DEF"], #ifexists);} 
;

ifnotexists: "if" "not" "exists"
         {## = #([IFNOTEXISTS_DEF,"IFNOTEXISTS_DEF"], #ifnotexists);} 
;

nm returns [string szName]: 
       s1:id  { szName=#s1->getText(); TrimId(szName);}
     | s2:STRING { szName=#s2->getText(); TrimId(szName); }
     | s3:join_kw { szName=#s3->getText();  }
     
;

nmnum: plus_num | nm | "on" | "default" | "delete"
;

dbnm returns [string szName] 
{
  string szNm;
}
: szNm=nm DOT
  {
     szName= szNm+".";
  }
;

number : INTEGER | FLOAT
;

term returns [string szTerm]:
        s1:INTEGER {szTerm= #s1->getText();}
      | s2:FLOAT  {szTerm= #s2->getText();}
      | s3:BLOB   {szTerm= #s3->getText();}
      | s4:STRING {szTerm= #s4->getText();}
      //| ctime_kw
	  | s5:"null" {szTerm= #s5->getText();}
;

ctime_kw:
	   "current_date"
	  | "current_time"
	  | "current_timestamp"
;

plus_num returns [string szNum]
{
  szNum="";
}
: 
   (PLUS {szNum="+";})? n:number
   {
     szNum+=#n->getText();
   }
;

minus_num returns [string szNum]: 
   MINUS n:number
   {
     szNum="-"+#n->getText();
   }
;

typetoken: type_name (LP signed_num (COMMA signed_num)? RP)?
;

signed_num returns [string szNum]
{
string s1;
}
:  
       s1=plus_num {szNum= s1;}| s1=minus_num {szNum= s1;}
;

refargs: (refarg)+
      ;

distinct: "distinct" | "all"
      ;

like_kw:
         "like" | "glob" | "regexp"
;

likeop 
: 
    ("not")? (like_kw | "match")
;

between_op : "between" | "not" "between"
;

in_op: "in" | "not" "in"
;

case_exprlist: ("when" expr "then" expr)+
;

case_else: "else" expr
;
       
refarg:
        "match" nm
      | "on" "delete" refact
      | "on" "update" refact
      | "on" "insert" refact
      ;

refact: "set" "null"
      | "set" "default"
      | "cascade"
      | "restrict"
      ; 
      
sign returns [string szSign] : 
       PLUS  {szSign= "+";}
      |MINUS {szSign= "-";}
;

select_stmt returns [string szSelect]
{
   RefToken b;
}
: 
      {b=LT(1);}oneselect (multiselect_op oneselect)* 
	{
		m_sqltype=sst_Select;
		if (iEnableEngine)
		{
			RefTokenWithIndex t1(b), t2(LT(1));
				
 			ostringstream os;
			engine->originalToStream(os, t1->getIndex(), t2->getIndex());
			szSelect=trim_left_copy(os.str());	    
		}
	}
     
;

oneselect
{
    RefToken e;
}
: 
	b:"select"^ (distinct)? selcollist (from)? (where_opt)? (groupby_opt)? (having_opt)? (orderby_opt)? (limit_opt)? 
    {
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
;

selcollist: sclp (COMMA sclp)*
;

sclp:
       (nm DOT STAR)=>nm DOT STAR
      | STAR
      | expr (sub_select_as)?
;

sub_select_as:
       ( "as" nm
       |ids)
       {## = #([AS_DEF,"AS_DEF"], #sub_select_as);} 
;

table_as returns [string szAlias]:
       ( "as" szAlias=nm
       |id:ids {szAlias=#id->getText();})
       {## = #([AS_DEF,"AS_DEF"], #table_as);}        
;

from :
      "from" seltablist
;

seltablist: seltabitem (joinop seltabitem )*
      
;

seltabitem
{
   string szTable="";
   string szAlias="";
   AliasTable at;
}
:  szTable=tableview_name (szAlias=table_as{at.szTable=szTable; at.szAlias=szAlias;m_vAlias.push_back(at);})? (indexed_opt)? (on_opt)? (using_opt)?
           | LP seltablist_paren RP (sub_select_as)? (on_opt)? (using_opt)?   
;

indexed_opt:
    "indexed" "by" nm
   |"not" "indexed"
;

joinop:
       COMMA
      |(join_kw nm nm)=>join_kw nm nm "join"  
      |join_kw nm "join"
      |join_kw "join"
      |"join"
;

on_opt:
      "on" expr
;

using_opt:
      "using" LP inscollist RP
;

inscollist: nm (COMMA nm)*
;

seltablist_paren: select_stmt | seltablist
;

multiselect_op : 
        "union" ("all")?
       |"except"
       |"intersect" 
;

where_opt:
       "where" expr
//       exception catch [NoViableAltException ex]{
//         throw MismatchedTokenException(imgTokenNames, 2, LT(1), 1, false, getFilename());
//       }
;

groupby_opt: "group" "by" exprlist
;

having_opt: "having" expr
;

orderby_opt: "order" "by" sortlist
;

sortlist: sortitem (COMMA sortitem)*
;

sortitem: expr (sortorder)?
;

collate returns [string szCollate]: "collate" val:ids{szCollate=#val->getText();}
       exception catch [NoViableAltException ex]{
         throw MismatchedTokenException(imgTokenNames, 3, LT(1), 2, false, getFilename());
       }
;

sortorder returns [OrderType order] 
{
  order=otNone;
}
:   "asc"  {order= otAsc;}
  | "desc" {order= otDesc;}
;

limit_opt: "limit" expr ( ("offset"|COMMA) expr)?
;

itemlist: expr (COMMA expr)*
;

setlist: nm EQ expr (COMMA nm EQ expr)*
;

defer_subclause: ("not")? "deferrable" (init_deferred_pred_opt)?
;

init_deferred_pred_opt: "initially" ("deferred" | "immediate")
;

column : nm (typetoken)? carglist
;

carglist : (carg)*
;

carg
{
ColumnDef col;
}
: column_constraint[col]
;

fallback:
        "explain"
      | "query"
      | "plan"
      | "begin"
      | "deferred"
      | "immediate"
      | "exclusive"
      | "end"
      | "if"
      | "temp"
      | "temporary"
      | "abort"
      | "after"
      | "analyze"
      | "asc"
      | "attach"
      | "before"
      | "cascade"
      | "cast"
      | "conflict"
      | "database"
      | "desc"
      | "detach"
      | "each"
      | "fail"
      | "for"
      | "ignore"
      | "initially"
      | "instead"
      | "indexed"
/* need to find fallback*/       
      | like_kw
      | "match"
 /*need to find fallback*/        
      | "key"
      | "of"
      | "offset"
      | "pragma"
      | "raise"
      | "savepoint"
      | "release"
      | "replace"
      | "restrict"
      | "row"
      | "trigger"
      | "vacuum"
      | "view"
      | "virtual"
      | "reindex"
      | "rename"
      | ctime_kw
      | "rollback"
      | "savepoint"
      | "release"
      | "by"
      | "column"
;

