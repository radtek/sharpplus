tree grammar PolyDifferentiator;
options {
	tokenVocab=Poly;
	ASTLabelType=ICommonTree;
	output=AST;
        language=Delphi;
//	rewrite=true; // works either in rewrite or normal mode
}

poly
@var{ 
c2, e2:string; 
}

:	^('+' poly poly)
	|	^(MULT INT ID)		-> INT
	|	^(MULT c=INT ^('^' ID e=INT))
		{
		 c2 := IntToStr($c.int*$e.int);
		 e2 := IntToStr($e.int-1);
		}
		-> ^(MULT['*'] INT[c2] ^('^' ID INT[e2]))
	|	^('^' ID e=INT)
		{
		c2 := IntToStr($e.int);
		e2 := IntToStr($e.int-1);
		}
							-> ^(MULT['*'] INT[c2] ^('^' ID INT[e2]))
	|	INT					-> INT['0']
	|	ID					-> INT['1']
	;
