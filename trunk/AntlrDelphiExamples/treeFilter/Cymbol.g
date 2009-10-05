grammar Cymbol;
options {
  output = AST;              // build trees
  ASTLabelType = ICommonTree; // use standard tree nodes
  language=Delphi;
}

tokens {
  METHOD_DECL; // function definition
  ARG_DECL;    // parameter
  T_BLOCK;
  VAR_DECL;
  CALL;
  ELIST;       // expression list
  EXPR; 	   // root of an expression
}

compilationUnit
    :   (methodDeclaration | varDeclaration)+
    ;

// START: method
methodDeclaration
    :   typ ID '(' formalParameters? ')' block
        -> ^(METHOD_DECL typ ID formalParameters? block)
    ;
// END: method

formalParameters
    :   typ ID (',' typ ID)* -> ^(ARG_DECL typ ID)+
    ;

typ:   'float'
    |   'int'
    |	'void'
    ;

// START: block
block
    :   '{' statement* '}' -> ^(T_BLOCK statement*)
    ;
// END: block

// START: var
varDeclaration
    :   typ ID ('=' expression)? ';' -> ^(VAR_DECL typ ID expression?)
    ;
// END: var

statement
    :   block
    |	varDeclaration
    |   'return' expression? ';' -> ^('return' expression?)
    |   postfixExpression // handles function calls like f(i);
        (   '=' expression -> ^('=' postfixExpression expression)
        |   -> ^(EXPR postfixExpression)
        )
        ';'       
    ;

expressionList
    :   expression (',' expression)* -> ^(ELIST expression+)
    |   -> ELIST
    ;

expression
    :   addExpression -> ^(EXPR addExpression)
    ;
    
addExpression
	:	postfixExpression ('+'^ postfixExpression)*
	;

// START: call
postfixExpression
    :   primary ( lp='('^ expressionList ')'! {$lp.setType(CALL);} )*
    ;
// END: call

primary
    :   ID
    |   INT
    |   '(' expression ')' -> expression
    ;

// LEXER RULES

ID  :   LETTER (LETTER | '0'..'9')*
    ;

fragment
LETTER  :   ('a'..'z' | 'A'..'Z')
    ;

INT :   '0'..'9'+
    ;

WS  :   (' '|'\r'|'\t'|'\n') {$channel:=HIDDEN;}
    ;

SL_COMMENT
    :   '//' ~('\r'|'\n')* '\r'? '\n' {$channel:=HIDDEN;}
    ;
