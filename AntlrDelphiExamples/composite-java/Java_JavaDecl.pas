// $ANTLR 3.1.2 JavaDecl.g 2009-07-23 21:37:51
unit Java_JavaDecl;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

              
type
  TJava_JavaDecl = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_24_in_packageDeclaration22:IBitSet;
    FOLLOW_qualifiedName_in_packageDeclaration24:IBitSet;
    FOLLOW_25_in_packageDeclaration26:IBitSet;
    FOLLOW_26_in_importDeclaration38:IBitSet;
    FOLLOW_27_in_importDeclaration40:IBitSet;
    FOLLOW_Identifier_in_importDeclaration43:IBitSet;
    FOLLOW_28_in_importDeclaration46:IBitSet;
    FOLLOW_Identifier_in_importDeclaration48:IBitSet;
    FOLLOW_28_in_importDeclaration53:IBitSet;
    FOLLOW_29_in_importDeclaration55:IBitSet;
    FOLLOW_25_in_importDeclaration59:IBitSet;
    FOLLOW_classOrInterfaceDeclaration_in_typeDeclaration71:IBitSet;
    FOLLOW_25_in_typeDeclaration81:IBitSet;
    FOLLOW_modifier_in_classOrInterfaceDeclaration93:IBitSet;
    FOLLOW_classDeclaration_in_classOrInterfaceDeclaration97:IBitSet;
    FOLLOW_interfaceDeclaration_in_classOrInterfaceDeclaration101:IBitSet;
    FOLLOW_normalClassDeclaration_in_classDeclaration114:IBitSet;
    FOLLOW_enumDeclaration_in_classDeclaration124:IBitSet;
    FOLLOW_30_in_normalClassDeclaration136:IBitSet;
    FOLLOW_Identifier_in_normalClassDeclaration138:IBitSet;
    FOLLOW_typeParameters_in_normalClassDeclaration141:IBitSet;
    FOLLOW_31_in_normalClassDeclaration154:IBitSet;
    FOLLOW_dtype_in_normalClassDeclaration156:IBitSet;
    FOLLOW_32_in_normalClassDeclaration169:IBitSet;
    FOLLOW_typeList_in_normalClassDeclaration171:IBitSet;
    FOLLOW_classBody_in_normalClassDeclaration183:IBitSet;
    FOLLOW_33_in_typeParameters195:IBitSet;
    FOLLOW_typeParameter_in_typeParameters197:IBitSet;
    FOLLOW_34_in_typeParameters200:IBitSet;
    FOLLOW_typeParameter_in_typeParameters202:IBitSet;
    FOLLOW_35_in_typeParameters206:IBitSet;
    FOLLOW_Identifier_in_typeParameter217:IBitSet;
    FOLLOW_31_in_typeParameter220:IBitSet;
    FOLLOW_bound_in_typeParameter222:IBitSet;
    FOLLOW_dtype_in_bound237:IBitSet;
    FOLLOW_36_in_bound240:IBitSet;
    FOLLOW_dtype_in_bound242:IBitSet;
    FOLLOW_ENUM_in_enumDeclaration255:IBitSet;
    FOLLOW_Identifier_in_enumDeclaration257:IBitSet;
    FOLLOW_32_in_enumDeclaration260:IBitSet;
    FOLLOW_typeList_in_enumDeclaration262:IBitSet;
    FOLLOW_enumBody_in_enumDeclaration266:IBitSet;
    FOLLOW_37_in_enumBody278:IBitSet;
    FOLLOW_enumConstants_in_enumBody280:IBitSet;
    FOLLOW_34_in_enumBody283:IBitSet;
    FOLLOW_enumBodyDeclarations_in_enumBody286:IBitSet;
    FOLLOW_38_in_enumBody289:IBitSet;
    FOLLOW_enumConstant_in_enumConstants300:IBitSet;
    FOLLOW_34_in_enumConstants303:IBitSet;
    FOLLOW_enumConstant_in_enumConstants305:IBitSet;
    FOLLOW_annotations_in_enumConstant319:IBitSet;
    FOLLOW_Identifier_in_enumConstant322:IBitSet;
    FOLLOW_arguments_in_enumConstant325:IBitSet;
    FOLLOW_classBody_in_enumConstant330:IBitSet;
    FOLLOW_25_in_enumBodyDeclarations344:IBitSet;
    FOLLOW_classBodyDeclaration_in_enumBodyDeclarations347:IBitSet;
    FOLLOW_normalInterfaceDeclaration_in_interfaceDeclaration361:IBitSet;
    FOLLOW_annotationTypeDeclaration_in_interfaceDeclaration367:IBitSet;
    FOLLOW_39_in_normalInterfaceDeclaration379:IBitSet;
    FOLLOW_Identifier_in_normalInterfaceDeclaration381:IBitSet;
    FOLLOW_typeParameters_in_normalInterfaceDeclaration383:IBitSet;
    FOLLOW_31_in_normalInterfaceDeclaration387:IBitSet;
    FOLLOW_typeList_in_normalInterfaceDeclaration389:IBitSet;
    FOLLOW_interfaceBody_in_normalInterfaceDeclaration393:IBitSet;
    FOLLOW_dtype_in_typeList405:IBitSet;
    FOLLOW_34_in_typeList408:IBitSet;
    FOLLOW_dtype_in_typeList410:IBitSet;
    FOLLOW_37_in_classBody424:IBitSet;
    FOLLOW_classBodyDeclaration_in_classBody426:IBitSet;
    FOLLOW_38_in_classBody429:IBitSet;
    FOLLOW_37_in_interfaceBody441:IBitSet;
    FOLLOW_interfaceBodyDeclaration_in_interfaceBody443:IBitSet;
    FOLLOW_38_in_interfaceBody446:IBitSet;
    FOLLOW_25_in_classBodyDeclaration457:IBitSet;
    FOLLOW_27_in_classBodyDeclaration462:IBitSet;
    FOLLOW_block_in_classBodyDeclaration465:IBitSet;
    FOLLOW_modifier_in_classBodyDeclaration470:IBitSet;
    FOLLOW_memberDecl_in_classBodyDeclaration473:IBitSet;
    FOLLOW_genericMethodOrConstructorDecl_in_memberDecl485:IBitSet;
    FOLLOW_methodDeclaration_in_memberDecl490:IBitSet;
    FOLLOW_fieldDeclaration_in_memberDecl495:IBitSet;
    FOLLOW_40_in_memberDecl500:IBitSet;
    FOLLOW_Identifier_in_memberDecl502:IBitSet;
    FOLLOW_voidMethodDeclaratorRest_in_memberDecl504:IBitSet;
    FOLLOW_Identifier_in_memberDecl509:IBitSet;
    FOLLOW_constructorDeclaratorRest_in_memberDecl511:IBitSet;
    FOLLOW_interfaceDeclaration_in_memberDecl516:IBitSet;
    FOLLOW_classDeclaration_in_memberDecl521:IBitSet;
    FOLLOW_typeParameters_in_genericMethodOrConstructorDecl533:IBitSet;
    FOLLOW_genericMethodOrConstructorRest_in_genericMethodOrConstructorDecl535:IBitSet;
    FOLLOW_dtype_in_genericMethodOrConstructorRest548:IBitSet;
    FOLLOW_40_in_genericMethodOrConstructorRest552:IBitSet;
    FOLLOW_Identifier_in_genericMethodOrConstructorRest555:IBitSet;
    FOLLOW_methodDeclaratorRest_in_genericMethodOrConstructorRest557:IBitSet;
    FOLLOW_Identifier_in_genericMethodOrConstructorRest562:IBitSet;
    FOLLOW_constructorDeclaratorRest_in_genericMethodOrConstructorRest564:IBitSet;
    FOLLOW_dtype_in_methodDeclaration575:IBitSet;
    FOLLOW_Identifier_in_methodDeclaration577:IBitSet;
    FOLLOW_methodDeclaratorRest_in_methodDeclaration579:IBitSet;
    FOLLOW_dtype_in_fieldDeclaration590:IBitSet;
    FOLLOW_variableDeclarators_in_fieldDeclaration592:IBitSet;
    FOLLOW_25_in_fieldDeclaration594:IBitSet;
    FOLLOW_modifier_in_interfaceBodyDeclaration607:IBitSet;
    FOLLOW_interfaceMemberDecl_in_interfaceBodyDeclaration610:IBitSet;
    FOLLOW_25_in_interfaceBodyDeclaration617:IBitSet;
    FOLLOW_interfaceMethodOrFieldDecl_in_interfaceMemberDecl628:IBitSet;
    FOLLOW_interfaceGenericMethodDecl_in_interfaceMemberDecl635:IBitSet;
    FOLLOW_40_in_interfaceMemberDecl645:IBitSet;
    FOLLOW_Identifier_in_interfaceMemberDecl647:IBitSet;
    FOLLOW_voidInterfaceMethodDeclaratorRest_in_interfaceMemberDecl649:IBitSet;
    FOLLOW_interfaceDeclaration_in_interfaceMemberDecl659:IBitSet;
    FOLLOW_classDeclaration_in_interfaceMemberDecl669:IBitSet;
    FOLLOW_dtype_in_interfaceMethodOrFieldDecl681:IBitSet;
    FOLLOW_Identifier_in_interfaceMethodOrFieldDecl683:IBitSet;
    FOLLOW_interfaceMethodOrFieldRest_in_interfaceMethodOrFieldDecl685:IBitSet;
    FOLLOW_constantDeclaratorsRest_in_interfaceMethodOrFieldRest697:IBitSet;
    FOLLOW_25_in_interfaceMethodOrFieldRest699:IBitSet;
    FOLLOW_interfaceMethodDeclaratorRest_in_interfaceMethodOrFieldRest704:IBitSet;
    FOLLOW_formalParameters_in_methodDeclaratorRest716:IBitSet;
    FOLLOW_41_in_methodDeclaratorRest719:IBitSet;
    FOLLOW_42_in_methodDeclaratorRest721:IBitSet;
    FOLLOW_43_in_methodDeclaratorRest734:IBitSet;
    FOLLOW_qualifiedNameList_in_methodDeclaratorRest736:IBitSet;
    FOLLOW_methodBody_in_methodDeclaratorRest752:IBitSet;
    FOLLOW_25_in_methodDeclaratorRest766:IBitSet;
    FOLLOW_formalParameters_in_voidMethodDeclaratorRest788:IBitSet;
    FOLLOW_43_in_voidMethodDeclaratorRest791:IBitSet;
    FOLLOW_qualifiedNameList_in_voidMethodDeclaratorRest793:IBitSet;
    FOLLOW_methodBody_in_voidMethodDeclaratorRest809:IBitSet;
    FOLLOW_25_in_voidMethodDeclaratorRest823:IBitSet;
    FOLLOW_formalParameters_in_interfaceMethodDeclaratorRest845:IBitSet;
    FOLLOW_41_in_interfaceMethodDeclaratorRest848:IBitSet;
    FOLLOW_42_in_interfaceMethodDeclaratorRest850:IBitSet;
    FOLLOW_43_in_interfaceMethodDeclaratorRest855:IBitSet;
    FOLLOW_qualifiedNameList_in_interfaceMethodDeclaratorRest857:IBitSet;
    FOLLOW_25_in_interfaceMethodDeclaratorRest861:IBitSet;
    FOLLOW_typeParameters_in_interfaceGenericMethodDecl873:IBitSet;
    FOLLOW_dtype_in_interfaceGenericMethodDecl876:IBitSet;
    FOLLOW_40_in_interfaceGenericMethodDecl880:IBitSet;
    FOLLOW_Identifier_in_interfaceGenericMethodDecl883:IBitSet;
    FOLLOW_interfaceMethodDeclaratorRest_in_interfaceGenericMethodDecl893:IBitSet;
    FOLLOW_formalParameters_in_voidInterfaceMethodDeclaratorRest905:IBitSet;
    FOLLOW_43_in_voidInterfaceMethodDeclaratorRest908:IBitSet;
    FOLLOW_qualifiedNameList_in_voidInterfaceMethodDeclaratorRest910:IBitSet;
    FOLLOW_25_in_voidInterfaceMethodDeclaratorRest914:IBitSet;
    FOLLOW_formalParameters_in_constructorDeclaratorRest926:IBitSet;
    FOLLOW_43_in_constructorDeclaratorRest929:IBitSet;
    FOLLOW_qualifiedNameList_in_constructorDeclaratorRest931:IBitSet;
    FOLLOW_methodBody_in_constructorDeclaratorRest935:IBitSet;
    FOLLOW_Identifier_in_constantDeclarator946:IBitSet;
    FOLLOW_constantDeclaratorRest_in_constantDeclarator948:IBitSet;
    FOLLOW_variableDeclarator_in_variableDeclarators960:IBitSet;
    FOLLOW_34_in_variableDeclarators963:IBitSet;
    FOLLOW_variableDeclarator_in_variableDeclarators965:IBitSet;
    FOLLOW_Identifier_in_variableDeclarator978:IBitSet;
    FOLLOW_variableDeclaratorRest_in_variableDeclarator980:IBitSet;
    FOLLOW_41_in_variableDeclaratorRest993:IBitSet;
    FOLLOW_42_in_variableDeclaratorRest995:IBitSet;
    FOLLOW_44_in_variableDeclaratorRest1000:IBitSet;
    FOLLOW_variableInitializer_in_variableDeclaratorRest1002:IBitSet;
    FOLLOW_44_in_variableDeclaratorRest1009:IBitSet;
    FOLLOW_variableInitializer_in_variableDeclaratorRest1011:IBitSet;
    FOLLOW_constantDeclaratorRest_in_constantDeclaratorsRest1031:IBitSet;
    FOLLOW_34_in_constantDeclaratorsRest1034:IBitSet;
    FOLLOW_constantDeclarator_in_constantDeclaratorsRest1036:IBitSet;
    FOLLOW_41_in_constantDeclaratorRest1053:IBitSet;
    FOLLOW_42_in_constantDeclaratorRest1055:IBitSet;
    FOLLOW_44_in_constantDeclaratorRest1059:IBitSet;
    FOLLOW_variableInitializer_in_constantDeclaratorRest1061:IBitSet;
    FOLLOW_Identifier_in_variableDeclaratorId1073:IBitSet;
    FOLLOW_41_in_variableDeclaratorId1076:IBitSet;
    FOLLOW_42_in_variableDeclaratorId1078:IBitSet;
    FOLLOW_arrayInitializer_in_variableInitializer1091:IBitSet;
    FOLLOW_expression_in_variableInitializer1101:IBitSet;
    FOLLOW_37_in_arrayInitializer1113:IBitSet;
    FOLLOW_variableInitializer_in_arrayInitializer1116:IBitSet;
    FOLLOW_34_in_arrayInitializer1119:IBitSet;
    FOLLOW_variableInitializer_in_arrayInitializer1121:IBitSet;
    FOLLOW_34_in_arrayInitializer1126:IBitSet;
    FOLLOW_38_in_arrayInitializer1133:IBitSet;
    FOLLOW_annotation_in_modifier1149:IBitSet;
    FOLLOW_45_in_modifier1159:IBitSet;
    FOLLOW_46_in_modifier1169:IBitSet;
    FOLLOW_47_in_modifier1179:IBitSet;
    FOLLOW_27_in_modifier1189:IBitSet;
    FOLLOW_48_in_modifier1199:IBitSet;
    FOLLOW_49_in_modifier1209:IBitSet;
    FOLLOW_50_in_modifier1219:IBitSet;
    FOLLOW_51_in_modifier1229:IBitSet;
    FOLLOW_52_in_modifier1239:IBitSet;
    FOLLOW_53_in_modifier1249:IBitSet;
    FOLLOW_54_in_modifier1259:IBitSet;
    FOLLOW_Identifier_in_packageOrTypeName1273:IBitSet;
    FOLLOW_28_in_packageOrTypeName1276:IBitSet;
    FOLLOW_Identifier_in_packageOrTypeName1278:IBitSet;
    FOLLOW_Identifier_in_enumConstantName1296:IBitSet;
    FOLLOW_Identifier_in_typeName1312:IBitSet;
    FOLLOW_packageOrTypeName_in_typeName1322:IBitSet;
    FOLLOW_28_in_typeName1324:IBitSet;
    FOLLOW_Identifier_in_typeName1326:IBitSet;
    FOLLOW_Identifier_in_dtype1337:IBitSet;
    FOLLOW_typeArguments_in_dtype1340:IBitSet;
    FOLLOW_28_in_dtype1345:IBitSet;
    FOLLOW_Identifier_in_dtype1347:IBitSet;
    FOLLOW_typeArguments_in_dtype1350:IBitSet;
    FOLLOW_41_in_dtype1358:IBitSet;
    FOLLOW_42_in_dtype1360:IBitSet;
    FOLLOW_primitiveType_in_dtype1367:IBitSet;
    FOLLOW_41_in_dtype1370:IBitSet;
    FOLLOW_42_in_dtype1372:IBitSet;
    FOLLOW_set_in_primitiveType0:IBitSet;
    FOLLOW_49_in_variableModifier1460:IBitSet;
    FOLLOW_annotation_in_variableModifier1470:IBitSet;
    FOLLOW_33_in_typeArguments1481:IBitSet;
    FOLLOW_typeArgument_in_typeArguments1483:IBitSet;
    FOLLOW_34_in_typeArguments1486:IBitSet;
    FOLLOW_typeArgument_in_typeArguments1488:IBitSet;
    FOLLOW_35_in_typeArguments1492:IBitSet;
    FOLLOW_dtype_in_typeArgument1504:IBitSet;
    FOLLOW_63_in_typeArgument1509:IBitSet;
    FOLLOW_set_in_typeArgument1512:IBitSet;
    FOLLOW_dtype_in_typeArgument1520:IBitSet;
    FOLLOW_qualifiedName_in_qualifiedNameList1534:IBitSet;
    FOLLOW_34_in_qualifiedNameList1537:IBitSet;
    FOLLOW_qualifiedName_in_qualifiedNameList1539:IBitSet;
    FOLLOW_65_in_formalParameters1553:IBitSet;
    FOLLOW_formalParameterDecls_in_formalParameters1555:IBitSet;
    FOLLOW_66_in_formalParameters1558:IBitSet;
    FOLLOW_variableModifier_in_formalParameterDecls1570:IBitSet;
    FOLLOW_dtype_in_formalParameterDecls1573:IBitSet;
    FOLLOW_formalParameterDeclsRest_in_formalParameterDecls1575:IBitSet;
    FOLLOW_variableDeclaratorId_in_formalParameterDeclsRest1588:IBitSet;
    FOLLOW_34_in_formalParameterDeclsRest1591:IBitSet;
    FOLLOW_formalParameterDecls_in_formalParameterDeclsRest1593:IBitSet;
    FOLLOW_67_in_formalParameterDeclsRest1602:IBitSet;
    FOLLOW_variableDeclaratorId_in_formalParameterDeclsRest1604:IBitSet;
    FOLLOW_Identifier_in_qualifiedName1616:IBitSet;
    FOLLOW_28_in_qualifiedName1619:IBitSet;
    FOLLOW_Identifier_in_qualifiedName1621:IBitSet;
    FOLLOW_methodDeclaration_in_synpred34_JavaDecl490:IBitSet;
    FOLLOW_fieldDeclaration_in_synpred35_JavaDecl495:IBitSet;
    FOLLOW_Identifier_in_synpred37_JavaDecl509:IBitSet;
    FOLLOW_constructorDeclaratorRest_in_synpred37_JavaDecl511:IBitSet;
    

    // delegates
    // delegators
    public 
        gJava:TAntlrBaseRecognizer{TJavaParser} ;
    public 
        gParent:TAntlrBaseRecognizer{TJavaParser};
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState; gJava:TAntlrBaseRecognizer{TJavaParser} );
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "packageDeclaration"
    // JavaDecl.g:6:1: packageDeclaration : ''package'' qualifiedName '';'' ;
    function packageDeclaration():Integer;
    // $ANTLR end packageDeclaration


    // $ANTLR start "importDeclaration"
    // JavaDecl.g:10:1: importDeclaration : ''import'' ( ''static'' )? Identifier ( ''.'' Identifier )* ( ''.'' ''*'' )? '';'' ;
    function importDeclaration():Integer;
    // $ANTLR end importDeclaration


    // $ANTLR start "typeDeclaration"
    // JavaDecl.g:14:1: typeDeclaration : ( classOrInterfaceDeclaration | '';'' );
    function typeDeclaration():Integer;
    // $ANTLR end typeDeclaration


    // $ANTLR start "classOrInterfaceDeclaration"
    // JavaDecl.g:19:1: classOrInterfaceDeclaration : ( modifier )* ( classDeclaration | interfaceDeclaration ) ;
    function classOrInterfaceDeclaration():Integer;
    // $ANTLR end classOrInterfaceDeclaration


    // $ANTLR start "classDeclaration"
    // JavaDecl.g:23:1: classDeclaration : ( normalClassDeclaration | enumDeclaration );
    function classDeclaration():Integer;
    // $ANTLR end classDeclaration


    // $ANTLR start "normalClassDeclaration"
    // JavaDecl.g:28:1: normalClassDeclaration : ''class'' Identifier ( typeParameters )? ( ''extends'' dtype )? ( ''implements'' typeList )? classBody ;
    function normalClassDeclaration():Integer;
    // $ANTLR end normalClassDeclaration


    // $ANTLR start "typeParameters"
    // JavaDecl.g:35:1: typeParameters : ''<'' typeParameter ( '','' typeParameter )* ''>'' ;
    function typeParameters():Integer;
    // $ANTLR end typeParameters


    // $ANTLR start "typeParameter"
    // JavaDecl.g:39:1: typeParameter : Identifier ( ''extends'' bound )? ;
    function typeParameter():Integer;
    // $ANTLR end typeParameter


    // $ANTLR start "bound"
    // JavaDecl.g:43:1: bound : dtype ( ''&'' dtype )* ;
    function bound():Integer;
    // $ANTLR end bound


    // $ANTLR start "enumDeclaration"
    // JavaDecl.g:47:1: enumDeclaration : ENUM Identifier ( ''implements'' typeList )? enumBody ;
    function enumDeclaration():Integer;
    // $ANTLR end enumDeclaration


    // $ANTLR start "enumBody"
    // JavaDecl.g:51:1: enumBody : ''{'' ( enumConstants )? ( '','' )? ( enumBodyDeclarations )? ''}'' ;
    function enumBody():Integer;
    // $ANTLR end enumBody


    // $ANTLR start "enumConstants"
    // JavaDecl.g:55:1: enumConstants : enumConstant ( '','' enumConstant )* ;
    function enumConstants():Integer;
    // $ANTLR end enumConstants


    // $ANTLR start "enumConstant"
    // JavaDecl.g:59:1: enumConstant : ( annotations )? Identifier ( arguments )? ( classBody )? ;
    function enumConstant():Integer;
    // $ANTLR end enumConstant


    // $ANTLR start "enumBodyDeclarations"
    // JavaDecl.g:63:1: enumBodyDeclarations : '';'' ( classBodyDeclaration )* ;
    function enumBodyDeclarations():Integer;
    // $ANTLR end enumBodyDeclarations


    // $ANTLR start "interfaceDeclaration"
    // JavaDecl.g:67:1: interfaceDeclaration : ( normalInterfaceDeclaration | annotationTypeDeclaration );
    function interfaceDeclaration():Integer;
    // $ANTLR end interfaceDeclaration


    // $ANTLR start "normalInterfaceDeclaration"
    // JavaDecl.g:72:1: normalInterfaceDeclaration : ''interface'' Identifier ( typeParameters )? ( ''extends'' typeList )? interfaceBody ;
    function normalInterfaceDeclaration():Integer;
    // $ANTLR end normalInterfaceDeclaration


    // $ANTLR start "typeList"
    // JavaDecl.g:76:1: typeList : dtype ( '','' dtype )* ;
    function typeList():Integer;
    // $ANTLR end typeList


    // $ANTLR start "classBody"
    // JavaDecl.g:80:1: classBody : ''{'' ( classBodyDeclaration )* ''}'' ;
    function classBody():Integer;
    // $ANTLR end classBody


    // $ANTLR start "interfaceBody"
    // JavaDecl.g:84:1: interfaceBody : ''{'' ( interfaceBodyDeclaration )* ''}'' ;
    function interfaceBody():Integer;
    // $ANTLR end interfaceBody


    // $ANTLR start "classBodyDeclaration"
    // JavaDecl.g:88:1: classBodyDeclaration : ( '';'' | ( ''static'' )? block | ( modifier )* memberDecl );
    function classBodyDeclaration():Integer;
    // $ANTLR end classBodyDeclaration


    // $ANTLR start "memberDecl"
    // JavaDecl.g:94:1: memberDecl : ( genericMethodOrConstructorDecl | methodDeclaration | fieldDeclaration | ''void'' Identifier voidMethodDeclaratorRest | Identifier constructorDeclaratorRest | interfaceDeclaration | classDeclaration );
    function memberDecl():Integer;
    // $ANTLR end memberDecl


    // $ANTLR start "genericMethodOrConstructorDecl"
    // JavaDecl.g:104:1: genericMethodOrConstructorDecl : typeParameters genericMethodOrConstructorRest ;
    function genericMethodOrConstructorDecl():Integer;
    // $ANTLR end genericMethodOrConstructorDecl


    // $ANTLR start "genericMethodOrConstructorRest"
    // JavaDecl.g:108:1: genericMethodOrConstructorRest : ( ( dtype | ''void'' ) Identifier methodDeclaratorRest | Identifier constructorDeclaratorRest );
    function genericMethodOrConstructorRest():Integer;
    // $ANTLR end genericMethodOrConstructorRest


    // $ANTLR start "methodDeclaration"
    // JavaDecl.g:113:1: methodDeclaration : dtype Identifier methodDeclaratorRest ;
    function methodDeclaration():Integer;
    // $ANTLR end methodDeclaration


    // $ANTLR start "fieldDeclaration"
    // JavaDecl.g:117:1: fieldDeclaration : dtype variableDeclarators '';'' ;
    function fieldDeclaration():Integer;
    // $ANTLR end fieldDeclaration


    // $ANTLR start "interfaceBodyDeclaration"
    // JavaDecl.g:121:1: interfaceBodyDeclaration : ( ( modifier )* interfaceMemberDecl | '';'' );
    function interfaceBodyDeclaration():Integer;
    // $ANTLR end interfaceBodyDeclaration


    // $ANTLR start "interfaceMemberDecl"
    // JavaDecl.g:126:1: interfaceMemberDecl : ( interfaceMethodOrFieldDecl | interfaceGenericMethodDecl | ''void'' Identifier voidInterfaceMethodDeclaratorRest | interfaceDeclaration | classDeclaration );
    function interfaceMemberDecl():Integer;
    // $ANTLR end interfaceMemberDecl


    // $ANTLR start "interfaceMethodOrFieldDecl"
    // JavaDecl.g:134:1: interfaceMethodOrFieldDecl : dtype Identifier interfaceMethodOrFieldRest ;
    function interfaceMethodOrFieldDecl():Integer;
    // $ANTLR end interfaceMethodOrFieldDecl


    // $ANTLR start "interfaceMethodOrFieldRest"
    // JavaDecl.g:138:1: interfaceMethodOrFieldRest : ( constantDeclaratorsRest '';'' | interfaceMethodDeclaratorRest );
    function interfaceMethodOrFieldRest():Integer;
    // $ANTLR end interfaceMethodOrFieldRest


    // $ANTLR start "methodDeclaratorRest"
    // JavaDecl.g:143:1: methodDeclaratorRest : formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? ( methodBody | '';'' ) ;
    function methodDeclaratorRest():Integer;
    // $ANTLR end methodDeclaratorRest


    // $ANTLR start "voidMethodDeclaratorRest"
    // JavaDecl.g:151:1: voidMethodDeclaratorRest : formalParameters ( ''throws'' qualifiedNameList )? ( methodBody | '';'' ) ;
    function voidMethodDeclaratorRest():Integer;
    // $ANTLR end voidMethodDeclaratorRest


    // $ANTLR start "interfaceMethodDeclaratorRest"
    // JavaDecl.g:158:1: interfaceMethodDeclaratorRest : formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? '';'' ;
    function interfaceMethodDeclaratorRest():Integer;
    // $ANTLR end interfaceMethodDeclaratorRest


    // $ANTLR start "interfaceGenericMethodDecl"
    // JavaDecl.g:162:1: interfaceGenericMethodDecl : typeParameters ( dtype | ''void'' ) Identifier interfaceMethodDeclaratorRest ;
    function interfaceGenericMethodDecl():Integer;
    // $ANTLR end interfaceGenericMethodDecl


    // $ANTLR start "voidInterfaceMethodDeclaratorRest"
    // JavaDecl.g:167:1: voidInterfaceMethodDeclaratorRest : formalParameters ( ''throws'' qualifiedNameList )? '';'' ;
    function voidInterfaceMethodDeclaratorRest():Integer;
    // $ANTLR end voidInterfaceMethodDeclaratorRest


    // $ANTLR start "constructorDeclaratorRest"
    // JavaDecl.g:171:1: constructorDeclaratorRest : formalParameters ( ''throws'' qualifiedNameList )? methodBody ;
    function constructorDeclaratorRest():Integer;
    // $ANTLR end constructorDeclaratorRest


    // $ANTLR start "constantDeclarator"
    // JavaDecl.g:175:1: constantDeclarator : Identifier constantDeclaratorRest ;
    function constantDeclarator():Integer;
    // $ANTLR end constantDeclarator


    // $ANTLR start "variableDeclarators"
    // JavaDecl.g:179:1: variableDeclarators : variableDeclarator ( '','' variableDeclarator )* ;
    function variableDeclarators():Integer;
    // $ANTLR end variableDeclarators


    // $ANTLR start "variableDeclarator"
    // JavaDecl.g:183:1: variableDeclarator : Identifier variableDeclaratorRest ;
    function variableDeclarator():Integer;
    // $ANTLR end variableDeclarator


    // $ANTLR start "variableDeclaratorRest"
    // JavaDecl.g:187:1: variableDeclaratorRest : ( ( ''['' '']'' )+ ( ''='' variableInitializer )? | ''='' variableInitializer | );
    function variableDeclaratorRest():Integer;
    // $ANTLR end variableDeclaratorRest


    // $ANTLR start "constantDeclaratorsRest"
    // JavaDecl.g:193:1: constantDeclaratorsRest : constantDeclaratorRest ( '','' constantDeclarator )* ;
    function constantDeclaratorsRest():Integer;
    // $ANTLR end constantDeclaratorsRest


    // $ANTLR start "constantDeclaratorRest"
    // JavaDecl.g:197:1: constantDeclaratorRest : ( ''['' '']'' )* ''='' variableInitializer ;
    function constantDeclaratorRest():Integer;
    // $ANTLR end constantDeclaratorRest


    // $ANTLR start "variableDeclaratorId"
    // JavaDecl.g:201:1: variableDeclaratorId : Identifier ( ''['' '']'' )* ;
    function variableDeclaratorId():Integer;
    // $ANTLR end variableDeclaratorId


    // $ANTLR start "variableInitializer"
    // JavaDecl.g:205:1: variableInitializer : ( arrayInitializer | expression );
    function variableInitializer():Integer;
    // $ANTLR end variableInitializer


    // $ANTLR start "arrayInitializer"
    // JavaDecl.g:210:1: arrayInitializer : ''{'' ( variableInitializer ( '','' variableInitializer )* ( '','' )? )? ''}'' ;
    function arrayInitializer():Integer;
    // $ANTLR end arrayInitializer


    // $ANTLR start "modifier"
    // JavaDecl.g:214:1: modifier : ( annotation | ''public'' | ''protected'' | ''private'' | ''static'' | ''abstract'' | ''final'' | ''native'' | ''synchronized'' | ''transient'' | ''volatile'' | ''strictfp'' );
    function modifier():Integer;
    // $ANTLR end modifier


    // $ANTLR start "packageOrTypeName"
    // JavaDecl.g:229:1: packageOrTypeName : Identifier ( ''.'' Identifier )* ;
    function packageOrTypeName():Integer;
    // $ANTLR end packageOrTypeName


    // $ANTLR start "enumConstantName"
    // JavaDecl.g:233:1: enumConstantName : Identifier ;
    function enumConstantName():Integer;
    // $ANTLR end enumConstantName


    // $ANTLR start "typeName"
    // JavaDecl.g:237:1: typeName : ( Identifier | packageOrTypeName ''.'' Identifier );
    function typeName():Integer;
    // $ANTLR end typeName


    // $ANTLR start "dtype"
    // JavaDecl.g:242:1: dtype : ( Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* ( ''['' '']'' )* | primitiveType ( ''['' '']'' )* );
    function dtype():Integer;
    // $ANTLR end dtype


    // $ANTLR start "primitiveType"
    // JavaDecl.g:247:1: primitiveType : ( ''boolean'' | ''char'' | ''byte'' | ''short'' | ''int'' | ''long'' | ''float'' | ''double'' );
    function primitiveType():Integer;
    // $ANTLR end primitiveType


    // $ANTLR start "variableModifier"
    // JavaDecl.g:258:1: variableModifier : ( ''final'' | annotation );
    function variableModifier():Integer;
    // $ANTLR end variableModifier


    // $ANTLR start "typeArguments"
    // JavaDecl.g:263:1: typeArguments : ''<'' typeArgument ( '','' typeArgument )* ''>'' ;
    function typeArguments():Integer;
    // $ANTLR end typeArguments


    // $ANTLR start "typeArgument"
    // JavaDecl.g:267:1: typeArgument : ( dtype | ''?'' ( ( ''extends'' | ''super'' ) dtype )? );
    function typeArgument():Integer;
    // $ANTLR end typeArgument


    // $ANTLR start "qualifiedNameList"
    // JavaDecl.g:272:1: qualifiedNameList : qualifiedName ( '','' qualifiedName )* ;
    function qualifiedNameList():Integer;
    // $ANTLR end qualifiedNameList


    // $ANTLR start "formalParameters"
    // JavaDecl.g:276:1: formalParameters : ''('' ( formalParameterDecls )? '')'' ;
    function formalParameters():Integer;
    // $ANTLR end formalParameters


    // $ANTLR start "formalParameterDecls"
    // JavaDecl.g:280:1: formalParameterDecls : ( variableModifier )* dtype ( formalParameterDeclsRest )? ;
    function formalParameterDecls():Integer;
    // $ANTLR end formalParameterDecls


    // $ANTLR start "formalParameterDeclsRest"
    // JavaDecl.g:284:1: formalParameterDeclsRest : ( variableDeclaratorId ( '','' formalParameterDecls )? | ''...'' variableDeclaratorId );
    function formalParameterDeclsRest():Integer;
    // $ANTLR end formalParameterDeclsRest


    // $ANTLR start "qualifiedName"
    // JavaDecl.g:289:1: qualifiedName : Identifier ( ''.'' Identifier )* ;
    function qualifiedName():Integer;
    // $ANTLR end qualifiedName

    // $ANTLR start "synpred34_JavaDecl"
    function synpred34_JavaDecl_fragment():Integer;
    // $ANTLR end synpred34_JavaDecl

    // $ANTLR start "synpred35_JavaDecl"
    function synpred35_JavaDecl_fragment():Integer;
    // $ANTLR end synpred35_JavaDecl

    // $ANTLR start "synpred37_JavaDecl"
    function synpred37_JavaDecl_fragment():Integer;
    // $ANTLR end synpred37_JavaDecl

    // Delegated rules

    function synpred34_JavaDecl():Boolean;function synpred37_JavaDecl():Boolean;function synpred35_JavaDecl():Boolean;
  protected

     
          type TAntlrDFA32=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa32:IDFA;
        protected
          dfa32:IDFA;
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
    JavaParser, 
    JclHashSets;

