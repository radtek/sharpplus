grammar SimpleC;
options {
    output=AST;
    language=Delphi;
}

tokens {
    VAR_DEF;
    ARG_DEF;
    FUNC_HDR;
    FUNC_DECL;
    FUNC_DEF;
    TBLOCK;
}

prog
    :   declaration+
    ;

declaration
    :   variable
    |   functionHeader ';' -> ^(FUNC_DECL functionHeader)
    |   functionHeader block -> ^(FUNC_DEF functionHeader block)
    ;

variable
    :   dtype declarator ';' -> ^(VAR_DEF dtype declarator)
    ;

declarator
    :   ID 
    ;

functionHeader
    :   dtype ID '(' ( formalParameter ( ',' formalParameter )* )? ')'
        -> ^(FUNC_HDR dtype ID formalParameter*)
    ;

formalParameter
    :   dtype declarator -> ^(ARG_DEF dtype declarator)
    ;

dtype
    :   'int'   
    |   'char'  
    |   'void'
    |   ID        
    ;

block
    :   lc='{'
            variable*
            stat*
        '}'
        -> ^(TBLOCK[$lc,'BLOCK'] variable* stat*)
    ;

stat: forStat
    | expr ';'!
    | block
    | assignStat ';'!
    | ';'!
    ;

forStat
    :   'for' '(' start=assignStat ';' expr ';' next=assignStat ')' block
        -> ^('for' $start expr $next block)
    ;

assignStat
    :   ID EQ expr -> ^(EQ ID expr)
    ;

expr:   condExpr
    ;

condExpr
    :   aexpr ( ('=='^ | '<'^) aexpr )?
    ;

aexpr
    :   atom ( '+'^ atom )*
    ;

atom
    : ID      
    | INT      
    | '(' expr ')' -> expr
    ; 

DFOR : 'for' ;
INT_TYPE : 'int' ;
CHAR: 'char';
VOID: 'void';

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	('0'..'9')+
    ;

EQ   : '=' ;
EQEQ : '==' ;
LT   : '<' ;
PLUS : '+' ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+
        { $channel:=HIDDEN; }
    ;    
