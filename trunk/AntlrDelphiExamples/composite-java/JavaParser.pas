// $ANTLR 3.2 10 03, 2009 16:05:49 Java.g 2009-10-03 16:52:09
unit JavaParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const T__29=29;
    const T__28=28;
    const T__27=27;
    const T__26=26;
    const FloatTypeSuffix=15;
    const T__25=25;
    const OctalLiteral=10;
    const T__24=24;
    const EOF=-1;
    const Identifier=4;
    const T__93=93;
    const T__94=94;
    const T__91=91;
    const T__92=92;
    const T__90=90;
    const COMMENT=22;
    const T__99=99;
    const T__98=98;
    const T__97=97;
    const T__96=96;
    const T__95=95;
    const T__80=80;
    const T__81=81;
    const T__82=82;
    const T__83=83;
    const LINE_COMMENT=23;
    const IntegerTypeSuffix=13;
    const T__85=85;
    const T__84=84;
    const T__87=87;
    const T__86=86;
    const T__89=89;
    const T__88=88;
    const WS=21;
    const T__71=71;
    const T__72=72;
    const T__70=70;
    const FloatingPointLiteral=6;
    const JavaIDDigit=20;
    const T__76=76;
    const T__75=75;
    const T__74=74;
    const Letter=19;
    const EscapeSequence=16;
    const T__73=73;
    const T__79=79;
    const T__78=78;
    const T__77=77;
    const T__68=68;
    const T__69=69;
    const T__66=66;
    const T__67=67;
    const T__64=64;
    const T__65=65;
    const T__62=62;
    const T__63=63;
    const CharacterLiteral=7;
    const Exponent=14;
    const T__61=61;
    const T__60=60;
    const HexDigit=12;
    const T__55=55;
    const T__56=56;
    const T__57=57;
    const T__58=58;
    const T__51=51;
    const T__52=52;
    const T__53=53;
    const T__54=54;
    const T__107=107;
    const T__108=108;
    const T__109=109;
    const T__59=59;
    const T__103=103;
    const T__104=104;
    const T__105=105;
    const T__106=106;
    const T__111=111;
    const T__110=110;
    const T__113=113;
    const T__112=112;
    const T__50=50;
    const T__42=42;
    const HexLiteral=9;
    const T__43=43;
    const T__40=40;
    const T__41=41;
    const T__46=46;
    const T__47=47;
    const T__44=44;
    const T__45=45;
    const T__48=48;
    const T__49=49;
    const T__102=102;
    const T__101=101;
    const T__100=100;
    const DecimalLiteral=11;
    const StringLiteral=8;
    const T__30=30;
    const T__31=31;
    const T__32=32;
    const T__33=33;
    const ENUM=5;
    const T__34=34;
    const T__35=35;
    const T__36=36;
    const T__37=37;
    const T__38=38;
    const T__39=39;
    const UnicodeEscape=17;
    const OctalEscape=18;              