function TJava_JavaDecl.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TJava_JavaDecl.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState; gJava:TAntlrBaseRecognizer{TJavaParser} );
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
  

self.gJava := gJava;
gParent := gJava;
end;

    // Delegated rules

procedure TJava_JavaDecl.InitBitsets;
begin
  FOLLOW_24_in_packageDeclaration22 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedName_in_packageDeclaration24 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_packageDeclaration26 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_26_in_importDeclaration38 := TAntlrBitSet.CreateWithBits([$0000000008000010]);
  FOLLOW_27_in_importDeclaration40 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_importDeclaration43 := TAntlrBitSet.CreateWithBits([$0000000012000000]);
  FOLLOW_28_in_importDeclaration46 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_importDeclaration48 := TAntlrBitSet.CreateWithBits([$0000000012000000]);
  FOLLOW_28_in_importDeclaration53 := TAntlrBitSet.CreateWithBits([$0000000020000000]);
  FOLLOW_29_in_importDeclaration55 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_importDeclaration59 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classOrInterfaceDeclaration_in_typeDeclaration71 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_typeDeclaration81 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_modifier_in_classOrInterfaceDeclaration93 := TAntlrBitSet.CreateWithBits([$007FE08048000020,$0000000000000010]);
  FOLLOW_classDeclaration_in_classOrInterfaceDeclaration97 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceDeclaration_in_classOrInterfaceDeclaration101 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_normalClassDeclaration_in_classDeclaration114 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumDeclaration_in_classDeclaration124 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_30_in_normalClassDeclaration136 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_normalClassDeclaration138 := TAntlrBitSet.CreateWithBits([$0000002380000000]);
  FOLLOW_typeParameters_in_normalClassDeclaration141 := TAntlrBitSet.CreateWithBits([$0000002380000000]);
  FOLLOW_31_in_normalClassDeclaration154 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_dtype_in_normalClassDeclaration156 := TAntlrBitSet.CreateWithBits([$0000002380000000]);
  FOLLOW_32_in_normalClassDeclaration169 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_typeList_in_normalClassDeclaration171 := TAntlrBitSet.CreateWithBits([$0000002380000000]);
  FOLLOW_classBody_in_normalClassDeclaration183 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_33_in_typeParameters195 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_typeParameter_in_typeParameters197 := TAntlrBitSet.CreateWithBits([$0000000C00000000]);
  FOLLOW_34_in_typeParameters200 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_typeParameter_in_typeParameters202 := TAntlrBitSet.CreateWithBits([$0000000C00000000]);
  FOLLOW_35_in_typeParameters206 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_typeParameter217 := TAntlrBitSet.CreateWithBits([$0000000080000002]);
  FOLLOW_31_in_typeParameter220 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_bound_in_typeParameter222 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_bound237 := TAntlrBitSet.CreateWithBits([$0000001000000002]);
  FOLLOW_36_in_bound240 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_dtype_in_bound242 := TAntlrBitSet.CreateWithBits([$0000001000000002]);
  FOLLOW_ENUM_in_enumDeclaration255 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_enumDeclaration257 := TAntlrBitSet.CreateWithBits([$0000002100000000]);
  FOLLOW_32_in_enumDeclaration260 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_typeList_in_enumDeclaration262 := TAntlrBitSet.CreateWithBits([$0000002100000000]);
  FOLLOW_enumBody_in_enumDeclaration266 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_enumBody278 := TAntlrBitSet.CreateWithBits([$0000004402000010,$0000000000000010]);
  FOLLOW_enumConstants_in_enumBody280 := TAntlrBitSet.CreateWithBits([$0000004402000000]);
  FOLLOW_34_in_enumBody283 := TAntlrBitSet.CreateWithBits([$0000004002000000]);
  FOLLOW_enumBodyDeclarations_in_enumBody286 := TAntlrBitSet.CreateWithBits([$0000004000000000]);
  FOLLOW_38_in_enumBody289 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumConstant_in_enumConstants300 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_enumConstants303 := TAntlrBitSet.CreateWithBits([$0000000000000010,$0000000000000010]);
  FOLLOW_enumConstant_in_enumConstants305 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_annotations_in_enumConstant319 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_enumConstant322 := TAntlrBitSet.CreateWithBits([$0000002380000002,$0000000000000002]);
  FOLLOW_arguments_in_enumConstant325 := TAntlrBitSet.CreateWithBits([$0000002380000002]);
  FOLLOW_classBody_in_enumConstant330 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_enumBodyDeclarations344 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000032,$0000000000000010]);
  FOLLOW_classBodyDeclaration_in_enumBodyDeclarations347 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000032,$0000000000000010]);
  FOLLOW_normalInterfaceDeclaration_in_interfaceDeclaration361 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotationTypeDeclaration_in_interfaceDeclaration367 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_39_in_normalInterfaceDeclaration379 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_normalInterfaceDeclaration381 := TAntlrBitSet.CreateWithBits([$0000002280000000]);
  FOLLOW_typeParameters_in_normalInterfaceDeclaration383 := TAntlrBitSet.CreateWithBits([$0000002280000000]);
  FOLLOW_31_in_normalInterfaceDeclaration387 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_typeList_in_normalInterfaceDeclaration389 := TAntlrBitSet.CreateWithBits([$0000002280000000]);
  FOLLOW_interfaceBody_in_normalInterfaceDeclaration393 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_typeList405 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_typeList408 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_dtype_in_typeList410 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_37_in_classBody424 := TAntlrBitSet.CreateWithBits([$7FFFE1E24A000030,$0000000000000010]);
  FOLLOW_classBodyDeclaration_in_classBody426 := TAntlrBitSet.CreateWithBits([$7FFFE1E24A000030,$0000000000000010]);
  FOLLOW_38_in_classBody429 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_interfaceBody441 := TAntlrBitSet.CreateWithBits([$7FFFE1C24A000030,$0000000000000010]);
  FOLLOW_interfaceBodyDeclaration_in_interfaceBody443 := TAntlrBitSet.CreateWithBits([$7FFFE1C24A000030,$0000000000000010]);
  FOLLOW_38_in_interfaceBody446 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_classBodyDeclaration457 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_27_in_classBodyDeclaration462 := TAntlrBitSet.CreateWithBits([$0000002008000000]);
  FOLLOW_block_in_classBodyDeclaration465 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_modifier_in_classBodyDeclaration470 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000030,$0000000000000010]);
  FOLLOW_memberDecl_in_classBodyDeclaration473 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_genericMethodOrConstructorDecl_in_memberDecl485 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_methodDeclaration_in_memberDecl490 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_fieldDeclaration_in_memberDecl495 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_40_in_memberDecl500 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_memberDecl502 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_voidMethodDeclaratorRest_in_memberDecl504 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_memberDecl509 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_constructorDeclaratorRest_in_memberDecl511 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceDeclaration_in_memberDecl516 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classDeclaration_in_memberDecl521 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_typeParameters_in_genericMethodOrConstructorDecl533 := TAntlrBitSet.CreateWithBits([$7F80010000000010]);
  FOLLOW_genericMethodOrConstructorRest_in_genericMethodOrConstructorDecl535 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_genericMethodOrConstructorRest548 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_40_in_genericMethodOrConstructorRest552 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_genericMethodOrConstructorRest555 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_methodDeclaratorRest_in_genericMethodOrConstructorRest557 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_genericMethodOrConstructorRest562 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_constructorDeclaratorRest_in_genericMethodOrConstructorRest564 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_methodDeclaration575 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_methodDeclaration577 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_methodDeclaratorRest_in_methodDeclaration579 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_fieldDeclaration590 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclarators_in_fieldDeclaration592 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_fieldDeclaration594 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_modifier_in_interfaceBodyDeclaration607 := TAntlrBitSet.CreateWithBits([$7FFFE18248000030,$0000000000000010]);
  FOLLOW_interfaceMemberDecl_in_interfaceBodyDeclaration610 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_interfaceBodyDeclaration617 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceMethodOrFieldDecl_in_interfaceMemberDecl628 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceGenericMethodDecl_in_interfaceMemberDecl635 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_40_in_interfaceMemberDecl645 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_interfaceMemberDecl647 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_voidInterfaceMethodDeclaratorRest_in_interfaceMemberDecl649 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceDeclaration_in_interfaceMemberDecl659 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classDeclaration_in_interfaceMemberDecl669 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_interfaceMethodOrFieldDecl681 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_interfaceMethodOrFieldDecl683 := TAntlrBitSet.CreateWithBits([$0000120000000000,$0000000000000002]);
  FOLLOW_interfaceMethodOrFieldRest_in_interfaceMethodOrFieldDecl685 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_constantDeclaratorsRest_in_interfaceMethodOrFieldRest697 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_interfaceMethodOrFieldRest699 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceMethodDeclaratorRest_in_interfaceMethodOrFieldRest704 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_formalParameters_in_methodDeclaratorRest716 := TAntlrBitSet.CreateWithBits([$00000A200A000000]);
  FOLLOW_41_in_methodDeclaratorRest719 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_methodDeclaratorRest721 := TAntlrBitSet.CreateWithBits([$00000A200A000000]);
  FOLLOW_43_in_methodDeclaratorRest734 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedNameList_in_methodDeclaratorRest736 := TAntlrBitSet.CreateWithBits([$000000200A000000]);
  FOLLOW_methodBody_in_methodDeclaratorRest752 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_methodDeclaratorRest766 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_formalParameters_in_voidMethodDeclaratorRest788 := TAntlrBitSet.CreateWithBits([$000008200A000000]);
  FOLLOW_43_in_voidMethodDeclaratorRest791 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedNameList_in_voidMethodDeclaratorRest793 := TAntlrBitSet.CreateWithBits([$000000200A000000]);
  FOLLOW_methodBody_in_voidMethodDeclaratorRest809 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_voidMethodDeclaratorRest823 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_formalParameters_in_interfaceMethodDeclaratorRest845 := TAntlrBitSet.CreateWithBits([$00000A0002000000]);
  FOLLOW_41_in_interfaceMethodDeclaratorRest848 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_interfaceMethodDeclaratorRest850 := TAntlrBitSet.CreateWithBits([$00000A0002000000]);
  FOLLOW_43_in_interfaceMethodDeclaratorRest855 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedNameList_in_interfaceMethodDeclaratorRest857 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_interfaceMethodDeclaratorRest861 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_typeParameters_in_interfaceGenericMethodDecl873 := TAntlrBitSet.CreateWithBits([$7F80010000000010]);
  FOLLOW_dtype_in_interfaceGenericMethodDecl876 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_40_in_interfaceGenericMethodDecl880 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_interfaceGenericMethodDecl883 := TAntlrBitSet.CreateWithBits([$0000120000000000,$0000000000000002]);
  FOLLOW_interfaceMethodDeclaratorRest_in_interfaceGenericMethodDecl893 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_formalParameters_in_voidInterfaceMethodDeclaratorRest905 := TAntlrBitSet.CreateWithBits([$0000080002000000]);
  FOLLOW_43_in_voidInterfaceMethodDeclaratorRest908 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedNameList_in_voidInterfaceMethodDeclaratorRest910 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_voidInterfaceMethodDeclaratorRest914 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_formalParameters_in_constructorDeclaratorRest926 := TAntlrBitSet.CreateWithBits([$0000082008000000]);
  FOLLOW_43_in_constructorDeclaratorRest929 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedNameList_in_constructorDeclaratorRest931 := TAntlrBitSet.CreateWithBits([$0000002008000000]);
  FOLLOW_methodBody_in_constructorDeclaratorRest935 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_constantDeclarator946 := TAntlrBitSet.CreateWithBits([$0000120000000000]);
  FOLLOW_constantDeclaratorRest_in_constantDeclarator948 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableDeclarator_in_variableDeclarators960 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_variableDeclarators963 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclarator_in_variableDeclarators965 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_Identifier_in_variableDeclarator978 := TAntlrBitSet.CreateWithBits([$0000120000000000]);
  FOLLOW_variableDeclaratorRest_in_variableDeclarator980 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_variableDeclaratorRest993 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_variableDeclaratorRest995 := TAntlrBitSet.CreateWithBits([$0000120000000002]);
  FOLLOW_44_in_variableDeclaratorRest1000 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00003]);
  FOLLOW_variableInitializer_in_variableDeclaratorRest1002 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_44_in_variableDeclaratorRest1009 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00003]);
  FOLLOW_variableInitializer_in_variableDeclaratorRest1011 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_constantDeclaratorRest_in_constantDeclaratorsRest1031 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_constantDeclaratorsRest1034 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_constantDeclarator_in_constantDeclaratorsRest1036 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_41_in_constantDeclaratorRest1053 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_constantDeclaratorRest1055 := TAntlrBitSet.CreateWithBits([$0000120000000000]);
  FOLLOW_44_in_constantDeclaratorRest1059 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00003]);
  FOLLOW_variableInitializer_in_constantDeclaratorRest1061 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_variableDeclaratorId1073 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_41_in_variableDeclaratorId1076 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_variableDeclaratorId1078 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_arrayInitializer_in_variableInitializer1091 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_in_variableInitializer1101 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_arrayInitializer1113 := TAntlrBitSet.CreateWithBits([$7F80016200000FD0,$00000007FCC00003]);
  FOLLOW_variableInitializer_in_arrayInitializer1116 := TAntlrBitSet.CreateWithBits([$0000004400000000]);
  FOLLOW_34_in_arrayInitializer1119 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00003]);
  FOLLOW_variableInitializer_in_arrayInitializer1121 := TAntlrBitSet.CreateWithBits([$0000004400000000]);
  FOLLOW_34_in_arrayInitializer1126 := TAntlrBitSet.CreateWithBits([$0000004000000000]);
  FOLLOW_38_in_arrayInitializer1133 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotation_in_modifier1149 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_45_in_modifier1159 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_46_in_modifier1169 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_47_in_modifier1179 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_27_in_modifier1189 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_modifier1199 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_49_in_modifier1209 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_50_in_modifier1219 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_51_in_modifier1229 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_52_in_modifier1239 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_53_in_modifier1249 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_54_in_modifier1259 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_packageOrTypeName1273 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_28_in_packageOrTypeName1276 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_packageOrTypeName1278 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_Identifier_in_enumConstantName1296 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_typeName1312 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_packageOrTypeName_in_typeName1322 := TAntlrBitSet.CreateWithBits([$0000000010000000]);
  FOLLOW_28_in_typeName1324 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_typeName1326 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_dtype1337 := TAntlrBitSet.CreateWithBits([$0000020210000002]);
  FOLLOW_typeArguments_in_dtype1340 := TAntlrBitSet.CreateWithBits([$0000020010000002]);
  FOLLOW_28_in_dtype1345 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_dtype1347 := TAntlrBitSet.CreateWithBits([$0000020210000002]);
  FOLLOW_typeArguments_in_dtype1350 := TAntlrBitSet.CreateWithBits([$0000020010000002]);
  FOLLOW_41_in_dtype1358 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_dtype1360 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_primitiveType_in_dtype1367 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_41_in_dtype1370 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_dtype1372 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_set_in_primitiveType0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_49_in_variableModifier1460 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotation_in_variableModifier1470 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_33_in_typeArguments1481 := TAntlrBitSet.CreateWithBits([$FF80000000000010]);
  FOLLOW_typeArgument_in_typeArguments1483 := TAntlrBitSet.CreateWithBits([$0000000C00000000]);
  FOLLOW_34_in_typeArguments1486 := TAntlrBitSet.CreateWithBits([$FF80000000000010]);
  FOLLOW_typeArgument_in_typeArguments1488 := TAntlrBitSet.CreateWithBits([$0000000C00000000]);
  FOLLOW_35_in_typeArguments1492 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_typeArgument1504 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_63_in_typeArgument1509 := TAntlrBitSet.CreateWithBits([$0000000080000002,$0000000000000001]);
  FOLLOW_set_in_typeArgument1512 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_dtype_in_typeArgument1520 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_qualifiedName_in_qualifiedNameList1534 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_qualifiedNameList1537 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_qualifiedName_in_qualifiedNameList1539 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_65_in_formalParameters1553 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000014]);
  FOLLOW_formalParameterDecls_in_formalParameters1555 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_formalParameters1558 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableModifier_in_formalParameterDecls1570 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_dtype_in_formalParameterDecls1573 := TAntlrBitSet.CreateWithBits([$0000000000000012,$0000000000000008]);
  FOLLOW_formalParameterDeclsRest_in_formalParameterDecls1575 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableDeclaratorId_in_formalParameterDeclsRest1588 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_formalParameterDeclsRest1591 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_formalParameterDecls_in_formalParameterDeclsRest1593 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_67_in_formalParameterDeclsRest1602 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclaratorId_in_formalParameterDeclsRest1604 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_qualifiedName1616 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_28_in_qualifiedName1619 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_qualifiedName1621 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_methodDeclaration_in_synpred34_JavaDecl490 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_fieldDeclaration_in_synpred35_JavaDecl495 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_synpred37_JavaDecl509 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_constructorDeclaratorRest_in_synpred37_JavaDecl511 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TJava_JavaDecl.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TJava_JavaDecl.GetGrammarFileName():String;
