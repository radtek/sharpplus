parser grammar JavaDecl;
options {
language=Delphi;
}

packageDeclaration
	:	'package' qualifiedName ';'
	;
	
importDeclaration
	:	'import' 'static'? Identifier ('.' Identifier)* ('.' '*')? ';'
	;
	
typeDeclaration
	:	classOrInterfaceDeclaration
    |   ';'
	;
	
classOrInterfaceDeclaration
	:	modifier* (classDeclaration | interfaceDeclaration)
	;
	
classDeclaration
	:	normalClassDeclaration
    |   enumDeclaration
	;
	
normalClassDeclaration
	:	'class' Identifier (typeParameters)?
        ('extends' dtype)?
        ('implements' typeList)?
        classBody
	;
	
typeParameters
	:	'<' typeParameter (',' typeParameter)* '>'
	;

typeParameter
	:	Identifier ('extends' bound)?
	;
		
bound
	:	dtype ('&' dtype)*
	;

enumDeclaration
	:	ENUM Identifier ('implements' typeList)? enumBody
	;
	
enumBody
	:	'{' enumConstants? ','? enumBodyDeclarations? '}'
	;

enumConstants
	:	enumConstant (',' enumConstant)*
	;
	
enumConstant
	:	annotations? Identifier (arguments)? (classBody)?
	;
	
enumBodyDeclarations
	:	';' (classBodyDeclaration)*
	;
	
interfaceDeclaration
	:	normalInterfaceDeclaration
		| annotationTypeDeclaration
	;
	
normalInterfaceDeclaration
	:	'interface' Identifier typeParameters? ('extends' typeList)? interfaceBody
	;
	
typeList
	:	dtype (',' dtype)*
	;
	
classBody
	:	'{' classBodyDeclaration* '}'
	;
	
interfaceBody
	:	'{' interfaceBodyDeclaration* '}'
	;

classBodyDeclaration
	:	';'
	|	'static'? block
	|	modifier* memberDecl
	;
	
memberDecl
	:	genericMethodOrConstructorDecl
	|	methodDeclaration
	|	fieldDeclaration
	|	'void' Identifier voidMethodDeclaratorRest
	|	Identifier constructorDeclaratorRest
	|	interfaceDeclaration
	|	classDeclaration
	;
	
genericMethodOrConstructorDecl
	:	typeParameters genericMethodOrConstructorRest
	;
	
genericMethodOrConstructorRest
	:	(dtype | 'void') Identifier methodDeclaratorRest
	|	Identifier constructorDeclaratorRest
	;

methodDeclaration
	:	dtype Identifier methodDeclaratorRest
	;

fieldDeclaration
	:	dtype variableDeclarators ';'
	;
		
interfaceBodyDeclaration
	:	modifier* interfaceMemberDecl
	|   ';'
	;

interfaceMemberDecl
	:	interfaceMethodOrFieldDecl
	|   interfaceGenericMethodDecl
    |   'void' Identifier voidInterfaceMethodDeclaratorRest
    |   interfaceDeclaration
    |   classDeclaration
	;
	
interfaceMethodOrFieldDecl
	:	dtype Identifier interfaceMethodOrFieldRest
	;
	
interfaceMethodOrFieldRest
	:	constantDeclaratorsRest ';'
	|	interfaceMethodDeclaratorRest
	;
	
methodDeclaratorRest
	:	formalParameters ('[' ']')*
        ('throws' qualifiedNameList)?
        (   methodBody
        |   ';'
        )
	;
	
voidMethodDeclaratorRest
	:	formalParameters ('throws' qualifiedNameList)?
        (   methodBody
        |   ';'
        )
	;
	
interfaceMethodDeclaratorRest
	:	formalParameters ('[' ']')* ('throws' qualifiedNameList)? ';'
	;
	
interfaceGenericMethodDecl
	:	typeParameters (dtype | 'void') Identifier
        interfaceMethodDeclaratorRest
	;
	
voidInterfaceMethodDeclaratorRest
	:	formalParameters ('throws' qualifiedNameList)? ';'
	;
	
constructorDeclaratorRest
	:	formalParameters ('throws' qualifiedNameList)? methodBody
	;

constantDeclarator
	:	Identifier constantDeclaratorRest
	;
	
variableDeclarators
	:	variableDeclarator (',' variableDeclarator)*
	;

variableDeclarator
	:	Identifier variableDeclaratorRest
	;
	
variableDeclaratorRest
	:	('[' ']')+ ('=' variableInitializer)?
	|	'=' variableInitializer
	|
	;
	
constantDeclaratorsRest
    :   constantDeclaratorRest (',' constantDeclarator)*
    ;

constantDeclaratorRest
	:	('[' ']')* '=' variableInitializer
	;
	
variableDeclaratorId
	:	Identifier ('[' ']')*
	;

variableInitializer
	:	arrayInitializer
    |   expression
	;
	
arrayInitializer
	:	'{' (variableInitializer (',' variableInitializer)* (',')? )? '}'
	;

modifier
    :   annotation
    |   'public'
    |   'protected'
    |   'private'
    |   'static'
    |   'abstract'
    |   'final'
    |   'native'
    |   'synchronized'
    |   'transient'
    |   'volatile'
    |   'strictfp'
    ;

packageOrTypeName
	:	Identifier ('.' Identifier)*
	;

enumConstantName
    :   Identifier
    ;

typeName
	:   Identifier
    |   packageOrTypeName '.' Identifier
	;

dtype
	:	Identifier (typeArguments)? ('.' Identifier (typeArguments)? )* ('[' ']')*
	|	primitiveType ('[' ']')*
	;

primitiveType
    :   'boolean'
    |	'char'
    |	'byte'
    |	'short'
    |	'int'
    |	'long'
    |	'float'
    |	'double'
    ;

variableModifier
	:	'final'
    |   annotation
	;

typeArguments
	:	'<' typeArgument (',' typeArgument)* '>'
	;
	
typeArgument
	:	dtype
	|	'?' (('extends' | 'super') dtype)?
	;
	
qualifiedNameList
	:	qualifiedName (',' qualifiedName)*
	;
	
formalParameters
	:	'(' formalParameterDecls? ')'
	;
	
formalParameterDecls
	:	variableModifier* dtype formalParameterDeclsRest?
	;
	
formalParameterDeclsRest
	:	variableDeclaratorId (',' formalParameterDecls)?
	|   '...' variableDeclaratorId
	;
	
qualifiedName
	:	Identifier ('.' Identifier)*
	;
