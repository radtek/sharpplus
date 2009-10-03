parser grammar JavaStat;
options {
language=Delphi;
}

methodBody
    :   block
    ;

block
	:	'{' blockStatement* '}'
	;
	
blockStatement
	:	localVariableDeclaration
	|	classOrInterfaceDeclaration
    	|	statement
	;
	
localVariableDeclaration
	:	variableModifier* dtype variableDeclarators ';'
	;
	
statement
	: block
    | 'assert' expression (':' expression)? ';'
    | 'if' parExpression statement (options {k=1; backtrack=false;}:'else' statement)?
    | 'for' '(' forControl ')' statement
    | 'while' parExpression statement
    | 'do' statement 'while' parExpression ';'
    | 'try' block
      (	catches 'finally' block
      | catches
      | 'finally' block
      )
    | 'switch' parExpression '{' switchBlockStatementGroups '}'
    | 'synchronized' parExpression block
    | 'return' expression? ';'
    | 'throw' expression ';'
    | 'break' Identifier? ';'
    | 'continue' Identifier? ';'
    | ';'
    | statementExpression ';'
    | Identifier ':' statement
	;
	
catches
	:	catchClause (catchClause)*
	;
	
catchClause
	:	'catch' '(' formalParameter ')' block
	;

formalParameter
	:	variableModifier* dtype variableDeclaratorId
	;
		
switchBlockStatementGroups
	:	(switchBlockStatementGroup)*
	;
	
switchBlockStatementGroup
	:	switchLabel blockStatement*
	;
	
switchLabel
	:	'case' constantExpression ':'
	|   'case' enumConstantName ':'
	|   'default' ':'
	;
	
moreStatementExpressions
	:	(',' statementExpression)*
	;

forControl
options {k=3;} // be efficient for common case: for (ID ID : ID) ...
	:	forVarControl
	|	forInit? ';' expression? ';' forUpdate?
	;

forInit
	:	variableModifier* dtype variableDeclarators
	|	expressionList
	;
	
forVarControl
	:	variableModifier* dtype Identifier ':' expression
	;

forUpdate
	:	expressionList
	;