begin
  Result:='JavaDecl.g'; 
end;

// $ANTLR start "packageDeclaration"
// JavaDecl.g:6:1: packageDeclaration : ''package'' qualifiedName '';'' ;
function TJava_JavaDecl.packageDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  packageDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    packageDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 1) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:7:2: ( ''package'' qualifiedName '';'' )
        // JavaDecl.g:7:4: ''package'' qualifiedName '';''
        begin
        match(input,24,FOLLOW_24_in_packageDeclaration22); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_qualifiedName_in_packageDeclaration24);
        qualifiedName();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,25,FOLLOW_25_in_packageDeclaration26); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 1, packageDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "importDeclaration"
// JavaDecl.g:10:1: importDeclaration : ''import'' ( ''static'' )? Identifier ( ''.'' Identifier )* ( ''.'' ''*'' )? '';'' ;
function TJava_JavaDecl.importDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  importDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    importDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 2) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:11:2: ( ''import'' ( ''static'' )? Identifier ( ''.'' Identifier )* ( ''.'' ''*'' )? '';'' )
        // JavaDecl.g:11:4: ''import'' ( ''static'' )? Identifier ( ''.'' Identifier )* ( ''.'' ''*'' )? '';''
        begin
        match(input,26,FOLLOW_26_in_importDeclaration38); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:11:13: ( ''static'' )?
        _alt[1]:=2;
        _LA[1,0] := input.LA(1);

        if ( ((_LA[1,0]=27)) ) then 
        begin
          _alt[1]:=1;
        end
        ;
        case (_alt[1]) of
             1 :
                begin
                // JavaDecl.g:0:0: ''static''
                begin
                match(input,27,FOLLOW_27_in_importDeclaration40); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,Identifier,FOLLOW_Identifier_in_importDeclaration43); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:11:34: ( ''.'' Identifier )*
        repeat 
            _alt[2]:=2;
            _LA[2,0] := input.LA(1);

            if ( ((_LA[2,0]=28)) ) then 
            begin
              _LA[2,1] := input.LA(2);

              if ( ((_LA[2,1]=Identifier)) ) then 
              begin
                _alt[2]:=1;
              end

              ;

            end

            ;

            case (_alt[2]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:11:35: ''.'' Identifier
        	    begin
        	    match(input,28,FOLLOW_28_in_importDeclaration46); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,Identifier,FOLLOW_Identifier_in_importDeclaration48); 
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

        // block:JavaDecl.g:11:52: ( ''.'' ''*'' )?
        _alt[3]:=2;
        _LA[3,0] := input.LA(1);

        if ( ((_LA[3,0]=28)) ) then 
        begin
          _alt[3]:=1;
        end
        ;
        case (_alt[3]) of
             1 :
                begin
                // JavaDecl.g:11:53: ''.'' ''*''
                begin
                match(input,28,FOLLOW_28_in_importDeclaration53); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,29,FOLLOW_29_in_importDeclaration55); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,25,FOLLOW_25_in_importDeclaration59); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 2, importDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "typeDeclaration"
