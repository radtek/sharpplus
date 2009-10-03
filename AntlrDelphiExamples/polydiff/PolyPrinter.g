tree grammar PolyPrinter;
options {
	tokenVocab=Poly;
	ASTLabelType=ICommonTree;
	output=template;
        language=Delphi;
}

poly:	^('+'  a=poly b=poly)	-> template(a={$a.st},b={$b.st}) "<a>+<b>"
	|	^(MULT a=poly b=poly)	-> template(a={$a.st},b={$b.st}) "<a><b>"
	|	^('^'  a=poly b=poly)	-> template(a={$a.st},b={$b.st}) "<a>^<b>"
	|	INT						-> {%{$INT.text}}
	|	ID						-> {%{$ID.text}}
	;