type
  TJavaParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_annotations_in_compilationUnit49:IBitSet;
    FOLLOW_packageDeclaration_in_compilationUnit54:IBitSet;
    FOLLOW_importDeclaration_in_compilationUnit65:IBitSet;
    FOLLOW_typeDeclaration_in_compilationUnit76:IBitSet;
    FOLLOW_annotations_in_synpred1_Java49:IBitSet;
    

    // delegates
    public 
        gJavaDecl:TAntlrBaseRecognizer{TJava_JavaDecl};
    public 
        gJavaAnnotations:TAntlrBaseRecognizer{TJava_JavaAnnotations};
    public 
        gJavaExpr:TAntlrBaseRecognizer{TJava_JavaExpr};
    public 
        gJavaStat:TAntlrBaseRecognizer{TJava_JavaStat};
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "compilationUnit"
    // Java.g:10:1: compilationUnit : ( annotations )? ( packageDeclaration )? ( importDeclaration )* ( typeDeclaration )* ;
    function compilationUnit():Integer;
    // $ANTLR end compilationUnit

    // $ANTLR start "synpred1_Java"
    function synpred1_Java_fragment():Integer;
    // $ANTLR end synpred1_Java

    // Delegated rules
    function unaryExpressionNotPlusMinus():Integer;
    //  { gJavaExpr.unaryExpressionNotPlusMinus(); }
    function enumBody():Integer;
    //  { gJavaDecl.enumBody(); }
    function elementValuePairs():Integer;
    //  { gJavaAnnotations.elementValuePairs(); }
    function variableModifier():Integer;
    //  { gJavaDecl.variableModifier(); }
    function arrayCreatorRest():Integer;
    //  { gJavaExpr.arrayCreatorRest(); }
    function selector():Integer;
    //  { gJavaExpr.selector(); }
    function conditionalAndExpression():Integer;
    //  { gJavaExpr.conditionalAndExpression(); }
    function arrayInitializer():Integer;
    //  { gJavaDecl.arrayInitializer(); }
    function constantDeclaratorRest():Integer;
    //  { gJavaDecl.constantDeclaratorRest(); }
    function localVariableDeclaration():Integer;
    //  { gJavaStat.localVariableDeclaration(); }
    function methodDeclaration():Integer;
    //  { gJavaDecl.methodDeclaration(); }
    function formalParameterDecls():Integer;
    //  { gJavaDecl.formalParameterDecls(); }
    function typeList():Integer;
    //  { gJavaDecl.typeList(); }
    function interfaceMethodDeclaratorRest():Integer;
    //  { gJavaDecl.interfaceMethodDeclaratorRest(); }
    function voidMethodDeclaratorRest():Integer;
    //  { gJavaDecl.voidMethodDeclaratorRest(); }
    function constantDeclarator():Integer;
    //  { gJavaDecl.constantDeclarator(); }
    function interfaceDeclaration():Integer;
    //  { gJavaDecl.interfaceDeclaration(); }
    function classBody():Integer;
    //  { gJavaDecl.classBody(); }
    function modifier():Integer;
    //  { gJavaDecl.modifier(); }
    function shiftExpression():Integer;
    //  { gJavaExpr.shiftExpression(); }
    function createdName():Integer;
    //  { gJavaExpr.createdName(); }
    function dtype():Integer;
    //  { gJavaDecl.dtype(); }
    function multiplicativeExpression():Integer;
    //  { gJavaExpr.multiplicativeExpression(); }
    function importDeclaration():Integer;
    //  { gJavaDecl.importDeclaration(); }
    function annotationTypeElementRest():Integer;
    //  { gJavaAnnotations.annotationTypeElementRest(); }
    function methodDeclaratorRest():Integer;
    //  { gJavaDecl.methodDeclaratorRest(); }
    function elementValueArrayInitializer():Integer;
    //  { gJavaAnnotations.elementValueArrayInitializer(); }
    function typeName():Integer;
    //  { gJavaDecl.typeName(); }
    function expressionList():Integer;
    //  { gJavaExpr.expressionList(); }
    function innerCreator():Integer;
    //  { gJavaExpr.innerCreator(); }
    function forControl():Integer;
    //  { gJavaStat.forControl(); }
    function enumDeclaration():Integer;
    //  { gJavaDecl.enumDeclaration(); }
    function packageDeclaration():Integer;
    //  { gJavaDecl.packageDeclaration(); }
    function annotation():Integer;
    //  { gJavaAnnotations.annotation(); }
    function integerLiteral():Integer;
    //  { gJavaExpr.integerLiteral(); }
    function unaryExpression():Integer;
    //  { gJavaExpr.unaryExpression(); }
    function qualifiedNameList():Integer;
    //  { gJavaDecl.qualifiedNameList(); }
    function classDeclaration():Integer;
    //  { gJavaDecl.classDeclaration(); }
    function variableDeclaratorId():Integer;
    //  { gJavaDecl.variableDeclaratorId(); }
    function conditionalExpression():Integer;
    //  { gJavaExpr.conditionalExpression(); }
    function andExpression():Integer;
    //  { gJavaExpr.andExpression(); }
    function defaultValue():Integer;
    //  { gJavaAnnotations.defaultValue(); }
    function block():Integer;
    //  { gJavaStat.block(); }
    function exclusiveOrExpression():Integer;
    //  { gJavaExpr.exclusiveOrExpression(); }
    function identifierSuffix():Integer;
    //  { gJavaExpr.identifierSuffix(); }
    function interfaceMethodOrFieldRest():Integer;
    //  { gJavaDecl.interfaceMethodOrFieldRest(); }
    function catchClause():Integer;
    //  { gJavaStat.catchClause(); }
    function classOrInterfaceDeclaration():Integer;
    //  { gJavaDecl.classOrInterfaceDeclaration(); }
    function switchBlockStatementGroup():Integer;
    //  { gJavaStat.switchBlockStatementGroup(); }
    function formalParameters():Integer;
    //  { gJavaDecl.formalParameters(); }
    function expression():Integer;
    //  { gJavaExpr.expression(); }
    function castExpression():Integer;
    //  { gJavaExpr.castExpression(); }
    function arguments():Integer;
    //  { gJavaExpr.arguments(); }
    function constantDeclaratorsRest():Integer;
    //  { gJavaDecl.constantDeclaratorsRest(); }
    function normalInterfaceDeclaration():Integer;
    //  { gJavaDecl.normalInterfaceDeclaration(); }
    function interfaceMemberDecl():Integer;
    //  { gJavaDecl.interfaceMemberDecl(); }
    function catches():Integer;
    //  { gJavaStat.catches(); }
    function equalityExpression():Integer;
    //  { gJavaExpr.equalityExpression(); }
    function interfaceBodyDeclaration():Integer;
    //  { gJavaDecl.interfaceBodyDeclaration(); }
    function statement():Integer;
    //  { gJavaStat.statement(); }
    function blockStatement():Integer;
    //  { gJavaStat.blockStatement(); }
    function relationalExpression():Integer;
    //  { gJavaExpr.relationalExpression(); }
    function variableInitializer():Integer;
    //  { gJavaDecl.variableInitializer(); }
    function enumBodyDeclarations():Integer;
    //  { gJavaDecl.enumBodyDeclarations(); }
    function switchBlockStatementGroups():Integer;
    //  { gJavaStat.switchBlockStatementGroups(); }
    function creator():Integer;
    //  { gJavaExpr.creator(); }
    function qualifiedName():Integer;
    //  { gJavaDecl.qualifiedName(); }
    function constructorDeclaratorRest():Integer;
    //  { gJavaDecl.constructorDeclaratorRest(); }
    function superSuffix():Integer;
    //  { gJavaExpr.superSuffix(); }
    function forUpdate():Integer;
    //  { gJavaStat.forUpdate(); }
    function normalClassDeclaration():Integer;
    //  { gJavaDecl.normalClassDeclaration(); }
    function literal():Integer;
    //  { gJavaExpr.literal(); }
    function forVarControl():Integer;
    //  { gJavaStat.forVarControl(); }
    function bound():Integer;
    //  { gJavaDecl.bound(); }
    function constantExpression():Integer;
    //  { gJavaExpr.constantExpression(); }
    function typeDeclaration():Integer;
    //  { gJavaDecl.typeDeclaration(); }
    function annotationTypeDeclaration():Integer;
    //  { gJavaAnnotations.annotationTypeDeclaration(); }
    function nonWildcardTypeArguments():Integer;
    //  { gJavaExpr.nonWildcardTypeArguments(); }
    function genericMethodOrConstructorDecl():Integer;
    //  { gJavaDecl.genericMethodOrConstructorDecl(); }
    function formalParameter():Integer;
    //  { gJavaStat.formalParameter(); }
    function packageOrTypeName():Integer;
    //  { gJavaDecl.packageOrTypeName(); }
    function relationalOp():Integer;
    //  { gJavaExpr.relationalOp(); }
    function formalParameterDeclsRest():Integer;
    //  { gJavaDecl.formalParameterDeclsRest(); }
    function interfaceBody():Integer;
    //  { gJavaDecl.interfaceBody(); }
    function annotationMethodRest():Integer;
    //  { gJavaAnnotations.annotationMethodRest(); }
    function annotationName():Integer;
    //  { gJavaAnnotations.annotationName(); }
    function typeArguments():Integer;
    //  { gJavaDecl.typeArguments(); }
    function annotations():Integer;
    //  { gJavaAnnotations.annotations(); }
    function inclusiveOrExpression():Integer;
    //  { gJavaExpr.inclusiveOrExpression(); }
    function elementValue():Integer;
    //  { gJavaAnnotations.elementValue(); }
    function moreStatementExpressions():Integer;
    //  { gJavaStat.moreStatementExpressions(); }
    function annotationConstantRest():Integer;
    //  { gJavaAnnotations.annotationConstantRest(); }
    function explicitGenericInvocationSuffix():Integer;
    //  { gJavaExpr.explicitGenericInvocationSuffix(); }
    function additiveExpression():Integer;
    //  { gJavaExpr.additiveExpression(); }
    function classBodyDeclaration():Integer;
    //  { gJavaDecl.classBodyDeclaration(); }
    function booleanLiteral():Integer;
    //  { gJavaExpr.booleanLiteral(); }
    function variableDeclaratorRest():Integer;
    //  { gJavaDecl.variableDeclaratorRest(); }
    function primary():Integer;
    //  { gJavaExpr.primary(); }
    function annotationTypeBody():Integer;
    //  { gJavaAnnotations.annotationTypeBody(); }
    function annotationTypeElementDeclarations():Integer;
    //  { gJavaAnnotations.annotationTypeElementDeclarations(); }
    function annotationTypeElementDeclaration():Integer;
    //  { gJavaAnnotations.annotationTypeElementDeclaration(); }
    function genericMethodOrConstructorRest():Integer;
    //  { gJavaDecl.genericMethodOrConstructorRest(); }
    function classCreatorRest():Integer;
    //  { gJavaExpr.classCreatorRest(); }
    function instanceOfExpression():Integer;
    //  { gJavaExpr.instanceOfExpression(); }
    function voidInterfaceMethodDeclaratorRest():Integer;
    //  { gJavaDecl.voidInterfaceMethodDeclaratorRest(); }
    function annotationMethodOrConstantRest():Integer;
    //  { gJavaAnnotations.annotationMethodOrConstantRest(); }
    function interfaceGenericMethodDecl():Integer;
    //  { gJavaDecl.interfaceGenericMethodDecl(); }
    function interfaceMethodOrFieldDecl():Integer;
    //  { gJavaDecl.interfaceMethodOrFieldDecl(); }
    function elementValuePair():Integer;
    //  { gJavaAnnotations.elementValuePair(); }
    function primitiveType():Integer;
    //  { gJavaDecl.primitiveType(); }
    function parExpression():Integer;
    //  { gJavaExpr.parExpression(); }
    function explicitGenericInvocation():Integer;
    //  { gJavaExpr.explicitGenericInvocation(); }
    function fieldDeclaration():Integer;
    //  { gJavaDecl.fieldDeclaration(); }
    function variableDeclarator():Integer;
    //  { gJavaDecl.variableDeclarator(); }
    function typeParameter():Integer;
    //  { gJavaDecl.typeParameter(); }
    function forInit():Integer;
    //  { gJavaStat.forInit(); }
    function enumConstant():Integer;
    //  { gJavaDecl.enumConstant(); }
    function assignmentOperator():Integer;
    //  { gJavaExpr.assignmentOperator(); }
    function enumConstantName():Integer;
    //  { gJavaDecl.enumConstantName(); }
    function enumConstants():Integer;
    //  { gJavaDecl.enumConstants(); }
    function methodBody():Integer;
    //  { gJavaStat.methodBody(); }
    function conditionalOrExpression():Integer;
    //  { gJavaExpr.conditionalOrExpression(); }
    function variableDeclarators():Integer;
    //  { gJavaDecl.variableDeclarators(); }
    function memberDecl():Integer;
    //  { gJavaDecl.memberDecl(); }
    function switchLabel():Integer;
    //  { gJavaStat.switchLabel(); }
    function shiftOp():Integer;
    //  { gJavaExpr.shiftOp(); }
    function statementExpression():Integer;
    //  { gJavaExpr.statementExpression(); }
    function typeParameters():Integer;
    //  { gJavaDecl.typeParameters(); }
    function typeArgument():Integer;
    //  { gJavaDecl.typeArgument(); }

    function synpred1_Java():Boolean;
  protected
  end;