// JavaDecl.g:14:1: typeDeclaration : ( classOrInterfaceDeclaration | '';'' );
function TJava_JavaDecl.typeDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  typeDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 3) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:15:2: ( classOrInterfaceDeclaration | '';'' )
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=ENUM) or (_LA[4,0]=27) or (_LA[4,0]=30) or (_LA[4,0]=39) or ((_LA[4,0]>=45) and 
        ( _LA[4,0]<=54)) or (_LA[4,0]=68)) ) then 
        begin
          _alt[4]:=1;
        end
        else if ( ((_LA[4,0]=25)) ) then 
        begin
          _alt[4]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 4, 0, input);    

        end;
        case (_alt[4]) of 
             1 :
                begin
                // JavaDecl.g:15:4: classOrInterfaceDeclaration
                begin
                pushFollow(FOLLOW_classOrInterfaceDeclaration_in_typeDeclaration71);
                classOrInterfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:16:9: '';''
                begin
                match(input,25,FOLLOW_25_in_typeDeclaration81); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 3, typeDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "classOrInterfaceDeclaration"
// JavaDecl.g:19:1: classOrInterfaceDeclaration : ( modifier )* ( classDeclaration | interfaceDeclaration ) ;
function TJava_JavaDecl.classOrInterfaceDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  classOrInterfaceDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    classOrInterfaceDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 4) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:20:2: ( ( modifier )* ( classDeclaration | interfaceDeclaration ) )
        // JavaDecl.g:20:4: ( modifier )* ( classDeclaration | interfaceDeclaration )
        begin
        // closureBlock:JavaDecl.g:20:4: ( modifier )*
        repeat 
            _alt[5]:=2;
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=68)) ) then 
            begin
              _LA[5,2] := input.LA(2);

              if ( ((_LA[5,2]=Identifier)) ) then 
              begin
                _alt[5]:=1;
              end

              ;

            end
            else if ( ((_LA[5,0]=27) or ((_LA[5,0]>=45) and 
            ( _LA[5,0]<=54))) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            case (_alt[5]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:0:0: modifier
        	    begin
        	    pushFollow(FOLLOW_modifier_in_classOrInterfaceDeclaration93);
        	    modifier();

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

        // block:JavaDecl.g:20:14: ( classDeclaration | interfaceDeclaration )
        _alt[6]:=2;
        _LA[6,0] := input.LA(1);

        if ( ((_LA[6,0]=ENUM) or (_LA[6,0]=30)) ) then 
        begin
          _alt[6]:=1;
        end
        else if ( ((_LA[6,0]=39) or (_LA[6,0]=68)) ) then 
        begin
          _alt[6]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 6, 0, input);    

        end;
        case (_alt[6]) of
             1 :
                begin
                // JavaDecl.g:20:15: classDeclaration
                begin
                pushFollow(FOLLOW_classDeclaration_in_classOrInterfaceDeclaration97);
                classDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:20:34: interfaceDeclaration
                begin
                pushFollow(FOLLOW_interfaceDeclaration_in_classOrInterfaceDeclaration101);
                interfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


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
          memoize(input, 4, classOrInterfaceDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "classDeclaration"
// JavaDecl.g:23:1: classDeclaration : ( normalClassDeclaration | enumDeclaration );
function TJava_JavaDecl.classDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  classDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    classDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 5) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:24:2: ( normalClassDeclaration | enumDeclaration )
        _alt[7]:=2;
        _LA[7,0] := input.LA(1);

        if ( ((_LA[7,0]=30)) ) then 
        begin
          _alt[7]:=1;
        end
        else if ( ((_LA[7,0]=ENUM)) ) then 
        begin
          _alt[7]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 7, 0, input);    

        end;
        case (_alt[7]) of 
             1 :
                begin
                // JavaDecl.g:24:4: normalClassDeclaration
                begin
                pushFollow(FOLLOW_normalClassDeclaration_in_classDeclaration114);
                normalClassDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:25:9: enumDeclaration
                begin
                pushFollow(FOLLOW_enumDeclaration_in_classDeclaration124);
                enumDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 5, classDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "normalClassDeclaration"
// JavaDecl.g:28:1: normalClassDeclaration : ''class'' Identifier ( typeParameters )? ( ''extends'' dtype )? ( ''implements'' typeList )? classBody ;
function TJava_JavaDecl.normalClassDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  normalClassDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    normalClassDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 6) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:29:2: ( ''class'' Identifier ( typeParameters )? ( ''extends'' dtype )? ( ''implements'' typeList )? classBody )
        // JavaDecl.g:29:4: ''class'' Identifier ( typeParameters )? ( ''extends'' dtype )? ( ''implements'' typeList )? classBody
        begin
        match(input,30,FOLLOW_30_in_normalClassDeclaration136); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_normalClassDeclaration138); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:29:23: ( typeParameters )?
        _alt[8]:=2;
        _LA[8,0] := input.LA(1);

        if ( ((_LA[8,0]=33)) ) then 
        begin
          _alt[8]:=1;
        end
        ;
        case (_alt[8]) of
             1 :
                begin
                // JavaDecl.g:29:24: typeParameters
                begin
                pushFollow(FOLLOW_typeParameters_in_normalClassDeclaration141);
                typeParameters();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:30:9: ( ''extends'' dtype )?
        _alt[9]:=2;
        _LA[9,0] := input.LA(1);

        if ( ((_LA[9,0]=31)) ) then 
        begin
          _alt[9]:=1;
        end
        ;
        case (_alt[9]) of
             1 :
                begin
                // JavaDecl.g:30:10: ''extends'' dtype
                begin
                match(input,31,FOLLOW_31_in_normalClassDeclaration154); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_dtype_in_normalClassDeclaration156);
                dtype();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:31:9: ( ''implements'' typeList )?
        _alt[10]:=2;
        _LA[10,0] := input.LA(1);

        if ( ((_LA[10,0]=32)) ) then 
        begin
          _alt[10]:=1;
        end
        ;
        case (_alt[10]) of
             1 :
                begin
                // JavaDecl.g:31:10: ''implements'' typeList
                begin
                match(input,32,FOLLOW_32_in_normalClassDeclaration169); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_typeList_in_normalClassDeclaration171);
                typeList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_classBody_in_normalClassDeclaration183);
        classBody();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 6, normalClassDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "typeParameters"
// JavaDecl.g:35:1: typeParameters : ''<'' typeParameter ( '','' typeParameter )* ''>'' ;
function TJava_JavaDecl.typeParameters():Integer;
var
  _alt:array [0..255] of Integer;
  typeParameters_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeParameters_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 7) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:36:2: ( ''<'' typeParameter ( '','' typeParameter )* ''>'' )
        // JavaDecl.g:36:4: ''<'' typeParameter ( '','' typeParameter )* ''>''
        begin
        match(input,33,FOLLOW_33_in_typeParameters195); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_typeParameter_in_typeParameters197);
        typeParameter();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:36:22: ( '','' typeParameter )*
        repeat 
            _alt[11]:=2;
            _LA[11,0] := input.LA(1);

            if ( ((_LA[11,0]=34)) ) then 
            begin
              _alt[11]:=1;
            end

            ;

            case (_alt[11]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:36:23: '','' typeParameter
        	    begin
        	    match(input,34,FOLLOW_34_in_typeParameters200); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_typeParameter_in_typeParameters202);
        	    typeParameter();

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

        match(input,35,FOLLOW_35_in_typeParameters206); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 7, typeParameters_StartIndex);
        end;
    end;
end;// $ANTLR start "typeParameter"
// JavaDecl.g:39:1: typeParameter : Identifier ( ''extends'' bound )? ;
function TJava_JavaDecl.typeParameter():Integer;
var
  _alt:array [0..255] of Integer;
  typeParameter_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeParameter_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 8) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:40:2: ( Identifier ( ''extends'' bound )? )
        // JavaDecl.g:40:4: Identifier ( ''extends'' bound )?
        begin
        match(input,Identifier,FOLLOW_Identifier_in_typeParameter217); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:40:15: ( ''extends'' bound )?
        _alt[12]:=2;
        _LA[12,0] := input.LA(1);

        if ( ((_LA[12,0]=31)) ) then 
        begin
          _alt[12]:=1;
        end
        ;
        case (_alt[12]) of
             1 :
                begin
                // JavaDecl.g:40:16: ''extends'' bound
                begin
                match(input,31,FOLLOW_31_in_typeParameter220); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_bound_in_typeParameter222);
                bound();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


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
          memoize(input, 8, typeParameter_StartIndex);
        end;
    end;
end;// $ANTLR start "bound"
// JavaDecl.g:43:1: bound : dtype ( ''&'' dtype )* ;
function TJava_JavaDecl.bound():Integer;
var
  _alt:array [0..255] of Integer;
  bound_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    bound_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 9) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:44:2: ( dtype ( ''&'' dtype )* )
        // JavaDecl.g:44:4: dtype ( ''&'' dtype )*
        begin
        pushFollow(FOLLOW_dtype_in_bound237);
        dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:44:10: ( ''&'' dtype )*
        repeat 
            _alt[13]:=2;
            _LA[13,0] := input.LA(1);

            if ( ((_LA[13,0]=36)) ) then 
            begin
              _alt[13]:=1;
            end

            ;

            case (_alt[13]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:44:11: ''&'' dtype
        	    begin
        	    match(input,36,FOLLOW_36_in_bound240); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_dtype_in_bound242);
        	    dtype();

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
          memoize(input, 9, bound_StartIndex);
        end;
    end;
end;// $ANTLR start "enumDeclaration"
// JavaDecl.g:47:1: enumDeclaration : ENUM Identifier ( ''implements'' typeList )? enumBody ;
function TJava_JavaDecl.enumDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  enumDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 10) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:48:2: ( ENUM Identifier ( ''implements'' typeList )? enumBody )
        // JavaDecl.g:48:4: ENUM Identifier ( ''implements'' typeList )? enumBody
        begin
        match(input,ENUM,FOLLOW_ENUM_in_enumDeclaration255); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_enumDeclaration257); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:48:20: ( ''implements'' typeList )?
        _alt[14]:=2;
        _LA[14,0] := input.LA(1);

        if ( ((_LA[14,0]=32)) ) then 
        begin
          _alt[14]:=1;
        end
        ;
        case (_alt[14]) of
             1 :
                begin
                // JavaDecl.g:48:21: ''implements'' typeList
                begin
                match(input,32,FOLLOW_32_in_enumDeclaration260); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_typeList_in_enumDeclaration262);
                typeList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_enumBody_in_enumDeclaration266);
        enumBody();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 10, enumDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "enumBody"
// JavaDecl.g:51:1: enumBody : ''{'' ( enumConstants )? ( '','' )? ( enumBodyDeclarations )? ''}'' ;
function TJava_JavaDecl.enumBody():Integer;
var
  _alt:array [0..255] of Integer;
  enumBody_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumBody_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 11) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:52:2: ( ''{'' ( enumConstants )? ( '','' )? ( enumBodyDeclarations )? ''}'' )
        // JavaDecl.g:52:4: ''{'' ( enumConstants )? ( '','' )? ( enumBodyDeclarations )? ''}''
        begin
        match(input,37,FOLLOW_37_in_enumBody278); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:52:8: ( enumConstants )?
        _alt[15]:=2;
        _LA[15,0] := input.LA(1);

        if ( ((_LA[15,0]=Identifier) or (_LA[15,0]=68)) ) then 
        begin
          _alt[15]:=1;
        end
        ;
        case (_alt[15]) of
             1 :
                begin
                // JavaDecl.g:0:0: enumConstants
                begin
                pushFollow(FOLLOW_enumConstants_in_enumBody280);
                enumConstants();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:52:23: ( '','' )?
        _alt[16]:=2;
        _LA[16,0] := input.LA(1);

        if ( ((_LA[16,0]=34)) ) then 
        begin
          _alt[16]:=1;
        end
        ;
        case (_alt[16]) of
             1 :
                begin
                // JavaDecl.g:0:0: '',''
                begin
                match(input,34,FOLLOW_34_in_enumBody283); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:52:28: ( enumBodyDeclarations )?
        _alt[17]:=2;
        _LA[17,0] := input.LA(1);

        if ( ((_LA[17,0]=25)) ) then 
        begin
          _alt[17]:=1;
        end
        ;
        case (_alt[17]) of
             1 :
                begin
                // JavaDecl.g:0:0: enumBodyDeclarations
                begin
                pushFollow(FOLLOW_enumBodyDeclarations_in_enumBody286);
                enumBodyDeclarations();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,38,FOLLOW_38_in_enumBody289); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 11, enumBody_StartIndex);
        end;
    end;
end;// $ANTLR start "enumConstants"
// JavaDecl.g:55:1: enumConstants : enumConstant ( '','' enumConstant )* ;
function TJava_JavaDecl.enumConstants():Integer;
var
  _alt:array [0..255] of Integer;
  enumConstants_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumConstants_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 12) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:56:2: ( enumConstant ( '','' enumConstant )* )
        // JavaDecl.g:56:4: enumConstant ( '','' enumConstant )*
        begin
        pushFollow(FOLLOW_enumConstant_in_enumConstants300);
        enumConstant();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:56:17: ( '','' enumConstant )*
        repeat 
            _alt[18]:=2;
            _LA[18,0] := input.LA(1);

            if ( ((_LA[18,0]=34)) ) then 
            begin
              _LA[18,1] := input.LA(2);

              if ( ((_LA[18,1]=Identifier) or (_LA[18,1]=68)) ) then 
              begin
                _alt[18]:=1;
              end

              ;

            end

            ;

            case (_alt[18]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:56:18: '','' enumConstant
        	    begin
        	    match(input,34,FOLLOW_34_in_enumConstants303); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_enumConstant_in_enumConstants305);
        	    enumConstant();

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
          memoize(input, 12, enumConstants_StartIndex);
        end;
    end;
end;// $ANTLR start "enumConstant"
// JavaDecl.g:59:1: enumConstant : ( annotations )? Identifier ( arguments )? ( classBody )? ;
function TJava_JavaDecl.enumConstant():Integer;
var
  _alt:array [0..255] of Integer;
  enumConstant_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumConstant_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 13) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:60:2: ( ( annotations )? Identifier ( arguments )? ( classBody )? )
        // JavaDecl.g:60:4: ( annotations )? Identifier ( arguments )? ( classBody )?
        begin
        // block:JavaDecl.g:60:4: ( annotations )?
        _alt[19]:=2;
        _LA[19,0] := input.LA(1);

        if ( ((_LA[19,0]=68)) ) then 
        begin
          _alt[19]:=1;
        end
        ;
        case (_alt[19]) of
             1 :
                begin
                // JavaDecl.g:0:0: annotations
                begin
                pushFollow(FOLLOW_annotations_in_enumConstant319);
                TJavaParser(gJava).annotations();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,Identifier,FOLLOW_Identifier_in_enumConstant322); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:60:28: ( arguments )?
        _alt[20]:=2;
        _LA[20,0] := input.LA(1);

        if ( ((_LA[20,0]=65)) ) then 
        begin
          _alt[20]:=1;
        end
        ;
        case (_alt[20]) of
             1 :
                begin
                // JavaDecl.g:60:29: arguments
                begin
                pushFollow(FOLLOW_arguments_in_enumConstant325);
                TJavaParser(gJava).arguments();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:60:41: ( classBody )?
        _alt[21]:=2;
        _LA[21,0] := input.LA(1);

        if ( ((_LA[21,0]=37)) ) then 
        begin
          _alt[21]:=1;
        end
        ;
        case (_alt[21]) of
             1 :
                begin
                // JavaDecl.g:60:42: classBody
                begin
                pushFollow(FOLLOW_classBody_in_enumConstant330);
                classBody();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


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
          memoize(input, 13, enumConstant_StartIndex);
        end;
    end;
end;// $ANTLR start "enumBodyDeclarations"
// JavaDecl.g:63:1: enumBodyDeclarations : '';'' ( classBodyDeclaration )* ;
function TJava_JavaDecl.enumBodyDeclarations():Integer;
var
  _alt:array [0..255] of Integer;
  enumBodyDeclarations_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumBodyDeclarations_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 14) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:64:2: ( '';'' ( classBodyDeclaration )* )
        // JavaDecl.g:64:4: '';'' ( classBodyDeclaration )*
        begin
        match(input,25,FOLLOW_25_in_enumBodyDeclarations344); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:64:8: ( classBodyDeclaration )*
        repeat 
            _alt[22]:=2;
            _LA[22,0] := input.LA(1);

            if ( (((_LA[22,0]>=Identifier) and 
            ( _LA[22,0]<=ENUM)) or (_LA[22,0]=25) or (_LA[22,0]=27) or (_LA[22,0]=30) or (_LA[22,0]=33) or (_LA[22,0]=37) or ((_LA[22,0]>=39) and 
            ( _LA[22,0]<=40)) or ((_LA[22,0]>=45) and 
            ( _LA[22,0]<=62)) or (_LA[22,0]=68)) ) then 
            begin
              _alt[22]:=1;
            end

            ;

            case (_alt[22]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:64:9: classBodyDeclaration
        	    begin
        	    pushFollow(FOLLOW_classBodyDeclaration_in_enumBodyDeclarations347);
        	    classBodyDeclaration();

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
          memoize(input, 14, enumBodyDeclarations_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceDeclaration"
// JavaDecl.g:67:1: interfaceDeclaration : ( normalInterfaceDeclaration | annotationTypeDeclaration );
function TJava_JavaDecl.interfaceDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 15) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:68:2: ( normalInterfaceDeclaration | annotationTypeDeclaration )
        _alt[23]:=2;
        _LA[23,0] := input.LA(1);

        if ( ((_LA[23,0]=39)) ) then 
        begin
          _alt[23]:=1;
        end
        else if ( ((_LA[23,0]=68)) ) then 
        begin
          _alt[23]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 23, 0, input);    

        end;
        case (_alt[23]) of 
             1 :
                begin
                // JavaDecl.g:68:4: normalInterfaceDeclaration
                begin
                pushFollow(FOLLOW_normalInterfaceDeclaration_in_interfaceDeclaration361);
                normalInterfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:69:5: annotationTypeDeclaration
                begin
                pushFollow(FOLLOW_annotationTypeDeclaration_in_interfaceDeclaration367);
                TJavaParser(gJava).annotationTypeDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 15, interfaceDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "normalInterfaceDeclaration"
