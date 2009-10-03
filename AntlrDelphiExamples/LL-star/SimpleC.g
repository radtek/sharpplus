grammar SimpleC;
options
{
   language=Delphi;
}

prog
    :   declaration+
    ;

declaration
    :   variable
    |   functionHeader ';'
	{Writeln($functionHeader.name+' is a declaration');}
    |   functionHeader block
	{Writeln($functionHeader.name+' is a definition');}
    ;

variable
    :   dtype declarator ';'
    ;

declarator
    :   ID 
    ;

functionHeader returns [String name]
    :   dtype ID '(' ( formalParameter ( ',' formalParameter )* )? ')'
	{$name := $ID.text;}
    ;

formalParameter
    :   dtype declarator        
    ;

dtype
    :   'int'   
    |   'char'  
    |   'void'
    |   ID        
    ;

block
    :   '{'
            variable*
            stat*
        '}'
    ;

stat: forStat
    | expr ';'      
    | block
    | assignStat ';'
    | ';'
    ;

forStat
    :   'for' '(' assignStat ';' expr ';' assignStat ')' block        
    ;

assignStat
    :   ID '=' expr        
    ;

expr:   condExpr
    ;

condExpr
    :   aexpr ( ('==' | '<') aexpr )?
    ;

aexpr
    :   atom ( '+' atom )*
    ;

atom
    : ID      
    | INT      
    | '(' expr ')'
    ; 

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	('0'..'9')+
    ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+
        { $channel:=HIDDEN; }
    ;    