implementation
uses JclStacks,
    // delegates
    Java_JavaDecl,
    Java_JavaAnnotations,
    Java_JavaExpr,
    Java_JavaStat,
    // delegators
 
    JclHashSets;

function TJavaParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TJavaParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"Identifier"');
  tokenNames.Add('"ENUM"');
  tokenNames.Add('"FloatingPointLiteral"');
  tokenNames.Add('"CharacterLiteral"');
  tokenNames.Add('"StringLiteral"');
  tokenNames.Add('"HexLiteral"');
  tokenNames.Add('"OctalLiteral"');
  tokenNames.Add('"DecimalLiteral"');
  tokenNames.Add('"HexDigit"');
  tokenNames.Add('"IntegerTypeSuffix"');
  tokenNames.Add('"Exponent"');
  tokenNames.Add('"FloatTypeSuffix"');
  tokenNames.Add('"EscapeSequence"');
  tokenNames.Add('"UnicodeEscape"');
  tokenNames.Add('"OctalEscape"');
  tokenNames.Add('"Letter"');
  tokenNames.Add('"JavaIDDigit"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"COMMENT"');
  tokenNames.Add('"LINE_COMMENT"');
  tokenNames.Add('"''package''"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''import''"');
  tokenNames.Add('"''static''"');
  tokenNames.Add('"''.''"');
  tokenNames.Add('"''*''"');
  tokenNames.Add('"''class''"');
  tokenNames.Add('"''extends''"');
  tokenNames.Add('"''implements''"');
  tokenNames.Add('"''<''"');
  tokenNames.Add('"'',''"');
  tokenNames.Add('"''>''"');
  tokenNames.Add('"''&''"');
  tokenNames.Add('"''{''"');
  tokenNames.Add('"''}''"');
  tokenNames.Add('"''interface''"');
  tokenNames.Add('"''void''"');
  tokenNames.Add('"''[''"');
  tokenNames.Add('"'']''"');
  tokenNames.Add('"''throws''"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"''public''"');
  tokenNames.Add('"''protected''"');
  tokenNames.Add('"''private''"');
  tokenNames.Add('"''abstract''"');
  tokenNames.Add('"''final''"');
  tokenNames.Add('"''native''"');
  tokenNames.Add('"''synchronized''"');
  tokenNames.Add('"''transient''"');
  tokenNames.Add('"''volatile''"');
  tokenNames.Add('"''strictfp''"');
  tokenNames.Add('"''boolean''"');
  tokenNames.Add('"''char''"');
  tokenNames.Add('"''byte''"');
  tokenNames.Add('"''short''"');
  tokenNames.Add('"''int''"');
  tokenNames.Add('"''long''"');
  tokenNames.Add('"''float''"');
  tokenNames.Add('"''double''"');
  tokenNames.Add('"''?''"');
  tokenNames.Add('"''super''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"''...''"');
  tokenNames.Add('"''@''"');
  tokenNames.Add('"''default''"');
  tokenNames.Add('"''+=''"');
  tokenNames.Add('"''-=''"');
  tokenNames.Add('"''*=''"');
  tokenNames.Add('"''/=''"');
  tokenNames.Add('"''&=''"');
  tokenNames.Add('"''|=''"');
  tokenNames.Add('"''^=''"');
  tokenNames.Add('"''%=''"');
  tokenNames.Add('"'':''"');
  tokenNames.Add('"''||''"');
  tokenNames.Add('"''&&''"');
  tokenNames.Add('"''|''"');
  tokenNames.Add('"''^''"');
  tokenNames.Add('"''==''"');
  tokenNames.Add('"''!=''"');
  tokenNames.Add('"''instanceof''"');
  tokenNames.Add('"''+''"');
  tokenNames.Add('"''-''"');
  tokenNames.Add('"''/''"');
  tokenNames.Add('"''%''"');
  tokenNames.Add('"''++''"');
  tokenNames.Add('"''--''"');
  tokenNames.Add('"''~''"');
  tokenNames.Add('"''!''"');
  tokenNames.Add('"''this''"');
  tokenNames.Add('"''new''"');
  tokenNames.Add('"''null''"');
  tokenNames.Add('"''true''"');
  tokenNames.Add('"''false''"');
  tokenNames.Add('"''assert''"');
  tokenNames.Add('"''if''"');
  tokenNames.Add('"''else''"');
  tokenNames.Add('"''for''"');
  tokenNames.Add('"''while''"');
  tokenNames.Add('"''do''"');
  tokenNames.Add('"''try''"');
  tokenNames.Add('"''finally''"');
  tokenNames.Add('"''switch''"');
  tokenNames.Add('"''return''"');
  tokenNames.Add('"''throw''"');
  tokenNames.Add('"''break''"');
  tokenNames.Add('"''continue''"');
  tokenNames.Add('"''catch''"');
  tokenNames.Add('"''case''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

gJavaDecl := TJava_JavaDecl.CreateWithStream(input, state, self);
gJavaAnnotations := TJava_JavaAnnotations.CreateWithStream(input, state, self);
gJavaExpr := TJava_JavaExpr.CreateWithStream(input, state, self);
gJavaStat := TJava_JavaStat.CreateWithStream(input, state, self);
end;

    // Delegated rules
function TJavaParser.unaryExpressionNotPlusMinus():Integer;
begin
TJava_JavaExpr(gJavaExpr).unaryExpressionNotPlusMinus(); 
end;
function TJavaParser.enumBody():Integer;
begin
TJava_JavaDecl(gJavaDecl).enumBody(); 
end;
function TJavaParser.elementValuePairs():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).elementValuePairs(); 
end;
function TJavaParser.variableModifier():Integer;
begin
TJava_JavaDecl(gJavaDecl).variableModifier(); 
end;
function TJavaParser.arrayCreatorRest():Integer;
begin
TJava_JavaExpr(gJavaExpr).arrayCreatorRest(); 
end;
function TJavaParser.selector():Integer;
begin
TJava_JavaExpr(gJavaExpr).selector(); 
end;
function TJavaParser.conditionalAndExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).conditionalAndExpression(); 
end;
function TJavaParser.arrayInitializer():Integer;
begin
TJava_JavaDecl(gJavaDecl).arrayInitializer(); 
end;
function TJavaParser.constantDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).constantDeclaratorRest(); 
end;
function TJavaParser.localVariableDeclaration():Integer;
begin
TJava_JavaStat(gJavaStat).localVariableDeclaration(); 
end;
function TJavaParser.methodDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).methodDeclaration(); 
end;
function TJavaParser.formalParameterDecls():Integer;
begin
TJava_JavaDecl(gJavaDecl).formalParameterDecls(); 
end;
function TJavaParser.typeList():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeList(); 
end;
function TJavaParser.interfaceMethodDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceMethodDeclaratorRest(); 
end;
function TJavaParser.voidMethodDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).voidMethodDeclaratorRest(); 
end;
function TJavaParser.constantDeclarator():Integer;
begin
TJava_JavaDecl(gJavaDecl).constantDeclarator(); 
end;
function TJavaParser.interfaceDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceDeclaration(); 
end;
function TJavaParser.classBody():Integer;
begin
TJava_JavaDecl(gJavaDecl).classBody(); 
end;
function TJavaParser.modifier():Integer;
begin
TJava_JavaDecl(gJavaDecl).modifier(); 
end;
function TJavaParser.shiftExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).shiftExpression(); 
end;
function TJavaParser.createdName():Integer;
begin
TJava_JavaExpr(gJavaExpr).createdName(); 
end;
function TJavaParser.dtype():Integer;
begin
TJava_JavaDecl(gJavaDecl).dtype(); 
end;
function TJavaParser.multiplicativeExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).multiplicativeExpression(); 
end;
function TJavaParser.importDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).importDeclaration(); 
end;
function TJavaParser.annotationTypeElementRest():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationTypeElementRest(); 
end;
function TJavaParser.methodDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).methodDeclaratorRest(); 
end;
function TJavaParser.elementValueArrayInitializer():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).elementValueArrayInitializer(); 
end;
function TJavaParser.typeName():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeName(); 
end;
function TJavaParser.expressionList():Integer;
begin
TJava_JavaExpr(gJavaExpr).expressionList(); 
end;
function TJavaParser.innerCreator():Integer;
begin
TJava_JavaExpr(gJavaExpr).innerCreator(); 
end;
function TJavaParser.forControl():Integer;
begin
TJava_JavaStat(gJavaStat).forControl(); 
end;
function TJavaParser.enumDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).enumDeclaration(); 
end;
function TJavaParser.packageDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).packageDeclaration(); 
end;
function TJavaParser.annotation():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotation(); 
end;
function TJavaParser.integerLiteral():Integer;
begin
TJava_JavaExpr(gJavaExpr).integerLiteral(); 
end;
function TJavaParser.unaryExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).unaryExpression(); 
end;
function TJavaParser.qualifiedNameList():Integer;
begin
TJava_JavaDecl(gJavaDecl).qualifiedNameList(); 
end;
function TJavaParser.classDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).classDeclaration(); 
end;
function TJavaParser.variableDeclaratorId():Integer;
begin
TJava_JavaDecl(gJavaDecl).variableDeclaratorId(); 
end;
function TJavaParser.conditionalExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).conditionalExpression(); 
end;
function TJavaParser.andExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).andExpression(); 
end;
function TJavaParser.defaultValue():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).defaultValue(); 
end;
function TJavaParser.block():Integer;
begin
TJava_JavaStat(gJavaStat).block(); 
end;
function TJavaParser.exclusiveOrExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).exclusiveOrExpression(); 
end;
function TJavaParser.identifierSuffix():Integer;
begin
TJava_JavaExpr(gJavaExpr).identifierSuffix(); 
end;
function TJavaParser.interfaceMethodOrFieldRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceMethodOrFieldRest(); 
end;
function TJavaParser.catchClause():Integer;
begin
TJava_JavaStat(gJavaStat).catchClause(); 
end;
function TJavaParser.classOrInterfaceDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).classOrInterfaceDeclaration(); 
end;
function TJavaParser.switchBlockStatementGroup():Integer;
begin
TJava_JavaStat(gJavaStat).switchBlockStatementGroup(); 
end;
function TJavaParser.formalParameters():Integer;
begin
TJava_JavaDecl(gJavaDecl).formalParameters(); 
end;
function TJavaParser.expression():Integer;
begin
TJava_JavaExpr(gJavaExpr).expression(); 
end;
function TJavaParser.castExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).castExpression(); 
end;
function TJavaParser.arguments():Integer;
begin
TJava_JavaExpr(gJavaExpr).arguments(); 
end;
function TJavaParser.constantDeclaratorsRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).constantDeclaratorsRest(); 
end;
function TJavaParser.normalInterfaceDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).normalInterfaceDeclaration(); 
end;
function TJavaParser.interfaceMemberDecl():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceMemberDecl(); 
end;
function TJavaParser.catches():Integer;
begin
TJava_JavaStat(gJavaStat).catches(); 
end;
function TJavaParser.equalityExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).equalityExpression(); 
end;
function TJavaParser.interfaceBodyDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceBodyDeclaration(); 
end;
function TJavaParser.statement():Integer;
begin
TJava_JavaStat(gJavaStat).statement(); 
end;
function TJavaParser.blockStatement():Integer;
begin
TJava_JavaStat(gJavaStat).blockStatement(); 
end;
function TJavaParser.relationalExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).relationalExpression(); 
end;
function TJavaParser.variableInitializer():Integer;
begin
TJava_JavaDecl(gJavaDecl).variableInitializer(); 
end;
function TJavaParser.enumBodyDeclarations():Integer;
begin
TJava_JavaDecl(gJavaDecl).enumBodyDeclarations(); 
end;
function TJavaParser.switchBlockStatementGroups():Integer;
begin
TJava_JavaStat(gJavaStat).switchBlockStatementGroups(); 
end;
function TJavaParser.creator():Integer;
begin
TJava_JavaExpr(gJavaExpr).creator(); 
end;
function TJavaParser.qualifiedName():Integer;
begin
TJava_JavaDecl(gJavaDecl).qualifiedName(); 
end;
function TJavaParser.constructorDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).constructorDeclaratorRest(); 
end;
function TJavaParser.superSuffix():Integer;
begin
TJava_JavaExpr(gJavaExpr).superSuffix(); 
end;
function TJavaParser.forUpdate():Integer;
begin
TJava_JavaStat(gJavaStat).forUpdate(); 
end;
function TJavaParser.normalClassDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).normalClassDeclaration(); 
end;
function TJavaParser.literal():Integer;
begin
TJava_JavaExpr(gJavaExpr).literal(); 
end;
function TJavaParser.forVarControl():Integer;
begin
TJava_JavaStat(gJavaStat).forVarControl(); 
end;
function TJavaParser.bound():Integer;
begin
TJava_JavaDecl(gJavaDecl).bound(); 
end;
function TJavaParser.constantExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).constantExpression(); 
end;
function TJavaParser.typeDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeDeclaration(); 
end;
function TJavaParser.annotationTypeDeclaration():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationTypeDeclaration(); 
end;
function TJavaParser.nonWildcardTypeArguments():Integer;
begin
TJava_JavaExpr(gJavaExpr).nonWildcardTypeArguments(); 
end;
function TJavaParser.genericMethodOrConstructorDecl():Integer;
begin
TJava_JavaDecl(gJavaDecl).genericMethodOrConstructorDecl(); 
end;
function TJavaParser.formalParameter():Integer;
begin
TJava_JavaStat(gJavaStat).formalParameter(); 
end;
function TJavaParser.packageOrTypeName():Integer;
begin
TJava_JavaDecl(gJavaDecl).packageOrTypeName(); 
end;
function TJavaParser.relationalOp():Integer;
begin
TJava_JavaExpr(gJavaExpr).relationalOp(); 
end;
function TJavaParser.formalParameterDeclsRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).formalParameterDeclsRest(); 
end;
function TJavaParser.interfaceBody():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceBody(); 
end;
function TJavaParser.annotationMethodRest():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationMethodRest(); 
end;
function TJavaParser.annotationName():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationName(); 
end;
function TJavaParser.typeArguments():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeArguments(); 
end;
function TJavaParser.annotations():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotations(); 
end;
function TJavaParser.inclusiveOrExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).inclusiveOrExpression(); 
end;
function TJavaParser.elementValue():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).elementValue(); 
end;
function TJavaParser.moreStatementExpressions():Integer;
begin
TJava_JavaStat(gJavaStat).moreStatementExpressions(); 
end;
function TJavaParser.annotationConstantRest():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationConstantRest(); 
end;
function TJavaParser.explicitGenericInvocationSuffix():Integer;
begin
TJava_JavaExpr(gJavaExpr).explicitGenericInvocationSuffix(); 
end;
function TJavaParser.additiveExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).additiveExpression(); 
end;
function TJavaParser.classBodyDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).classBodyDeclaration(); 
end;
function TJavaParser.booleanLiteral():Integer;
begin
TJava_JavaExpr(gJavaExpr).booleanLiteral(); 
end;
function TJavaParser.variableDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).variableDeclaratorRest(); 
end;
function TJavaParser.primary():Integer;
begin
TJava_JavaExpr(gJavaExpr).primary(); 
end;
function TJavaParser.annotationTypeBody():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationTypeBody(); 
end;
function TJavaParser.annotationTypeElementDeclarations():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationTypeElementDeclarations(); 
end;
function TJavaParser.annotationTypeElementDeclaration():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationTypeElementDeclaration(); 
end;
function TJavaParser.genericMethodOrConstructorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).genericMethodOrConstructorRest(); 
end;
function TJavaParser.classCreatorRest():Integer;
begin
TJava_JavaExpr(gJavaExpr).classCreatorRest(); 
end;
function TJavaParser.instanceOfExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).instanceOfExpression(); 
end;
function TJavaParser.voidInterfaceMethodDeclaratorRest():Integer;
begin
TJava_JavaDecl(gJavaDecl).voidInterfaceMethodDeclaratorRest(); 
end;
function TJavaParser.annotationMethodOrConstantRest():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).annotationMethodOrConstantRest(); 
end;
function TJavaParser.interfaceGenericMethodDecl():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceGenericMethodDecl(); 
end;
function TJavaParser.interfaceMethodOrFieldDecl():Integer;
begin
TJava_JavaDecl(gJavaDecl).interfaceMethodOrFieldDecl(); 
end;
function TJavaParser.elementValuePair():Integer;
begin
TJava_JavaAnnotations(gJavaAnnotations).elementValuePair(); 
end;
function TJavaParser.primitiveType():Integer;
begin
TJava_JavaDecl(gJavaDecl).primitiveType(); 
end;
function TJavaParser.parExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).parExpression(); 
end;
function TJavaParser.explicitGenericInvocation():Integer;
begin
TJava_JavaExpr(gJavaExpr).explicitGenericInvocation(); 
end;
function TJavaParser.fieldDeclaration():Integer;
begin
TJava_JavaDecl(gJavaDecl).fieldDeclaration(); 
end;
function TJavaParser.variableDeclarator():Integer;
begin
TJava_JavaDecl(gJavaDecl).variableDeclarator(); 
end;
function TJavaParser.typeParameter():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeParameter(); 
end;
function TJavaParser.forInit():Integer;
begin
TJava_JavaStat(gJavaStat).forInit(); 
end;
function TJavaParser.enumConstant():Integer;
begin
TJava_JavaDecl(gJavaDecl).enumConstant(); 
end;
function TJavaParser.assignmentOperator():Integer;
begin
TJava_JavaExpr(gJavaExpr).assignmentOperator(); 
end;
function TJavaParser.enumConstantName():Integer;
begin
TJava_JavaDecl(gJavaDecl).enumConstantName(); 
end;
function TJavaParser.enumConstants():Integer;
begin
TJava_JavaDecl(gJavaDecl).enumConstants(); 
end;
function TJavaParser.methodBody():Integer;
begin
TJava_JavaStat(gJavaStat).methodBody(); 
end;
function TJavaParser.conditionalOrExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).conditionalOrExpression(); 
end;
function TJavaParser.variableDeclarators():Integer;
begin
TJava_JavaDecl(gJavaDecl).variableDeclarators(); 
end;
function TJavaParser.memberDecl():Integer;
begin
TJava_JavaDecl(gJavaDecl).memberDecl(); 
end;
function TJavaParser.switchLabel():Integer;
begin
TJava_JavaStat(gJavaStat).switchLabel(); 
end;
function TJavaParser.shiftOp():Integer;
begin
TJava_JavaExpr(gJavaExpr).shiftOp(); 
end;
function TJavaParser.statementExpression():Integer;
begin
TJava_JavaExpr(gJavaExpr).statementExpression(); 
end;
function TJavaParser.typeParameters():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeParameters(); 
end;
function TJavaParser.typeArgument():Integer;
begin
TJava_JavaDecl(gJavaDecl).typeArgument(); 
end;

