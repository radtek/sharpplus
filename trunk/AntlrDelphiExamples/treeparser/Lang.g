grammar Lang;
options {
	language=Delphi;
	output=AST;
	ASTLabelType=ITree;
}

tokens {TDECL;} // an imaginary node

start : decl ;

decl : dtype ID ';' -> ^(TDECL dtype ID)
     ;
dtype : INTTYPE  // automatic tree construction builds a node for this rule
     | FLOATTYPE
     ;

INTTYPE : 'int' ;
FLOATTYPE : 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n'|'\r'|'\t') {$channel:=HIDDEN;} ;