// JavaDecl.g:72:1: normalInterfaceDeclaration : ''interface'' Identifier ( typeParameters )? ( ''extends'' typeList )? interfaceBody ;
function TJava_JavaDecl.normalInterfaceDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  normalInterfaceDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    normalInterfaceDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 16) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:73:2: ( ''interface'' Identifier ( typeParameters )? ( ''extends'' typeList )? interfaceBody )
        // JavaDecl.g:73:4: ''interface'' Identifier ( typeParameters )? ( ''extends'' typeList )? interfaceBody
        begin
        match(input,39,FOLLOW_39_in_normalInterfaceDeclaration379); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_normalInterfaceDeclaration381); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:73:27: ( typeParameters )?
        _alt[24]:=2;
        _LA[24,0] := input.LA(1);

        if ( ((_LA[24,0]=33)) ) then 
        begin
          _alt[24]:=1;
        end
        ;
        case (_alt[24]) of
             1 :
                begin
                // JavaDecl.g:0:0: typeParameters
                begin
                pushFollow(FOLLOW_typeParameters_in_normalInterfaceDeclaration383);
                typeParameters();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:73:43: ( ''extends'' typeList )?
        _alt[25]:=2;
        _LA[25,0] := input.LA(1);

        if ( ((_LA[25,0]=31)) ) then 
        begin
          _alt[25]:=1;
        end
        ;
        case (_alt[25]) of
             1 :
                begin
                // JavaDecl.g:73:44: ''extends'' typeList
                begin
                match(input,31,FOLLOW_31_in_normalInterfaceDeclaration387); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_typeList_in_normalInterfaceDeclaration389);
                typeList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_interfaceBody_in_normalInterfaceDeclaration393);
        interfaceBody();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 16, normalInterfaceDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "typeList"
// JavaDecl.g:76:1: typeList : dtype ( '','' dtype )* ;
function TJava_JavaDecl.typeList():Integer;
var
  _alt:array [0..255] of Integer;
  typeList_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeList_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 17) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:77:2: ( dtype ( '','' dtype )* )
        // JavaDecl.g:77:4: dtype ( '','' dtype )*
        begin
        pushFollow(FOLLOW_dtype_in_typeList405);
        dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:77:10: ( '','' dtype )*
        repeat 
            _alt[26]:=2;
            _LA[26,0] := input.LA(1);

            if ( ((_LA[26,0]=34)) ) then 
            begin
              _alt[26]:=1;
            end

            ;

            case (_alt[26]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:77:11: '','' dtype
        	    begin
        	    match(input,34,FOLLOW_34_in_typeList408); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_dtype_in_typeList410);
        	    dtype();

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
          memoize(input, 17, typeList_StartIndex);
        end;
    end;
end;// $ANTLR start "classBody"
// JavaDecl.g:80:1: classBody : ''{'' ( classBodyDeclaration )* ''}'' ;
function TJava_JavaDecl.classBody():Integer;
var
  _alt:array [0..255] of Integer;
  classBody_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    classBody_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 18) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:81:2: ( ''{'' ( classBodyDeclaration )* ''}'' )
        // JavaDecl.g:81:4: ''{'' ( classBodyDeclaration )* ''}''
        begin
        match(input,37,FOLLOW_37_in_classBody424); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:81:8: ( classBodyDeclaration )*
        repeat 
            _alt[27]:=2;
            _LA[27,0] := input.LA(1);

            if ( (((_LA[27,0]>=Identifier) and 
            ( _LA[27,0]<=ENUM)) or (_LA[27,0]=25) or (_LA[27,0]=27) or (_LA[27,0]=30) or (_LA[27,0]=33) or (_LA[27,0]=37) or ((_LA[27,0]>=39) and 
            ( _LA[27,0]<=40)) or ((_LA[27,0]>=45) and 
            ( _LA[27,0]<=62)) or (_LA[27,0]=68)) ) then 
            begin
              _alt[27]:=1;
            end

            ;

            case (_alt[27]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:0:0: classBodyDeclaration
        	    begin
        	    pushFollow(FOLLOW_classBodyDeclaration_in_classBody426);
        	    classBodyDeclaration();

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

        match(input,38,FOLLOW_38_in_classBody429); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 18, classBody_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceBody"
// JavaDecl.g:84:1: interfaceBody : ''{'' ( interfaceBodyDeclaration )* ''}'' ;
function TJava_JavaDecl.interfaceBody():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceBody_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceBody_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 19) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:85:2: ( ''{'' ( interfaceBodyDeclaration )* ''}'' )
        // JavaDecl.g:85:4: ''{'' ( interfaceBodyDeclaration )* ''}''
        begin
        match(input,37,FOLLOW_37_in_interfaceBody441); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:85:8: ( interfaceBodyDeclaration )*
        repeat 
            _alt[28]:=2;
            _LA[28,0] := input.LA(1);

            if ( (((_LA[28,0]>=Identifier) and 
            ( _LA[28,0]<=ENUM)) or (_LA[28,0]=25) or (_LA[28,0]=27) or (_LA[28,0]=30) or (_LA[28,0]=33) or ((_LA[28,0]>=39) and 
            ( _LA[28,0]<=40)) or ((_LA[28,0]>=45) and 
            ( _LA[28,0]<=62)) or (_LA[28,0]=68)) ) then 
            begin
              _alt[28]:=1;
            end

            ;

            case (_alt[28]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:0:0: interfaceBodyDeclaration
        	    begin
        	    pushFollow(FOLLOW_interfaceBodyDeclaration_in_interfaceBody443);
        	    interfaceBodyDeclaration();

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

        match(input,38,FOLLOW_38_in_interfaceBody446); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 19, interfaceBody_StartIndex);
        end;
    end;
end;// $ANTLR start "classBodyDeclaration"
// JavaDecl.g:88:1: classBodyDeclaration : ( '';'' | ( ''static'' )? block | ( modifier )* memberDecl );
function TJava_JavaDecl.classBodyDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  classBodyDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    classBodyDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 20) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:89:2: ( '';'' | ( ''static'' )? block | ( modifier )* memberDecl )
        _alt[31]:=3;

        case input.LA(1) of
         25: 
            begin
            _alt[31]:=1;
            end;
         27: 
            begin
            _LA[31,2] := input.LA(2);

            if ( (((_LA[31,2]>=Identifier) and 
            ( _LA[31,2]<=ENUM)) or (_LA[31,2]=27) or (_LA[31,2]=30) or (_LA[31,2]=33) or ((_LA[31,2]>=39) and 
            ( _LA[31,2]<=40)) or ((_LA[31,2]>=45) and 
            ( _LA[31,2]<=62)) or (_LA[31,2]=68)) ) then 
            begin
              _alt[31]:=3;
            end
            else if ( ((_LA[31,2]=37)) ) then 
            begin
              _alt[31]:=2;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit;  
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 31, 2, input);    

            end;
            end;
         37: 
            begin
            _alt[31]:=2;
            end;
         Identifier , 
         ENUM , 
         30 , 
         33 , 
         39 , 
         40 , 
         45 , 
         46 , 
         47 , 
         48 , 
         49 , 
         50 , 
         51 , 
         52 , 
         53 , 
         54 , 
         55 , 
         56 , 
         57 , 
         58 , 
         59 , 
         60 , 
         61 , 
         62 , 
         68: 
            begin
            _alt[31]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 31, 0, input);

        end;
        end;

        case (_alt[31]) of 
             1 :
                begin
                // JavaDecl.g:89:4: '';''
                begin
                match(input,25,FOLLOW_25_in_classBodyDeclaration457); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:90:4: ( ''static'' )? block
                begin
                // block:JavaDecl.g:90:4: ( ''static'' )?
                _alt[29]:=2;
                _LA[29,0] := input.LA(1);

                if ( ((_LA[29,0]=27)) ) then 
                begin
                  _alt[29]:=1;
                end
                ;
                case (_alt[29]) of
                     1 :
                        begin
                        // JavaDecl.g:0:0: ''static''
                        begin
                        match(input,27,FOLLOW_27_in_classBodyDeclaration462); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                pushFollow(FOLLOW_block_in_classBodyDeclaration465);
                TJavaParser(gJava).block();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaDecl.g:91:4: ( modifier )* memberDecl
                begin
                // closureBlock:JavaDecl.g:91:4: ( modifier )*
                repeat 
                    _alt[30]:=2;
                    _LA[30,0] := input.LA(1);

                    if ( ((_LA[30,0]=68)) ) then 
                    begin
                      _LA[30,2] := input.LA(2);

                      if ( ((_LA[30,2]=Identifier)) ) then 
                      begin
                        _alt[30]:=1;
                      end

                      ;

                    end
                    else if ( ((_LA[30,0]=27) or ((_LA[30,0]>=45) and 
                    ( _LA[30,0]<=54))) ) then 
                    begin
                      _alt[30]:=1;
                    end

                    ;

                    case (_alt[30]) of
                	 1 :
                	    begin
                	    // JavaDecl.g:0:0: modifier
                	    begin
                	    pushFollow(FOLLOW_modifier_in_classBodyDeclaration470);
                	    modifier();

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

                pushFollow(FOLLOW_memberDecl_in_classBodyDeclaration473);
                memberDecl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 20, classBodyDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "memberDecl"
// JavaDecl.g:94:1: memberDecl : ( genericMethodOrConstructorDecl | methodDeclaration | fieldDeclaration | ''void'' Identifier voidMethodDeclaratorRest | Identifier constructorDeclaratorRest | interfaceDeclaration | classDeclaration );
function TJava_JavaDecl.memberDecl():Integer;
var
  _alt:array [0..255] of Integer;
  memberDecl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    memberDecl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 21) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:95:2: ( genericMethodOrConstructorDecl | methodDeclaration | fieldDeclaration | ''void'' Identifier voidMethodDeclaratorRest | Identifier constructorDeclaratorRest | interfaceDeclaration | classDeclaration )
        _alt[32]:=7;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaDecl attribute is inherited via the parser, lexer, ...
         *}
        _alt[32] := getDfa32.predict(input);
        case (_alt[32]) of 
             1 :
                begin
                // JavaDecl.g:95:4: genericMethodOrConstructorDecl
                begin
                pushFollow(FOLLOW_genericMethodOrConstructorDecl_in_memberDecl485);
                genericMethodOrConstructorDecl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:96:4: methodDeclaration
                begin
                pushFollow(FOLLOW_methodDeclaration_in_memberDecl490);
                methodDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaDecl.g:97:4: fieldDeclaration
                begin
                pushFollow(FOLLOW_fieldDeclaration_in_memberDecl495);
                fieldDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaDecl.g:98:4: ''void'' Identifier voidMethodDeclaratorRest
                begin
                match(input,40,FOLLOW_40_in_memberDecl500); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,Identifier,FOLLOW_Identifier_in_memberDecl502); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_voidMethodDeclaratorRest_in_memberDecl504);
                voidMethodDeclaratorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaDecl.g:99:4: Identifier constructorDeclaratorRest
                begin
                match(input,Identifier,FOLLOW_Identifier_in_memberDecl509); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constructorDeclaratorRest_in_memberDecl511);
                constructorDeclaratorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaDecl.g:100:4: interfaceDeclaration
                begin
                pushFollow(FOLLOW_interfaceDeclaration_in_memberDecl516);
                interfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // JavaDecl.g:101:4: classDeclaration
                begin
                pushFollow(FOLLOW_classDeclaration_in_memberDecl521);
                classDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 21, memberDecl_StartIndex);
        end;
    end;
end;// $ANTLR start "genericMethodOrConstructorDecl"
// JavaDecl.g:104:1: genericMethodOrConstructorDecl : typeParameters genericMethodOrConstructorRest ;
function TJava_JavaDecl.genericMethodOrConstructorDecl():Integer;
var
  _alt:array [0..255] of Integer;
  genericMethodOrConstructorDecl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    genericMethodOrConstructorDecl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 22) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:105:2: ( typeParameters genericMethodOrConstructorRest )
        // JavaDecl.g:105:4: typeParameters genericMethodOrConstructorRest
        begin
        pushFollow(FOLLOW_typeParameters_in_genericMethodOrConstructorDecl533);
        typeParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_genericMethodOrConstructorRest_in_genericMethodOrConstructorDecl535);
        genericMethodOrConstructorRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 22, genericMethodOrConstructorDecl_StartIndex);
        end;
    end;
end;// $ANTLR start "genericMethodOrConstructorRest"
// JavaDecl.g:108:1: genericMethodOrConstructorRest : ( ( dtype | ''void'' ) Identifier methodDeclaratorRest | Identifier constructorDeclaratorRest );
function TJava_JavaDecl.genericMethodOrConstructorRest():Integer;
var
  _alt:array [0..255] of Integer;
  genericMethodOrConstructorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    genericMethodOrConstructorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 23) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:109:2: ( ( dtype | ''void'' ) Identifier methodDeclaratorRest | Identifier constructorDeclaratorRest )
        _alt[34]:=2;
        _LA[34,0] := input.LA(1);

        if ( ((_LA[34,0]=Identifier)) ) then 
        begin
          _LA[34,1] := input.LA(2);

          if ( ((_LA[34,1]=65)) ) then 
          begin
            _alt[34]:=2;
          end
          else if ( ((_LA[34,1]=Identifier) or (_LA[34,1]=28) or (_LA[34,1]=33) or (_LA[34,1]=41)) ) then 
          begin
            _alt[34]:=1;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit;  
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 34, 1, input);    

          end;
        end
        else if ( ((_LA[34,0]=40) or ((_LA[34,0]>=55) and 
        ( _LA[34,0]<=62))) ) then 
        begin
          _alt[34]:=1;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 34, 0, input);    

        end;
        case (_alt[34]) of 
             1 :
                begin
                // JavaDecl.g:109:4: ( dtype | ''void'' ) Identifier methodDeclaratorRest
                begin
                // block:JavaDecl.g:109:4: ( dtype | ''void'' )
                _alt[33]:=2;
                _LA[33,0] := input.LA(1);

                if ( ((_LA[33,0]=Identifier) or ((_LA[33,0]>=55) and 
                ( _LA[33,0]<=62))) ) then 
                begin
                  _alt[33]:=1;
                end
                else if ( ((_LA[33,0]=40)) ) then 
                begin
                  _alt[33]:=2;
                end
                else begin
                    if (state.backtracking>0) then 
                    begin 
                      state.failed:=true; 
                      Exit;  
                    end;
                    //Todo:raise ENoViableAltException.CreateNoViable(''
                    raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                    , 33, 0, input);    

                end;
                case (_alt[33]) of
                     1 :
                        begin
                        // JavaDecl.g:109:5: dtype
                        begin
                        pushFollow(FOLLOW_dtype_in_genericMethodOrConstructorRest548);
                        dtype();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;
                     2 :
                        begin
                        // JavaDecl.g:109:13: ''void''
                        begin
                        match(input,40,FOLLOW_40_in_genericMethodOrConstructorRest552); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,Identifier,FOLLOW_Identifier_in_genericMethodOrConstructorRest555); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_methodDeclaratorRest_in_genericMethodOrConstructorRest557);
                methodDeclaratorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:110:4: Identifier constructorDeclaratorRest
                begin
                match(input,Identifier,FOLLOW_Identifier_in_genericMethodOrConstructorRest562); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constructorDeclaratorRest_in_genericMethodOrConstructorRest564);
                constructorDeclaratorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 23, genericMethodOrConstructorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "methodDeclaration"
// JavaDecl.g:113:1: methodDeclaration : dtype Identifier methodDeclaratorRest ;
function TJava_JavaDecl.methodDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  methodDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    methodDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 24) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:114:2: ( dtype Identifier methodDeclaratorRest )
        // JavaDecl.g:114:4: dtype Identifier methodDeclaratorRest
        begin
        pushFollow(FOLLOW_dtype_in_methodDeclaration575);
        dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_methodDeclaration577); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_methodDeclaratorRest_in_methodDeclaration579);
        methodDeclaratorRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 24, methodDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "fieldDeclaration"
// JavaDecl.g:117:1: fieldDeclaration : dtype variableDeclarators '';'' ;
function TJava_JavaDecl.fieldDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  fieldDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    fieldDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 25) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:118:2: ( dtype variableDeclarators '';'' )
        // JavaDecl.g:118:4: dtype variableDeclarators '';''
        begin
        pushFollow(FOLLOW_dtype_in_fieldDeclaration590);
        dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_variableDeclarators_in_fieldDeclaration592);
        variableDeclarators();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,25,FOLLOW_25_in_fieldDeclaration594); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 25, fieldDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceBodyDeclaration"
// JavaDecl.g:121:1: interfaceBodyDeclaration : ( ( modifier )* interfaceMemberDecl | '';'' );
function TJava_JavaDecl.interfaceBodyDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceBodyDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceBodyDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 26) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:122:2: ( ( modifier )* interfaceMemberDecl | '';'' )
        _alt[36]:=2;
        _LA[36,0] := input.LA(1);

        if ( (((_LA[36,0]>=Identifier) and 
        ( _LA[36,0]<=ENUM)) or (_LA[36,0]=27) or (_LA[36,0]=30) or (_LA[36,0]=33) or ((_LA[36,0]>=39) and 
        ( _LA[36,0]<=40)) or ((_LA[36,0]>=45) and 
        ( _LA[36,0]<=62)) or (_LA[36,0]=68)) ) then 
        begin
          _alt[36]:=1;
        end
        else if ( ((_LA[36,0]=25)) ) then 
        begin
          _alt[36]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 36, 0, input);    

        end;
        case (_alt[36]) of 
             1 :
                begin
                // JavaDecl.g:122:4: ( modifier )* interfaceMemberDecl
                begin
                // closureBlock:JavaDecl.g:122:4: ( modifier )*
                repeat 
                    _alt[35]:=2;
                    _LA[35,0] := input.LA(1);

                    if ( ((_LA[35,0]=68)) ) then 
                    begin
                      _LA[35,2] := input.LA(2);

                      if ( ((_LA[35,2]=Identifier)) ) then 
                      begin
                        _alt[35]:=1;
                      end

                      ;

                    end
                    else if ( ((_LA[35,0]=27) or ((_LA[35,0]>=45) and 
                    ( _LA[35,0]<=54))) ) then 
                    begin
                      _alt[35]:=1;
                    end

                    ;

                    case (_alt[35]) of
                	 1 :
                	    begin
                	    // JavaDecl.g:0:0: modifier
                	    begin
                	    pushFollow(FOLLOW_modifier_in_interfaceBodyDeclaration607);
                	    modifier();

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

                pushFollow(FOLLOW_interfaceMemberDecl_in_interfaceBodyDeclaration610);
                interfaceMemberDecl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:123:6: '';''
                begin
                match(input,25,FOLLOW_25_in_interfaceBodyDeclaration617); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 26, interfaceBodyDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceMemberDecl"
