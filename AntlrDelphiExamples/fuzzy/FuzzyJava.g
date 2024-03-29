lexer grammar FuzzyJava;
options {
language=Delphi;
filter=true;
}

IMPORT
	:	'import' WS name=QIDStar WS? ';'
	;
	
/** Avoids having "return foo;" match as a field */
RETURN
	:	'return' (options {greedy=false;}:.)* ';'
	;

CLASS_RULE
	:	'class' WS name=ID WS? ('extends' WS QID WS?)?
		('implements' WS QID WS? (',' WS? QID WS?)*)? '{'
        {Writeln('found class '+$name.text);}
	;
	
METHOD
    :   TYPE_RULE WS name=ID WS? '(' ( ARG WS? (',' WS? ARG WS?)* )? ')' WS? 
       ('throws' WS QID WS? (',' WS? QID WS?)*)? '{'
        {Writeln('found method '+$name.text);}
    ;

FIELD
    :   TYPE_RULE WS name=ID '[]'? WS? (';'|'=')
        {Writeln('found var '+$name.text);}
    ;

STAT:	('if'|'while'|'switch'|'for') WS? '(' ;
	
CALL
    :   name=QID WS? '('
        { Writeln('found call '+$name.text);}
    ;

COMMENT
    :   '/*' (options {greedy=false;} : . )* '*/'
        {Writeln('found comment '+getText());}
    ;

SL_COMMENT
    :   '//' (options {greedy=false;} : . )* '\n'
        {Writeln('found // comment '+getText());}
    ;
	
STRING_RULE
	:	'"' (options {greedy=false;}: ESC | .)* '"'
	;

CHAR
	:	'\'' (options {greedy=false;}: ESC | .)* '\''
	;

WS  :   (' '|'\t'|'\n'|'\r')+
    ;

fragment
QID :	ID ('.' ID)*
	;
	
/** QID cannot see beyond end of token so using QID '.*'? somewhere won't
 *  ever match since k=1 lookahead in the QID loop of '.' will make it loop.
 *  I made this rule to compensate.
 */
fragment
QIDStar
	:	ID ('.' ID)* '.*'?
	;

fragment
TYPE_RULE:   QID '[]'?
    ;
    
fragment
ARG :   TYPE_RULE WS ID
    ;

fragment
ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*
    ;

fragment
ESC	:	'\\' ('"'|'\''|'\\')
	;