procedure TJavaParser.InitBitsets;
begin
  FOLLOW_annotations_in_compilationUnit49 := TAntlrBitSet.CreateWithBits([$007FE0804F000022,$0000000000000010]);
  FOLLOW_packageDeclaration_in_compilationUnit54 := TAntlrBitSet.CreateWithBits([$007FE0804E000022,$0000000000000010]);
  FOLLOW_importDeclaration_in_compilationUnit65 := TAntlrBitSet.CreateWithBits([$007FE0804E000022,$0000000000000010]);
  FOLLOW_typeDeclaration_in_compilationUnit76 := TAntlrBitSet.CreateWithBits([$007FE0804A000022,$0000000000000010]);
  FOLLOW_annotations_in_synpred1_Java49 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TJavaParser.Destroy;
begin
  FreeAndNil(tokenNames);
gJavaDecl.free;
gJavaAnnotations.free;
gJavaExpr.free;
gJavaStat.free;
 
  inherited;
end;

function TJavaParser.GetGrammarFileName():String;
begin
  Result:='Java.g'; 
end;

// $ANTLR start "compilationUnit"
// Java.g:10:1: compilationUnit : ( annotations )? ( packageDeclaration )? ( importDeclaration )* ( typeDeclaration )* ;
function TJavaParser.compilationUnit():Integer;
var
  _alt:array [0..255] of Integer;
  compilationUnit_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    compilationUnit_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 398) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:Java.g:11:2: ( ( annotations )? ( packageDeclaration )? ( importDeclaration )* ( typeDeclaration )* )
        // Java.g:11:4: ( annotations )? ( packageDeclaration )? ( importDeclaration )* ( typeDeclaration )*
        begin
        // block:Java.g:11:4: ( annotations )?
        _alt[1]:=2;
        _LA[1,0] := input.LA(1);

        if ( ((_LA[1,0]=68)) ) then 
        begin
          _LA[1,1] := input.LA(2);

          if ( ((_LA[1,1]=Identifier)) ) then 
          begin
            _LA[1,3] := input.LA(3);

            if ( (synpred1_Java()) ) then 
            begin
              _alt[1]:=1;
            end
            ;
          end
          ;
        end
        ;
        case (_alt[1]) of
             1 :
                begin
                // Java.g:0:0: annotations
                begin
                pushFollow(FOLLOW_annotations_in_compilationUnit49);
                annotations();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:Java.g:12:3: ( packageDeclaration )?
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=24)) ) then 
        begin
          _alt[2]:=1;
        end
        ;
        case (_alt[2]) of
             1 :
                begin
                // Java.g:0:0: packageDeclaration
                begin
                pushFollow(FOLLOW_packageDeclaration_in_compilationUnit54);
                packageDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // closureBlock:Java.g:13:9: ( importDeclaration )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=26)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // Java.g:0:0: importDeclaration
        	    begin
        	    pushFollow(FOLLOW_importDeclaration_in_compilationUnit65);
        	    importDeclaration();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // closureBlock:Java.g:14:9: ( typeDeclaration )*
        repeat 
            _alt[4]:=2;
            _LA[4,0] := input.LA(1);

            if ( ((_LA[4,0]=ENUM) or (_LA[4,0]=25) or (_LA[4,0]=27) or (_LA[4,0]=30) or (_LA[4,0]=39) or ((_LA[4,0]>=45) and 
            ( _LA[4,0]<=54)) or (_LA[4,0]=68)) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            case (_alt[4]) of
        	 1 :
        	    begin
        	    // Java.g:0:0: typeDeclaration
        	    begin
        	    pushFollow(FOLLOW_typeDeclaration_in_compilationUnit76);
        	    typeDeclaration();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 398, compilationUnit_StartIndex);
        end;
    end;
end;// $ANTLR start "synpred1_Java"
function TJavaParser.synpred1_Java_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:Java.g:11:4: ( annotations )
    // Java.g:11:4: annotations
    begin
    pushFollow(FOLLOW_annotations_in_synpred1_Java49);
    annotations();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred1_Java

function TJavaParser.synpred1_Java():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred1_Java_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.