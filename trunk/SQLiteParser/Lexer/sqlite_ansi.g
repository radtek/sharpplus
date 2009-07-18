header "pre_include_cpp"{
  #include "StdAfx.h"

}

header {
	ANTLR_USING_NAMESPACE(std)
	ANTLR_USING_NAMESPACE(antlr)	
}

options {
	language="Cpp";
	namespaceAntlr="";
	namespaceStd=""; 
	genHashLines = false;
}

class SqliteLexer extends Lexer;

options {
    importVocab = SqliteImp; // Main import vocabulary file
    exportVocab = SqliteLex; // Lexer's exportVocab is parser's importVocab
    testLiterals = false; // For literals' translation see <REGULAR_ID>
    k = 2; // Lookahead
    defaultErrorHandler = false; // Automatic error handling
    caseSensitive = true; // The grammar per se may be case sensitive
    caseSensitiveLiterals = false; // Keywords are case insensitive
    charVocabulary = '\0' .. '\377'; // Accept 8-bit characters
    //charVocabulary='\u0000'..'\uFFFE';    
    //noConstructors = true;    
    filter = ANY_CHAR; // Filter off all unhandled characters
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
}


SPACE	:	(' '
	|	'\t'
	|   '\f'
	|	'\r')
		{ _ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP; }
	;

NEW_LINE:
	'\n'  {_ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP;newline();} 
    ;
	
SL_COMMENT:  
    '-' '-' ( ~( '\n') )* (NEW_LINE)? {$setType(COMMENT);}
    ;

MINUS: '-'
    ;

LP:	'('
	;

RP:	')'
	;

SEMI:	';'
	;
	
PLUS:	'+'
	;
	
STAR:	'*'
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
		'*' '/' {$setType(COMMENT);}
	;
	
SLASH: '/'
    ;	
	
REM:	'%'
   ;
   
EQ:   '='
   ;

LE:   '<' '='
   ;
   
NE:   '<' '>'  {$setType(NOT_EQ);}
   ;

LSHIFT: '<' '<'
   ;

LT:   '<'
   ;
   
GE:   '>' '='
   ;
   
RSHIFT: '>' '>'
   ;

GT:   '>'
   ;
   
NE_LEGAL:  '!' '=' {$setType(NOT_EQ);}
   ;
   
BITOR : '|' '|'
   ;

CONCAT: '|'
   ;
   
COMMA: ','
   ;

BITAND: '&'
   ;

BITNOT: '~'
   ;

STRING_LITERAL1
	:	'`' (NEW_LINE|~'`')* '`' {$setType(STRING);}
	;

STRING_LITERAL2
	:	'\'' (NEW_LINE|~'\'')* '\'' {$setType(STRING);}
	;

STRING_LITERAL3
	:	'"' (NEW_LINE|~'"')* '"' {$setType(STRING);}
	;


NUMBER
    :   '.' {$setType(DOT);}
            (	('0'..'9')+ (('e'|'E') ('+'|'-')? ('0'..'9')+)?  {$setType(FLOAT);}    )?

	|	(('0'..'9')+{$setType(INTEGER);}) 
	        ('.' ('0'..'9')*  {$setType(FLOAT);})?
	        ((('e'|'E') ('+'|'-')? ('0'..'9')+) {$setType(FLOAT);} )? 
	;
	
	
ID_1: '[' (~']')* ']' {$setType(ID);}
   ;

VARIABLE_1: '?' ('0'..'9')+ {$setType(VARIABLE);}
   ;

VARIABLE_2:  ('@' | ':' ) ('0'..'9'|'a'..'z' | 'A'..'Z' | '$')+ {$setType(VARIABLE);}
   ;

BLOB: ('x' | 'X') ('\'' | '"') ('0'..'9' | 'A'..'F' | 'a'..'f')+
   ;   

ID_2: ('a'..'z' | 'A'..'Z' | '_' ) ('0'..'9'| 'a'..'z' | 'A'..'Z' | '_' | '$')* {$setType(testLiteralsTable(ID));}
   ;

protected

ANY_CHAR : 
	.
;
   