// JavaDecl.g:126:1: interfaceMemberDecl : ( interfaceMethodOrFieldDecl | interfaceGenericMethodDecl | ''void'' Identifier voidInterfaceMethodDeclaratorRest | interfaceDeclaration | classDeclaration );
function TJava_JavaDecl.interfaceMemberDecl():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceMemberDecl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceMemberDecl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 27) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:127:2: ( interfaceMethodOrFieldDecl | interfaceGenericMethodDecl | ''void'' Identifier voidInterfaceMethodDeclaratorRest | interfaceDeclaration | classDeclaration )
        _alt[37]:=5;

        case input.LA(1) of
         Identifier , 
         55 , 
         56 , 
         57 , 
         58 , 
         59 , 
         60 , 
         61 , 
         62: 
            begin
            _alt[37]:=1;
            end;
         33: 
            begin
            _alt[37]:=2;
            end;
         40: 
            begin
            _alt[37]:=3;
            end;
         39 , 
         68: 
            begin
            _alt[37]:=4;
            end;
         ENUM , 
         30: 
            begin
            _alt[37]:=5;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 37, 0, input);

        end;
        end;

        case (_alt[37]) of 
             1 :
                begin
                // JavaDecl.g:127:4: interfaceMethodOrFieldDecl
                begin
                pushFollow(FOLLOW_interfaceMethodOrFieldDecl_in_interfaceMemberDecl628);
                interfaceMethodOrFieldDecl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:128:6: interfaceGenericMethodDecl
                begin
                pushFollow(FOLLOW_interfaceGenericMethodDecl_in_interfaceMemberDecl635);
                interfaceGenericMethodDecl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaDecl.g:129:9: ''void'' Identifier voidInterfaceMethodDeclaratorRest
                begin
                match(input,40,FOLLOW_40_in_interfaceMemberDecl645); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,Identifier,FOLLOW_Identifier_in_interfaceMemberDecl647); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_voidInterfaceMethodDeclaratorRest_in_interfaceMemberDecl649);
                voidInterfaceMethodDeclaratorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaDecl.g:130:9: interfaceDeclaration
                begin
                pushFollow(FOLLOW_interfaceDeclaration_in_interfaceMemberDecl659);
                interfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaDecl.g:131:9: classDeclaration
                begin
                pushFollow(FOLLOW_classDeclaration_in_interfaceMemberDecl669);
                classDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 27, interfaceMemberDecl_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceMethodOrFieldDecl"
// JavaDecl.g:134:1: interfaceMethodOrFieldDecl : dtype Identifier interfaceMethodOrFieldRest ;
function TJava_JavaDecl.interfaceMethodOrFieldDecl():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceMethodOrFieldDecl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceMethodOrFieldDecl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 28) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:135:2: ( dtype Identifier interfaceMethodOrFieldRest )
        // JavaDecl.g:135:4: dtype Identifier interfaceMethodOrFieldRest
        begin
        pushFollow(FOLLOW_dtype_in_interfaceMethodOrFieldDecl681);
        dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_interfaceMethodOrFieldDecl683); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_interfaceMethodOrFieldRest_in_interfaceMethodOrFieldDecl685);
        interfaceMethodOrFieldRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 28, interfaceMethodOrFieldDecl_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceMethodOrFieldRest"
// JavaDecl.g:138:1: interfaceMethodOrFieldRest : ( constantDeclaratorsRest '';'' | interfaceMethodDeclaratorRest );
function TJava_JavaDecl.interfaceMethodOrFieldRest():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceMethodOrFieldRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceMethodOrFieldRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 29) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:139:2: ( constantDeclaratorsRest '';'' | interfaceMethodDeclaratorRest )
        _alt[38]:=2;
        _LA[38,0] := input.LA(1);

        if ( ((_LA[38,0]=41) or (_LA[38,0]=44)) ) then 
        begin
          _alt[38]:=1;
        end
        else if ( ((_LA[38,0]=65)) ) then 
        begin
          _alt[38]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 38, 0, input);    

        end;
        case (_alt[38]) of 
             1 :
                begin
                // JavaDecl.g:139:4: constantDeclaratorsRest '';''
                begin
                pushFollow(FOLLOW_constantDeclaratorsRest_in_interfaceMethodOrFieldRest697);
                constantDeclaratorsRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,25,FOLLOW_25_in_interfaceMethodOrFieldRest699); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:140:4: interfaceMethodDeclaratorRest
                begin
                pushFollow(FOLLOW_interfaceMethodDeclaratorRest_in_interfaceMethodOrFieldRest704);
                interfaceMethodDeclaratorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 29, interfaceMethodOrFieldRest_StartIndex);
        end;
    end;
end;// $ANTLR start "methodDeclaratorRest"
// JavaDecl.g:143:1: methodDeclaratorRest : formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? ( methodBody | '';'' ) ;
function TJava_JavaDecl.methodDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  methodDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    methodDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 30) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:144:2: ( formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? ( methodBody | '';'' ) )
        // JavaDecl.g:144:4: formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? ( methodBody | '';'' )
        begin
        pushFollow(FOLLOW_formalParameters_in_methodDeclaratorRest716);
        formalParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:144:21: ( ''['' '']'' )*
        repeat 
            _alt[39]:=2;
            _LA[39,0] := input.LA(1);

            if ( ((_LA[39,0]=41)) ) then 
            begin
              _alt[39]:=1;
            end

            ;

            case (_alt[39]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:144:22: ''['' '']''
        	    begin
        	    match(input,41,FOLLOW_41_in_methodDeclaratorRest719); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,42,FOLLOW_42_in_methodDeclaratorRest721); 
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

        // block:JavaDecl.g:145:9: ( ''throws'' qualifiedNameList )?
        _alt[40]:=2;
        _LA[40,0] := input.LA(1);

        if ( ((_LA[40,0]=43)) ) then 
        begin
          _alt[40]:=1;
        end
        ;
        case (_alt[40]) of
             1 :
                begin
                // JavaDecl.g:145:10: ''throws'' qualifiedNameList
                begin
                match(input,43,FOLLOW_43_in_methodDeclaratorRest734); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_qualifiedNameList_in_methodDeclaratorRest736);
                qualifiedNameList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:146:9: ( methodBody | '';'' )
        _alt[41]:=2;
        _LA[41,0] := input.LA(1);

        if ( ((_LA[41,0]=37)) ) then 
        begin
          _alt[41]:=1;
        end
        else if ( ((_LA[41,0]=25)) ) then 
        begin
          _alt[41]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 41, 0, input);    

        end;
        case (_alt[41]) of
             1 :
                begin
                // JavaDecl.g:146:13: methodBody
                begin
                pushFollow(FOLLOW_methodBody_in_methodDeclaratorRest752);
                TJavaParser(gJava).methodBody();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:147:13: '';''
                begin
                match(input,25,FOLLOW_25_in_methodDeclaratorRest766); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


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
          memoize(input, 30, methodDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "voidMethodDeclaratorRest"
// JavaDecl.g:151:1: voidMethodDeclaratorRest : formalParameters ( ''throws'' qualifiedNameList )? ( methodBody | '';'' ) ;
function TJava_JavaDecl.voidMethodDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  voidMethodDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    voidMethodDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 31) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:152:2: ( formalParameters ( ''throws'' qualifiedNameList )? ( methodBody | '';'' ) )
        // JavaDecl.g:152:4: formalParameters ( ''throws'' qualifiedNameList )? ( methodBody | '';'' )
        begin
        pushFollow(FOLLOW_formalParameters_in_voidMethodDeclaratorRest788);
        formalParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:152:21: ( ''throws'' qualifiedNameList )?
        _alt[42]:=2;
        _LA[42,0] := input.LA(1);

        if ( ((_LA[42,0]=43)) ) then 
        begin
          _alt[42]:=1;
        end
        ;
        case (_alt[42]) of
             1 :
                begin
                // JavaDecl.g:152:22: ''throws'' qualifiedNameList
                begin
                match(input,43,FOLLOW_43_in_voidMethodDeclaratorRest791); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_qualifiedNameList_in_voidMethodDeclaratorRest793);
                qualifiedNameList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:JavaDecl.g:153:9: ( methodBody | '';'' )
        _alt[43]:=2;
        _LA[43,0] := input.LA(1);

        if ( ((_LA[43,0]=37)) ) then 
        begin
          _alt[43]:=1;
        end
        else if ( ((_LA[43,0]=25)) ) then 
        begin
          _alt[43]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 43, 0, input);    

        end;
        case (_alt[43]) of
             1 :
                begin
                // JavaDecl.g:153:13: methodBody
                begin
                pushFollow(FOLLOW_methodBody_in_voidMethodDeclaratorRest809);
                TJavaParser(gJava).methodBody();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:154:13: '';''
                begin
                match(input,25,FOLLOW_25_in_voidMethodDeclaratorRest823); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


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
          memoize(input, 31, voidMethodDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceMethodDeclaratorRest"
// JavaDecl.g:158:1: interfaceMethodDeclaratorRest : formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? '';'' ;
function TJava_JavaDecl.interfaceMethodDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceMethodDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceMethodDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 32) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:159:2: ( formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? '';'' )
        // JavaDecl.g:159:4: formalParameters ( ''['' '']'' )* ( ''throws'' qualifiedNameList )? '';''
        begin
        pushFollow(FOLLOW_formalParameters_in_interfaceMethodDeclaratorRest845);
        formalParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:159:21: ( ''['' '']'' )*
        repeat 
            _alt[44]:=2;
            _LA[44,0] := input.LA(1);

            if ( ((_LA[44,0]=41)) ) then 
            begin
              _alt[44]:=1;
            end

            ;

            case (_alt[44]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:159:22: ''['' '']''
        	    begin
        	    match(input,41,FOLLOW_41_in_interfaceMethodDeclaratorRest848); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,42,FOLLOW_42_in_interfaceMethodDeclaratorRest850); 
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

        // block:JavaDecl.g:159:32: ( ''throws'' qualifiedNameList )?
        _alt[45]:=2;
        _LA[45,0] := input.LA(1);

        if ( ((_LA[45,0]=43)) ) then 
        begin
          _alt[45]:=1;
        end
        ;
        case (_alt[45]) of
             1 :
                begin
                // JavaDecl.g:159:33: ''throws'' qualifiedNameList
                begin
                match(input,43,FOLLOW_43_in_interfaceMethodDeclaratorRest855); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_qualifiedNameList_in_interfaceMethodDeclaratorRest857);
                qualifiedNameList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,25,FOLLOW_25_in_interfaceMethodDeclaratorRest861); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 32, interfaceMethodDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "interfaceGenericMethodDecl"
// JavaDecl.g:162:1: interfaceGenericMethodDecl : typeParameters ( dtype | ''void'' ) Identifier interfaceMethodDeclaratorRest ;
function TJava_JavaDecl.interfaceGenericMethodDecl():Integer;
var
  _alt:array [0..255] of Integer;
  interfaceGenericMethodDecl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    interfaceGenericMethodDecl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 33) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:163:2: ( typeParameters ( dtype | ''void'' ) Identifier interfaceMethodDeclaratorRest )
        // JavaDecl.g:163:4: typeParameters ( dtype | ''void'' ) Identifier interfaceMethodDeclaratorRest
        begin
        pushFollow(FOLLOW_typeParameters_in_interfaceGenericMethodDecl873);
        typeParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:163:19: ( dtype | ''void'' )
        _alt[46]:=2;
        _LA[46,0] := input.LA(1);

        if ( ((_LA[46,0]=Identifier) or ((_LA[46,0]>=55) and 
        ( _LA[46,0]<=62))) ) then 
        begin
          _alt[46]:=1;
        end
        else if ( ((_LA[46,0]=40)) ) then 
        begin
          _alt[46]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 46, 0, input);    

        end;
        case (_alt[46]) of
             1 :
                begin
                // JavaDecl.g:163:20: dtype
                begin
                pushFollow(FOLLOW_dtype_in_interfaceGenericMethodDecl876);
                dtype();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:163:28: ''void''
                begin
                match(input,40,FOLLOW_40_in_interfaceGenericMethodDecl880); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,Identifier,FOLLOW_Identifier_in_interfaceGenericMethodDecl883); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_interfaceMethodDeclaratorRest_in_interfaceGenericMethodDecl893);
        interfaceMethodDeclaratorRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 33, interfaceGenericMethodDecl_StartIndex);
        end;
    end;
end;// $ANTLR start "voidInterfaceMethodDeclaratorRest"
// JavaDecl.g:167:1: voidInterfaceMethodDeclaratorRest : formalParameters ( ''throws'' qualifiedNameList )? '';'' ;
function TJava_JavaDecl.voidInterfaceMethodDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  voidInterfaceMethodDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    voidInterfaceMethodDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 34) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:168:2: ( formalParameters ( ''throws'' qualifiedNameList )? '';'' )
        // JavaDecl.g:168:4: formalParameters ( ''throws'' qualifiedNameList )? '';''
        begin
        pushFollow(FOLLOW_formalParameters_in_voidInterfaceMethodDeclaratorRest905);
        formalParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:168:21: ( ''throws'' qualifiedNameList )?
        _alt[47]:=2;
        _LA[47,0] := input.LA(1);

        if ( ((_LA[47,0]=43)) ) then 
        begin
          _alt[47]:=1;
        end
        ;
        case (_alt[47]) of
             1 :
                begin
                // JavaDecl.g:168:22: ''throws'' qualifiedNameList
                begin
                match(input,43,FOLLOW_43_in_voidInterfaceMethodDeclaratorRest908); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_qualifiedNameList_in_voidInterfaceMethodDeclaratorRest910);
                qualifiedNameList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,25,FOLLOW_25_in_voidInterfaceMethodDeclaratorRest914); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 34, voidInterfaceMethodDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "constructorDeclaratorRest"
// JavaDecl.g:171:1: constructorDeclaratorRest : formalParameters ( ''throws'' qualifiedNameList )? methodBody ;
function TJava_JavaDecl.constructorDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  constructorDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constructorDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 35) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:172:2: ( formalParameters ( ''throws'' qualifiedNameList )? methodBody )
        // JavaDecl.g:172:4: formalParameters ( ''throws'' qualifiedNameList )? methodBody
        begin
        pushFollow(FOLLOW_formalParameters_in_constructorDeclaratorRest926);
        formalParameters();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:172:21: ( ''throws'' qualifiedNameList )?
        _alt[48]:=2;
        _LA[48,0] := input.LA(1);

        if ( ((_LA[48,0]=43)) ) then 
        begin
          _alt[48]:=1;
        end
        ;
        case (_alt[48]) of
             1 :
                begin
                // JavaDecl.g:172:22: ''throws'' qualifiedNameList
                begin
                match(input,43,FOLLOW_43_in_constructorDeclaratorRest929); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_qualifiedNameList_in_constructorDeclaratorRest931);
                qualifiedNameList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_methodBody_in_constructorDeclaratorRest935);
        TJavaParser(gJava).methodBody();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 35, constructorDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "constantDeclarator"
// JavaDecl.g:175:1: constantDeclarator : Identifier constantDeclaratorRest ;
function TJava_JavaDecl.constantDeclarator():Integer;
var
  _alt:array [0..255] of Integer;
  constantDeclarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constantDeclarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 36) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:176:2: ( Identifier constantDeclaratorRest )
        // JavaDecl.g:176:4: Identifier constantDeclaratorRest
        begin
        match(input,Identifier,FOLLOW_Identifier_in_constantDeclarator946); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_constantDeclaratorRest_in_constantDeclarator948);
        constantDeclaratorRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 36, constantDeclarator_StartIndex);
        end;
    end;
end;// $ANTLR start "variableDeclarators"
// JavaDecl.g:179:1: variableDeclarators : variableDeclarator ( '','' variableDeclarator )* ;
function TJava_JavaDecl.variableDeclarators():Integer;
var
  _alt:array [0..255] of Integer;
  variableDeclarators_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    variableDeclarators_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 37) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:180:2: ( variableDeclarator ( '','' variableDeclarator )* )
        // JavaDecl.g:180:4: variableDeclarator ( '','' variableDeclarator )*
        begin
        pushFollow(FOLLOW_variableDeclarator_in_variableDeclarators960);
        variableDeclarator();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:180:23: ( '','' variableDeclarator )*
        repeat 
            _alt[49]:=2;
            _LA[49,0] := input.LA(1);

            if ( ((_LA[49,0]=34)) ) then 
            begin
              _alt[49]:=1;
            end

            ;

            case (_alt[49]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:180:24: '','' variableDeclarator
        	    begin
        	    match(input,34,FOLLOW_34_in_variableDeclarators963); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_variableDeclarator_in_variableDeclarators965);
        	    variableDeclarator();

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
          memoize(input, 37, variableDeclarators_StartIndex);
        end;
    end;
end;// $ANTLR start "variableDeclarator"
// JavaDecl.g:183:1: variableDeclarator : Identifier variableDeclaratorRest ;
function TJava_JavaDecl.variableDeclarator():Integer;
var
  _alt:array [0..255] of Integer;
  variableDeclarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    variableDeclarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 38) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:184:2: ( Identifier variableDeclaratorRest )
        // JavaDecl.g:184:4: Identifier variableDeclaratorRest
        begin
        match(input,Identifier,FOLLOW_Identifier_in_variableDeclarator978); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_variableDeclaratorRest_in_variableDeclarator980);
        variableDeclaratorRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 38, variableDeclarator_StartIndex);
        end;
    end;
