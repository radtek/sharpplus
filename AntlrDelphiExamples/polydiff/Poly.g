grammar Poly;
options {output=AST;
language=Delphi;
}
tokens { MULT; } // imaginary token

poly: term ('+'^ term)*
    ;

term: INT ID  -> ^(MULT['*'] INT ID)
    | INT exp -> ^(MULT['*'] INT exp)
    | exp
    | INT
	| ID
    ;

exp : ID '^'^ INT
    ;
    
ID	: 'a'..'z'+ ;

INT	: '0'..'9'+ ;

WS	: (' '|'\t'|'\r'|'\n')+ {skip();} ;
