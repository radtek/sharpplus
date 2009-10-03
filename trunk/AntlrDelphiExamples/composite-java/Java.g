grammar Java;
options {
backtrack=true; 
memoize=true;
language=Delphi;
}

import JavaDecl, JavaAnnotations, JavaExpr, JavaStat, JavaLexerRules;

compilationUnit
	:	annotations?
		packageDeclaration?
        importDeclaration*
        typeDeclaration*
	;