end;// $ANTLR start "variableDeclaratorRest"
// JavaDecl.g:187:1: variableDeclaratorRest : ( ( ''['' '']'' )+ ( ''='' variableInitializer )? | ''='' variableInitializer | );
function TJava_JavaDecl.variableDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  variableDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    variableDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 39) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:188:2: ( ( ''['' '']'' )+ ( ''='' variableInitializer )? | ''='' variableInitializer | )
        _alt[52]:=3;

        case input.LA(1) of
         41: 
            begin
            _alt[52]:=1;
            end;
         44: 
            begin
            _alt[52]:=2;
            end;
         EOF , 
         25 , 
         34: 
            begin
            _alt[52]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 52, 0, input);

        end;
        end;

        case (_alt[52]) of 
             1 :
                begin
                // JavaDecl.g:188:4: ( ''['' '']'' )+ ( ''='' variableInitializer )?
                begin
                // positiveClosureBlock:JavaDecl.g:188:4: ( ''['' '']'' )+
                _cnt[50]:=0;
                repeat 
                    _alt[50]:=2;
                    //before decision
                    _LA[50,0] := input.LA(1);

                    if ( ((_LA[50,0]=41)) ) then 
                    begin
                      _alt[50]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[50]) of 
                	 1 :
                	    begin
                	    // JavaDecl.g:188:5: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_variableDeclaratorRest993); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_variableDeclaratorRest995); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;

                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[50] >= 1 ) then
                	        break ;
                	      if (state.backtracking>0) then 
                	      begin 
                	        state.failed:=true; 
                	        Exit;  
                	      end;
                	        raise EEarlyExitException.CreateWithDecision(50, input);
                        end;
                    end;
                    _cnt[50]:=_cnt[50]+1;
                until (false);

                // block:JavaDecl.g:188:15: ( ''='' variableInitializer )?
                _alt[51]:=2;
                _LA[51,0] := input.LA(1);

                if ( ((_LA[51,0]=44)) ) then 
                begin
                  _alt[51]:=1;
                end
                ;
                case (_alt[51]) of
                     1 :
                        begin
                        // JavaDecl.g:188:16: ''='' variableInitializer
                        begin
                        match(input,44,FOLLOW_44_in_variableDeclaratorRest1000); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_variableInitializer_in_variableDeclaratorRest1002);
                        variableInitializer();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // JavaDecl.g:189:4: ''='' variableInitializer
                begin
                match(input,44,FOLLOW_44_in_variableDeclaratorRest1009); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_variableInitializer_in_variableDeclaratorRest1011);
                variableInitializer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaDecl.g:191:2: 
                begin
                end;
                end;

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
          memoize(input, 39, variableDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "constantDeclaratorsRest"
// JavaDecl.g:193:1: constantDeclaratorsRest : constantDeclaratorRest ( '','' constantDeclarator )* ;
function TJava_JavaDecl.constantDeclaratorsRest():Integer;
var
  _alt:array [0..255] of Integer;
  constantDeclaratorsRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constantDeclaratorsRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 40) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:194:5: ( constantDeclaratorRest ( '','' constantDeclarator )* )
        // JavaDecl.g:194:9: constantDeclaratorRest ( '','' constantDeclarator )*
        begin
        pushFollow(FOLLOW_constantDeclaratorRest_in_constantDeclaratorsRest1031);
        constantDeclaratorRest();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:194:32: ( '','' constantDeclarator )*
        repeat 
            _alt[53]:=2;
            _LA[53,0] := input.LA(1);

            if ( ((_LA[53,0]=34)) ) then 
            begin
              _alt[53]:=1;
            end

            ;

            case (_alt[53]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:194:33: '','' constantDeclarator
        	    begin
        	    match(input,34,FOLLOW_34_in_constantDeclaratorsRest1034); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_constantDeclarator_in_constantDeclaratorsRest1036);
        	    constantDeclarator();

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
          memoize(input, 40, constantDeclaratorsRest_StartIndex);
        end;
    end;
end;// $ANTLR start "constantDeclaratorRest"
// JavaDecl.g:197:1: constantDeclaratorRest : ( ''['' '']'' )* ''='' variableInitializer ;
function TJava_JavaDecl.constantDeclaratorRest():Integer;
var
  _alt:array [0..255] of Integer;
  constantDeclaratorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constantDeclaratorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 41) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:198:2: ( ( ''['' '']'' )* ''='' variableInitializer )
        // JavaDecl.g:198:4: ( ''['' '']'' )* ''='' variableInitializer
        begin
        // closureBlock:JavaDecl.g:198:4: ( ''['' '']'' )*
        repeat 
            _alt[54]:=2;
            _LA[54,0] := input.LA(1);

            if ( ((_LA[54,0]=41)) ) then 
            begin
              _alt[54]:=1;
            end

            ;

            case (_alt[54]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:198:5: ''['' '']''
        	    begin
        	    match(input,41,FOLLOW_41_in_constantDeclaratorRest1053); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,42,FOLLOW_42_in_constantDeclaratorRest1055); 
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

        match(input,44,FOLLOW_44_in_constantDeclaratorRest1059); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_variableInitializer_in_constantDeclaratorRest1061);
        variableInitializer();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 41, constantDeclaratorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "variableDeclaratorId"
// JavaDecl.g:201:1: variableDeclaratorId : Identifier ( ''['' '']'' )* ;
function TJava_JavaDecl.variableDeclaratorId():Integer;
var
  _alt:array [0..255] of Integer;
  variableDeclaratorId_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    variableDeclaratorId_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 42) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:202:2: ( Identifier ( ''['' '']'' )* )
        // JavaDecl.g:202:4: Identifier ( ''['' '']'' )*
        begin
        match(input,Identifier,FOLLOW_Identifier_in_variableDeclaratorId1073); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:202:15: ( ''['' '']'' )*
        repeat 
            _alt[55]:=2;
            _LA[55,0] := input.LA(1);

            if ( ((_LA[55,0]=41)) ) then 
            begin
              _alt[55]:=1;
            end

            ;

            case (_alt[55]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:202:16: ''['' '']''
        	    begin
        	    match(input,41,FOLLOW_41_in_variableDeclaratorId1076); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,42,FOLLOW_42_in_variableDeclaratorId1078); 
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
          memoize(input, 42, variableDeclaratorId_StartIndex);
        end;
    end;
end;// $ANTLR start "variableInitializer"
// JavaDecl.g:205:1: variableInitializer : ( arrayInitializer | expression );
function TJava_JavaDecl.variableInitializer():Integer;
var
  _alt:array [0..255] of Integer;
  variableInitializer_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    variableInitializer_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 43) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:206:2: ( arrayInitializer | expression )
        _alt[56]:=2;
        _LA[56,0] := input.LA(1);

        if ( ((_LA[56,0]=37)) ) then 
        begin
          _alt[56]:=1;
        end
        else if ( ((_LA[56,0]=Identifier) or ((_LA[56,0]>=FloatingPointLiteral) and 
        ( _LA[56,0]<=DecimalLiteral)) or (_LA[56,0]=33) or (_LA[56,0]=40) or ((_LA[56,0]>=55) and 
        ( _LA[56,0]<=62)) or ((_LA[56,0]>=64) and 
        ( _LA[56,0]<=65)) or ((_LA[56,0]>=86) and 
        ( _LA[56,0]<=87)) or ((_LA[56,0]>=90) and 
        ( _LA[56,0]<=98))) ) then 
        begin
          _alt[56]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 56, 0, input);    

        end;
        case (_alt[56]) of 
             1 :
                begin
                // JavaDecl.g:206:4: arrayInitializer
                begin
                pushFollow(FOLLOW_arrayInitializer_in_variableInitializer1091);
                arrayInitializer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:207:9: expression
                begin
                pushFollow(FOLLOW_expression_in_variableInitializer1101);
                TJavaParser(gJava).expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 43, variableInitializer_StartIndex);
        end;
    end;
end;// $ANTLR start "arrayInitializer"
// JavaDecl.g:210:1: arrayInitializer : ''{'' ( variableInitializer ( '','' variableInitializer )* ( '','' )? )? ''}'' ;
function TJava_JavaDecl.arrayInitializer():Integer;
var
  _alt:array [0..255] of Integer;
  arrayInitializer_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    arrayInitializer_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 44) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:211:2: ( ''{'' ( variableInitializer ( '','' variableInitializer )* ( '','' )? )? ''}'' )
        // JavaDecl.g:211:4: ''{'' ( variableInitializer ( '','' variableInitializer )* ( '','' )? )? ''}''
        begin
        match(input,37,FOLLOW_37_in_arrayInitializer1113); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:211:8: ( variableInitializer ( '','' variableInitializer )* ( '','' )? )?
        _alt[59]:=2;
        _LA[59,0] := input.LA(1);

        if ( ((_LA[59,0]=Identifier) or ((_LA[59,0]>=FloatingPointLiteral) and 
        ( _LA[59,0]<=DecimalLiteral)) or (_LA[59,0]=33) or (_LA[59,0]=37) or (_LA[59,0]=40) or ((_LA[59,0]>=55) and 
        ( _LA[59,0]<=62)) or ((_LA[59,0]>=64) and 
        ( _LA[59,0]<=65)) or ((_LA[59,0]>=86) and 
        ( _LA[59,0]<=87)) or ((_LA[59,0]>=90) and 
        ( _LA[59,0]<=98))) ) then 
        begin
          _alt[59]:=1;
        end
        ;
        case (_alt[59]) of
             1 :
                begin
                // JavaDecl.g:211:9: variableInitializer ( '','' variableInitializer )* ( '','' )?
                begin
                pushFollow(FOLLOW_variableInitializer_in_arrayInitializer1116);
                variableInitializer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaDecl.g:211:29: ( '','' variableInitializer )*
                repeat 
                    _alt[57]:=2;
                    _LA[57,0] := input.LA(1);

                    if ( ((_LA[57,0]=34)) ) then 
                    begin
                      _LA[57,1] := input.LA(2);

                      if ( ((_LA[57,1]=Identifier) or ((_LA[57,1]>=FloatingPointLiteral) and 
                      ( _LA[57,1]<=DecimalLiteral)) or (_LA[57,1]=33) or (_LA[57,1]=37) or (_LA[57,1]=40) or ((_LA[57,1]>=55) and 
                      ( _LA[57,1]<=62)) or ((_LA[57,1]>=64) and 
                      ( _LA[57,1]<=65)) or ((_LA[57,1]>=86) and 
                      ( _LA[57,1]<=87)) or ((_LA[57,1]>=90) and 
                      ( _LA[57,1]<=98))) ) then 
                      begin
                        _alt[57]:=1;
                      end

                      ;

                    end

                    ;

                    case (_alt[57]) of
                	 1 :
                	    begin
                	    // JavaDecl.g:211:30: '','' variableInitializer
                	    begin
                	    match(input,34,FOLLOW_34_in_arrayInitializer1119); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    pushFollow(FOLLOW_variableInitializer_in_arrayInitializer1121);
                	    variableInitializer();

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

                // block:JavaDecl.g:211:56: ( '','' )?
                _alt[58]:=2;
                _LA[58,0] := input.LA(1);

                if ( ((_LA[58,0]=34)) ) then 
                begin
                  _alt[58]:=1;
                end
                ;
                case (_alt[58]) of
                     1 :
                        begin
                        // JavaDecl.g:211:57: '',''
                        begin
                        match(input,34,FOLLOW_34_in_arrayInitializer1126); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;

        end;

        match(input,38,FOLLOW_38_in_arrayInitializer1133); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 44, arrayInitializer_StartIndex);
        end;
    end;
end;// $ANTLR start "modifier"
// JavaDecl.g:214:1: modifier : ( annotation | ''public'' | ''protected'' | ''private'' | ''static'' | ''abstract'' | ''final'' | ''native'' | ''synchronized'' | ''transient'' | ''volatile'' | ''strictfp'' );
function TJava_JavaDecl.modifier():Integer;
var
  _alt:array [0..255] of Integer;
  modifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    modifier_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 45) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:215:5: ( annotation | ''public'' | ''protected'' | ''private'' | ''static'' | ''abstract'' | ''final'' | ''native'' | ''synchronized'' | ''transient'' | ''volatile'' | ''strictfp'' )
        _alt[60]:=12;

        case input.LA(1) of
         68: 
            begin
            _alt[60]:=1;
            end;
         45: 
            begin
            _alt[60]:=2;
            end;
         46: 
            begin
            _alt[60]:=3;
            end;
         47: 
            begin
            _alt[60]:=4;
            end;
         27: 
            begin
            _alt[60]:=5;
            end;
         48: 
            begin
            _alt[60]:=6;
            end;
         49: 
            begin
            _alt[60]:=7;
            end;
         50: 
            begin
            _alt[60]:=8;
            end;
         51: 
            begin
            _alt[60]:=9;
            end;
         52: 
            begin
            _alt[60]:=10;
            end;
         53: 
            begin
            _alt[60]:=11;
            end;
         54: 
            begin
            _alt[60]:=12;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 60, 0, input);

        end;
        end;

        case (_alt[60]) of 
             1 :
                begin
                // JavaDecl.g:215:9: annotation
                begin
                pushFollow(FOLLOW_annotation_in_modifier1149);
                TJavaParser(gJava).annotation();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:216:9: ''public''
                begin
                match(input,45,FOLLOW_45_in_modifier1159); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaDecl.g:217:9: ''protected''
                begin
                match(input,46,FOLLOW_46_in_modifier1169); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaDecl.g:218:9: ''private''
                begin
                match(input,47,FOLLOW_47_in_modifier1179); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaDecl.g:219:9: ''static''
                begin
                match(input,27,FOLLOW_27_in_modifier1189); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaDecl.g:220:9: ''abstract''
                begin
                match(input,48,FOLLOW_48_in_modifier1199); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // JavaDecl.g:221:9: ''final''
                begin
                match(input,49,FOLLOW_49_in_modifier1209); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             8 :
                begin
                // JavaDecl.g:222:9: ''native''
                begin
                match(input,50,FOLLOW_50_in_modifier1219); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             9 :
                begin
                // JavaDecl.g:223:9: ''synchronized''
                begin
                match(input,51,FOLLOW_51_in_modifier1229); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             10 :
                begin
                // JavaDecl.g:224:9: ''transient''
                begin
                match(input,52,FOLLOW_52_in_modifier1239); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             11 :
                begin
                // JavaDecl.g:225:9: ''volatile''
                begin
                match(input,53,FOLLOW_53_in_modifier1249); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             12 :
                begin
                // JavaDecl.g:226:9: ''strictfp''
                begin
                match(input,54,FOLLOW_54_in_modifier1259); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 45, modifier_StartIndex);
        end;
    end;
end;// $ANTLR start "packageOrTypeName"
// JavaDecl.g:229:1: packageOrTypeName : Identifier ( ''.'' Identifier )* ;
function TJava_JavaDecl.packageOrTypeName():Integer;
var
  _alt:array [0..255] of Integer;
  packageOrTypeName_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    packageOrTypeName_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 46) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:230:2: ( Identifier ( ''.'' Identifier )* )
        // JavaDecl.g:230:4: Identifier ( ''.'' Identifier )*
        begin
        match(input,Identifier,FOLLOW_Identifier_in_packageOrTypeName1273); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:230:15: ( ''.'' Identifier )*
        repeat 
            _alt[61]:=2;
            _LA[61,0] := input.LA(1);

            if ( ((_LA[61,0]=28)) ) then 
            begin
              _LA[61,1] := input.LA(2);

              if ( ((_LA[61,1]=Identifier)) ) then 
              begin
                _LA[61,2] := input.LA(3);

                if ( ((_LA[61,2]=28)) ) then 
                begin
                  _alt[61]:=1;
                end

                ;

              end

              ;

            end

            ;

            case (_alt[61]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:230:16: ''.'' Identifier
        	    begin
        	    match(input,28,FOLLOW_28_in_packageOrTypeName1276); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,Identifier,FOLLOW_Identifier_in_packageOrTypeName1278); 
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
          memoize(input, 46, packageOrTypeName_StartIndex);
        end;
    end;
end;// $ANTLR start "enumConstantName"
// JavaDecl.g:233:1: enumConstantName : Identifier ;
function TJava_JavaDecl.enumConstantName():Integer;
var
  _alt:array [0..255] of Integer;
  enumConstantName_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumConstantName_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 47) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:234:5: ( Identifier )
        // JavaDecl.g:234:9: Identifier
        begin
        match(input,Identifier,FOLLOW_Identifier_in_enumConstantName1296); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 47, enumConstantName_StartIndex);
        end;
    end;
end;// $ANTLR start "typeName"
// JavaDecl.g:237:1: typeName : ( Identifier | packageOrTypeName ''.'' Identifier );
function TJava_JavaDecl.typeName():Integer;
var
  _alt:array [0..255] of Integer;
  typeName_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeName_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 48) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:238:2: ( Identifier | packageOrTypeName ''.'' Identifier )
        _alt[62]:=2;
        _LA[62,0] := input.LA(1);

        if ( ((_LA[62,0]=Identifier)) ) then 
        begin
          _LA[62,1] := input.LA(2);

          if ( ((_LA[62,1]=EOF)) ) then 
          begin
            _alt[62]:=1;
          end
          else if ( ((_LA[62,1]=28)) ) then 
          begin
            _alt[62]:=2;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit;  
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 62, 1, input);    

          end;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 62, 0, input);    

        end;
        case (_alt[62]) of 
             1 :
                begin
                // JavaDecl.g:238:6: Identifier
                begin
                match(input,Identifier,FOLLOW_Identifier_in_typeName1312); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:239:9: packageOrTypeName ''.'' Identifier
                begin
                pushFollow(FOLLOW_packageOrTypeName_in_typeName1322);
                packageOrTypeName();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,28,FOLLOW_28_in_typeName1324); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,Identifier,FOLLOW_Identifier_in_typeName1326); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 48, typeName_StartIndex);
        end;
    end;
