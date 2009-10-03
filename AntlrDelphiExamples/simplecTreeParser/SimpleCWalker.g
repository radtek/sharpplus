tree grammar SimpleCWalker;
options {
    tokenVocab=SimpleC;
    ASTLabelType=ITree;
    language=Delphi;
}

prog
    :   declaration+
    ;

declaration
    :   variable
    |   ^(FUNC_DECL functionHeader)
    |   ^(FUNC_DEF functionHeader block)
    ;

variable
    :   ^(VAR_DEF dtype declarator)
    ;

declarator
    :   ID 
    ;

functionHeader
    :   ^(FUNC_HDR dtype ID formalParameter*)
    ;

formalParameter
    :   ^(ARG_DEF dtype declarator)
    ;

dtype
    :   'int'
    |   'char'
    |   'void'
    |   ID        
    ;

block
    :   ^(TBLOCK variable* stat*)
    ;

stat: forStat
    | expr
    | block
    ;

forStat
    :   ^('for' expr expr expr block)
    ;

expr:   ^(EQEQ expr expr)
    |   ^(LT expr expr)
    |   ^(PLUS expr expr)
    |   ^(EQ ID expr)
    |   atom
    ;

atom
    : ID      
    | INT      
    ; 