end;// $ANTLR start "dtype"
// JavaDecl.g:242:1: dtype : ( Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* ( ''['' '']'' )* | primitiveType ( ''['' '']'' )* );
function TJava_JavaDecl.dtype():Integer;
var
  _alt:array [0..255] of Integer;
  dtype_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    dtype_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 49) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:243:2: ( Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* ( ''['' '']'' )* | primitiveType ( ''['' '']'' )* )
        _alt[68]:=2;
        _LA[68,0] := input.LA(1);

        if ( ((_LA[68,0]=Identifier)) ) then 
        begin
          _alt[68]:=1;
        end
        else if ( (((_LA[68,0]>=55) and 
        ( _LA[68,0]<=62))) ) then 
        begin
          _alt[68]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 68, 0, input);    

        end;
        case (_alt[68]) of 
             1 :
                begin
                // JavaDecl.g:243:4: Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* ( ''['' '']'' )*
                begin
                match(input,Identifier,FOLLOW_Identifier_in_dtype1337); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaDecl.g:243:15: ( typeArguments )?
                _alt[63]:=2;
                _LA[63,0] := input.LA(1);

                if ( ((_LA[63,0]=33)) ) then 
                begin
                  _LA[63,1] := input.LA(2);

                  if ( ((_LA[63,1]=Identifier) or ((_LA[63,1]>=55) and 
                  ( _LA[63,1]<=63))) ) then 
                  begin
                    _alt[63]:=1;
                  end
                  ;
                end
                ;
                case (_alt[63]) of
                     1 :
                        begin
                        // JavaDecl.g:243:16: typeArguments
                        begin
                        pushFollow(FOLLOW_typeArguments_in_dtype1340);
                        typeArguments();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                // closureBlock:JavaDecl.g:243:32: ( ''.'' Identifier ( typeArguments )? )*
                repeat 
                    _alt[65]:=2;
                    _LA[65,0] := input.LA(1);

                    if ( ((_LA[65,0]=28)) ) then 
                    begin
                      _alt[65]:=1;
                    end

                    ;

                    case (_alt[65]) of
                	 1 :
                	    begin
                	    // JavaDecl.g:243:33: ''.'' Identifier ( typeArguments )?
                	    begin
                	    match(input,28,FOLLOW_28_in_dtype1345); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,Identifier,FOLLOW_Identifier_in_dtype1347); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:JavaDecl.g:243:48: ( typeArguments )?
                	    _alt[64]:=2;
                	    _LA[64,0] := input.LA(1);

                	    if ( ((_LA[64,0]=33)) ) then 
                	    begin
                	      _LA[64,1] := input.LA(2);

                	      if ( ((_LA[64,1]=Identifier) or ((_LA[64,1]>=55) and 
                	      ( _LA[64,1]<=63))) ) then 
                	      begin
                	        _alt[64]:=1;
                	      end
                	      ;
                	    end
                	    ;
                	    case (_alt[64]) of
                	         1 :
                	            begin
                	            // JavaDecl.g:243:49: typeArguments
                	            begin
                	            pushFollow(FOLLOW_typeArguments_in_dtype1350);
                	            typeArguments();

                	            state._fsp:=state._fsp-1;
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);

                // closureBlock:JavaDecl.g:243:68: ( ''['' '']'' )*
                repeat 
                    _alt[66]:=2;
                    _LA[66,0] := input.LA(1);

                    if ( ((_LA[66,0]=41)) ) then 
                    begin
                      _alt[66]:=1;
                    end

                    ;

                    case (_alt[66]) of
                	 1 :
                	    begin
                	    // JavaDecl.g:243:69: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_dtype1358); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_dtype1360); 
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
                end;
             2 :
                begin
                // JavaDecl.g:244:4: primitiveType ( ''['' '']'' )*
                begin
                pushFollow(FOLLOW_primitiveType_in_dtype1367);
                primitiveType();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaDecl.g:244:18: ( ''['' '']'' )*
                repeat 
                    _alt[67]:=2;
                    _LA[67,0] := input.LA(1);

                    if ( ((_LA[67,0]=41)) ) then 
                    begin
                      _alt[67]:=1;
                    end

                    ;

                    case (_alt[67]) of
                	 1 :
                	    begin
                	    // JavaDecl.g:244:19: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_dtype1370); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_dtype1372); 
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
                end;

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
          memoize(input, 49, dtype_StartIndex);
        end;
    end;
end;// $ANTLR start "primitiveType"
// JavaDecl.g:247:1: primitiveType : ( ''boolean'' | ''char'' | ''byte'' | ''short'' | ''int'' | ''long'' | ''float'' | ''double'' );
function TJava_JavaDecl.primitiveType():Integer;
var
  _alt:array [0..255] of Integer;
  primitiveType_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    primitiveType_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 50) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:248:5: ( ''boolean'' | ''char'' | ''byte'' | ''short'' | ''int'' | ''long'' | ''float'' | ''double'' )
        // JavaDecl.g:
        begin
        if ( ((input.LA(1)>=55) and (input.LA(1)<=62)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


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
          memoize(input, 50, primitiveType_StartIndex);
        end;
    end;
end;// $ANTLR start "variableModifier"
// JavaDecl.g:258:1: variableModifier : ( ''final'' | annotation );
function TJava_JavaDecl.variableModifier():Integer;
var
  _alt:array [0..255] of Integer;
  variableModifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    variableModifier_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 51) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:259:2: ( ''final'' | annotation )
        _alt[69]:=2;
        _LA[69,0] := input.LA(1);

        if ( ((_LA[69,0]=49)) ) then 
        begin
          _alt[69]:=1;
        end
        else if ( ((_LA[69,0]=68)) ) then 
        begin
          _alt[69]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 69, 0, input);    

        end;
        case (_alt[69]) of 
             1 :
                begin
                // JavaDecl.g:259:4: ''final''
                begin
                match(input,49,FOLLOW_49_in_variableModifier1460); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:260:9: annotation
                begin
                pushFollow(FOLLOW_annotation_in_variableModifier1470);
                TJavaParser(gJava).annotation();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 51, variableModifier_StartIndex);
        end;
    end;
end;// $ANTLR start "typeArguments"
// JavaDecl.g:263:1: typeArguments : ''<'' typeArgument ( '','' typeArgument )* ''>'' ;
function TJava_JavaDecl.typeArguments():Integer;
var
  _alt:array [0..255] of Integer;
  typeArguments_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeArguments_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 52) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:264:2: ( ''<'' typeArgument ( '','' typeArgument )* ''>'' )
        // JavaDecl.g:264:4: ''<'' typeArgument ( '','' typeArgument )* ''>''
        begin
        match(input,33,FOLLOW_33_in_typeArguments1481); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_typeArgument_in_typeArguments1483);
        typeArgument();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:264:21: ( '','' typeArgument )*
        repeat 
            _alt[70]:=2;
            _LA[70,0] := input.LA(1);

            if ( ((_LA[70,0]=34)) ) then 
            begin
              _alt[70]:=1;
            end

            ;

            case (_alt[70]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:264:22: '','' typeArgument
        	    begin
        	    match(input,34,FOLLOW_34_in_typeArguments1486); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_typeArgument_in_typeArguments1488);
        	    typeArgument();

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

        match(input,35,FOLLOW_35_in_typeArguments1492); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 52, typeArguments_StartIndex);
        end;
    end;
end;// $ANTLR start "typeArgument"
// JavaDecl.g:267:1: typeArgument : ( dtype | ''?'' ( ( ''extends'' | ''super'' ) dtype )? );
function TJava_JavaDecl.typeArgument():Integer;
var
  _alt:array [0..255] of Integer;
  typeArgument_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    typeArgument_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 53) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:268:2: ( dtype | ''?'' ( ( ''extends'' | ''super'' ) dtype )? )
        _alt[72]:=2;
        _LA[72,0] := input.LA(1);

        if ( ((_LA[72,0]=Identifier) or ((_LA[72,0]>=55) and 
        ( _LA[72,0]<=62))) ) then 
        begin
          _alt[72]:=1;
        end
        else if ( ((_LA[72,0]=63)) ) then 
        begin
          _alt[72]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 72, 0, input);    

        end;
        case (_alt[72]) of 
             1 :
                begin
                // JavaDecl.g:268:4: dtype
                begin
                pushFollow(FOLLOW_dtype_in_typeArgument1504);
                dtype();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaDecl.g:269:4: ''?'' ( ( ''extends'' | ''super'' ) dtype )?
                begin
                match(input,63,FOLLOW_63_in_typeArgument1509); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaDecl.g:269:8: ( ( ''extends'' | ''super'' ) dtype )?
                _alt[71]:=2;
                _LA[71,0] := input.LA(1);

                if ( ((_LA[71,0]=31) or (_LA[71,0]=64)) ) then 
                begin
                  _alt[71]:=1;
                end
                ;
                case (_alt[71]) of
                     1 :
                        begin
                        // JavaDecl.g:269:9: ( ''extends'' | ''super'' ) dtype
                        begin
                        if ( (input.LA(1)=31) or (input.LA(1)=64) ) then
                        begin
                            input.consume();
                            state.errorRecovery:=false;state.failed:=false;
                        end
                        else 
                        begin
                            if (state.backtracking>0) then 
                            begin 
                              state.failed:=true; 
                              Exit;  
                            end;
                            raise EMismatchedSetException.CreateWithBitset(nil, input);
                        end;

                        pushFollow(FOLLOW_dtype_in_typeArgument1520);
                        dtype();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;

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
          memoize(input, 53, typeArgument_StartIndex);
        end;
    end;
end;// $ANTLR start "qualifiedNameList"
// JavaDecl.g:272:1: qualifiedNameList : qualifiedName ( '','' qualifiedName )* ;
function TJava_JavaDecl.qualifiedNameList():Integer;
var
  _alt:array [0..255] of Integer;
  qualifiedNameList_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    qualifiedNameList_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 54) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:273:2: ( qualifiedName ( '','' qualifiedName )* )
        // JavaDecl.g:273:4: qualifiedName ( '','' qualifiedName )*
        begin
        pushFollow(FOLLOW_qualifiedName_in_qualifiedNameList1534);
        qualifiedName();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:273:18: ( '','' qualifiedName )*
        repeat 
            _alt[73]:=2;
            _LA[73,0] := input.LA(1);

            if ( ((_LA[73,0]=34)) ) then 
            begin
              _alt[73]:=1;
            end

            ;

            case (_alt[73]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:273:19: '','' qualifiedName
        	    begin
        	    match(input,34,FOLLOW_34_in_qualifiedNameList1537); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_qualifiedName_in_qualifiedNameList1539);
        	    qualifiedName();

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
          memoize(input, 54, qualifiedNameList_StartIndex);
        end;
    end;
end;// $ANTLR start "formalParameters"
// JavaDecl.g:276:1: formalParameters : ''('' ( formalParameterDecls )? '')'' ;
function TJava_JavaDecl.formalParameters():Integer;
var
  _alt:array [0..255] of Integer;
  formalParameters_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    formalParameters_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 55) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:277:2: ( ''('' ( formalParameterDecls )? '')'' )
        // JavaDecl.g:277:4: ''('' ( formalParameterDecls )? '')''
        begin
        match(input,65,FOLLOW_65_in_formalParameters1553); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:277:8: ( formalParameterDecls )?
        _alt[74]:=2;
        _LA[74,0] := input.LA(1);

        if ( ((_LA[74,0]=Identifier) or (_LA[74,0]=49) or ((_LA[74,0]>=55) and 
        ( _LA[74,0]<=62)) or (_LA[74,0]=68)) ) then 
        begin
          _alt[74]:=1;
        end
        ;
        case (_alt[74]) of
             1 :
                begin
                // JavaDecl.g:0:0: formalParameterDecls
                begin
                pushFollow(FOLLOW_formalParameterDecls_in_formalParameters1555);
                formalParameterDecls();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,66,FOLLOW_66_in_formalParameters1558); 
        if (state.failed) then
        begin
          Exit;
        end;

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
          memoize(input, 55, formalParameters_StartIndex);
        end;
    end;
end;// $ANTLR start "formalParameterDecls"
// JavaDecl.g:280:1: formalParameterDecls : ( variableModifier )* dtype ( formalParameterDeclsRest )? ;
function TJava_JavaDecl.formalParameterDecls():Integer;
var
  _alt:array [0..255] of Integer;
  formalParameterDecls_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    formalParameterDecls_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 56) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:281:2: ( ( variableModifier )* dtype ( formalParameterDeclsRest )? )
        // JavaDecl.g:281:4: ( variableModifier )* dtype ( formalParameterDeclsRest )?
        begin
        // closureBlock:JavaDecl.g:281:4: ( variableModifier )*
        repeat 
            _alt[75]:=2;
            _LA[75,0] := input.LA(1);

            if ( ((_LA[75,0]=49) or (_LA[75,0]=68)) ) then 
            begin
              _alt[75]:=1;
            end

            ;

            case (_alt[75]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:0:0: variableModifier
        	    begin
        	    pushFollow(FOLLOW_variableModifier_in_formalParameterDecls1570);
        	    variableModifier();

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

        pushFollow(FOLLOW_dtype_in_formalParameterDecls1573);
        dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaDecl.g:281:28: ( formalParameterDeclsRest )?
        _alt[76]:=2;
        _LA[76,0] := input.LA(1);

        if ( ((_LA[76,0]=Identifier) or (_LA[76,0]=67)) ) then 
        begin
          _alt[76]:=1;
        end
        ;
        case (_alt[76]) of
             1 :
                begin
                // JavaDecl.g:0:0: formalParameterDeclsRest
                begin
                pushFollow(FOLLOW_formalParameterDeclsRest_in_formalParameterDecls1575);
                formalParameterDeclsRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


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
          memoize(input, 56, formalParameterDecls_StartIndex);
        end;
    end;
end;// $ANTLR start "formalParameterDeclsRest"
// JavaDecl.g:284:1: formalParameterDeclsRest : ( variableDeclaratorId ( '','' formalParameterDecls )? | ''...'' variableDeclaratorId );
function TJava_JavaDecl.formalParameterDeclsRest():Integer;
var
  _alt:array [0..255] of Integer;
  formalParameterDeclsRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    formalParameterDeclsRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 57) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaDecl.g:285:2: ( variableDeclaratorId ( '','' formalParameterDecls )? | ''...'' variableDeclaratorId )
        _alt[78]:=2;
        _LA[78,0] := input.LA(1);

        if ( ((_LA[78,0]=Identifier)) ) then 
        begin
          _alt[78]:=1;
        end
        else if ( ((_LA[78,0]=67)) ) then 
        begin
          _alt[78]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 78, 0, input);    

        end;
        case (_alt[78]) of 
             1 :
                begin
                // JavaDecl.g:285:4: variableDeclaratorId ( '','' formalParameterDecls )?
                begin
                pushFollow(FOLLOW_variableDeclaratorId_in_formalParameterDeclsRest1588);
                variableDeclaratorId();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaDecl.g:285:25: ( '','' formalParameterDecls )?
                _alt[77]:=2;
                _LA[77,0] := input.LA(1);

                if ( ((_LA[77,0]=34)) ) then 
                begin
                  _alt[77]:=1;
                end
                ;
                case (_alt[77]) of
                     1 :
                        begin
                        // JavaDecl.g:285:26: '','' formalParameterDecls
                        begin
                        match(input,34,FOLLOW_34_in_formalParameterDeclsRest1591); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_formalParameterDecls_in_formalParameterDeclsRest1593);
                        formalParameterDecls();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // JavaDecl.g:286:6: ''...'' variableDeclaratorId
                begin
                match(input,67,FOLLOW_67_in_formalParameterDeclsRest1602); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_variableDeclaratorId_in_formalParameterDeclsRest1604);
                variableDeclaratorId();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

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
          memoize(input, 57, formalParameterDeclsRest_StartIndex);
        end;
    end;
end;// $ANTLR start "qualifiedName"
// JavaDecl.g:289:1: qualifiedName : Identifier ( ''.'' Identifier )* ;
function TJava_JavaDecl.qualifiedName():Integer;
var
  _alt:array [0..255] of Integer;
  qualifiedName_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    qualifiedName_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 58) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaDecl.g:290:2: ( Identifier ( ''.'' Identifier )* )
        // JavaDecl.g:290:4: Identifier ( ''.'' Identifier )*
        begin
        match(input,Identifier,FOLLOW_Identifier_in_qualifiedName1616); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaDecl.g:290:15: ( ''.'' Identifier )*
        repeat 
            _alt[79]:=2;
            _LA[79,0] := input.LA(1);

            if ( ((_LA[79,0]=28)) ) then 
            begin
              _alt[79]:=1;
            end

            ;

            case (_alt[79]) of
        	 1 :
        	    begin
        	    // JavaDecl.g:290:16: ''.'' Identifier
        	    begin
        	    match(input,28,FOLLOW_28_in_qualifiedName1619); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,Identifier,FOLLOW_Identifier_in_qualifiedName1621); 
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
          memoize(input, 58, qualifiedName_StartIndex);
        end;
    end;
end;// $ANTLR start "synpred34_JavaDecl"
function TJava_JavaDecl.synpred34_JavaDecl_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaDecl.g:96:4: ( methodDeclaration )
    // JavaDecl.g:96:4: methodDeclaration
    begin
    pushFollow(FOLLOW_methodDeclaration_in_synpred34_JavaDecl490);
    methodDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred34_JavaDecl// $ANTLR start "synpred35_JavaDecl"
function TJava_JavaDecl.synpred35_JavaDecl_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaDecl.g:97:4: ( fieldDeclaration )
    // JavaDecl.g:97:4: fieldDeclaration
    begin
    pushFollow(FOLLOW_fieldDeclaration_in_synpred35_JavaDecl495);
    fieldDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred35_JavaDecl// $ANTLR start "synpred37_JavaDecl"
function TJava_JavaDecl.synpred37_JavaDecl_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaDecl.g:99:4: ( Identifier constructorDeclaratorRest )
    // JavaDecl.g:99:4: Identifier constructorDeclaratorRest
    begin
    match(input,Identifier,FOLLOW_Identifier_in_synpred37_JavaDecl509); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_constructorDeclaratorRest_in_synpred37_JavaDecl511);
    constructorDeclaratorRest();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred37_JavaDecl

function TJava_JavaDecl.synpred34_JavaDecl():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred34_JavaDecl_fragment(); // can never throw exception
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
function TJava_JavaDecl.synpred37_JavaDecl():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred37_JavaDecl_fragment(); // can never throw exception
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
function TJava_JavaDecl.synpred35_JavaDecl():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred35_JavaDecl_fragment(); // can never throw exception
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



function TJava_JavaDecl.getDfa32:IDFA;
begin
  if not Assigned(dfa32) then
    dfa32:=TAntlrDFA32.Create(self);
  Result:=dfa32;  
end;

constructor TJava_JavaDecl.TAntlrDFA32.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=32;
  feot:=unpackEncodedString('\14\uffff');
  feof:=unpackEncodedString('\14\uffff');

  FMinc:=unpackEncodedString('\1\4\1\uffff\2\0\10\uffff');

  FMaxc:=unpackEncodedString('\1\104\1\uffff\2\0\10\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\2\uffff\1\4\1\6\1\uffff\1\7'+
    '\1\uffff\1\2\1\3\1\5');
  fspecial:=unpackEncodedString('\2\uffff\1\0\1\1\10\uffff');
  AddTransition(unpackEncodedString('\1\2\1\7\30\uffff\1\7\2\uffff\1\1\5'+
  '\uffff\1\5\1\4\16\uffff\10\3\5\uffff\1\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaDecl.TAntlrDFA32.getDescription():string;
begin
  Result:='94:1: memberDecl : ( genericMethodOrConstructorDecl | methodDeclaration | fieldD'+
  'eclaration | ''void'' Identifier voidMethodDeclaratorRest | Identifier constructor'+
  'DeclaratorRest | interfaceDeclaration | classDeclaration );';
end;


function TJava_JavaDecl.TAntlrDFA32.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaDecl(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[32,2] := input.LA(1);

		         
		        _index['32_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred34_JavaDecl()) ) then 
		        begin 
		          s := 9;
		        end

		        else if ( (synpred35_JavaDecl()) ) then 
		        begin 
		          s := 10;
		        end

		        else if ( (synpred37_JavaDecl()) ) then 
		        begin 
		          s := 11;
		        end
		        ;

		         
		        input.seek(_index['32_2']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[32,3] := input.LA(1);

		         
		        _index['32_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred34_JavaDecl()) ) then 
		        begin 
		          s := 9;
		        end

		        else if ( (synpred35_JavaDecl()) ) then 
		        begin 
		          s := 10;
		        end
		        ;

		         
		        input.seek(_index['32_3']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 32, _s, input);
    error(nvae);
    raise nvae;
  end;
end;

 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.