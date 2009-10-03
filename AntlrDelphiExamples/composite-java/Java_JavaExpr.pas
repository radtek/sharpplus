// $ANTLR 3.2 10 03, 2009 16:05:49 JavaExpr.g 2009-10-03 16:52:10
unit Java_JavaExpr;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

              
type
  TJava_JavaExpr = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_65_in_parExpression22:IBitSet;
    FOLLOW_expression_in_parExpression24:IBitSet;
    FOLLOW_66_in_parExpression26:IBitSet;
    FOLLOW_expression_in_expressionList43:IBitSet;
    FOLLOW_34_in_expressionList46:IBitSet;
    FOLLOW_expression_in_expressionList48:IBitSet;
    FOLLOW_expression_in_statementExpression64:IBitSet;
    FOLLOW_expression_in_constantExpression76:IBitSet;
    FOLLOW_conditionalExpression_in_expression88:IBitSet;
    FOLLOW_assignmentOperator_in_expression91:IBitSet;
    FOLLOW_expression_in_expression93:IBitSet;
    FOLLOW_44_in_assignmentOperator107:IBitSet;
    FOLLOW_70_in_assignmentOperator117:IBitSet;
    FOLLOW_71_in_assignmentOperator127:IBitSet;
    FOLLOW_72_in_assignmentOperator137:IBitSet;
    FOLLOW_73_in_assignmentOperator147:IBitSet;
    FOLLOW_74_in_assignmentOperator157:IBitSet;
    FOLLOW_75_in_assignmentOperator167:IBitSet;
    FOLLOW_76_in_assignmentOperator177:IBitSet;
    FOLLOW_77_in_assignmentOperator187:IBitSet;
    FOLLOW_33_in_assignmentOperator197:IBitSet;
    FOLLOW_33_in_assignmentOperator199:IBitSet;
    FOLLOW_44_in_assignmentOperator201:IBitSet;
    FOLLOW_35_in_assignmentOperator211:IBitSet;
    FOLLOW_35_in_assignmentOperator213:IBitSet;
    FOLLOW_44_in_assignmentOperator215:IBitSet;
    FOLLOW_35_in_assignmentOperator225:IBitSet;
    FOLLOW_35_in_assignmentOperator227:IBitSet;
    FOLLOW_35_in_assignmentOperator229:IBitSet;
    FOLLOW_44_in_assignmentOperator231:IBitSet;
    FOLLOW_conditionalOrExpression_in_conditionalExpression247:IBitSet;
    FOLLOW_63_in_conditionalExpression251:IBitSet;
    FOLLOW_expression_in_conditionalExpression253:IBitSet;
    FOLLOW_78_in_conditionalExpression255:IBitSet;
    FOLLOW_expression_in_conditionalExpression257:IBitSet;
    FOLLOW_conditionalAndExpression_in_conditionalOrExpression276:IBitSet;
    FOLLOW_79_in_conditionalOrExpression280:IBitSet;
    FOLLOW_conditionalAndExpression_in_conditionalOrExpression282:IBitSet;
    FOLLOW_inclusiveOrExpression_in_conditionalAndExpression301:IBitSet;
    FOLLOW_80_in_conditionalAndExpression305:IBitSet;
    FOLLOW_inclusiveOrExpression_in_conditionalAndExpression307:IBitSet;
    FOLLOW_exclusiveOrExpression_in_inclusiveOrExpression326:IBitSet;
    FOLLOW_81_in_inclusiveOrExpression330:IBitSet;
    FOLLOW_exclusiveOrExpression_in_inclusiveOrExpression332:IBitSet;
    FOLLOW_andExpression_in_exclusiveOrExpression351:IBitSet;
    FOLLOW_82_in_exclusiveOrExpression355:IBitSet;
    FOLLOW_andExpression_in_exclusiveOrExpression357:IBitSet;
    FOLLOW_equalityExpression_in_andExpression376:IBitSet;
    FOLLOW_36_in_andExpression380:IBitSet;
    FOLLOW_equalityExpression_in_andExpression382:IBitSet;
    FOLLOW_instanceOfExpression_in_equalityExpression401:IBitSet;
    FOLLOW_set_in_equalityExpression405:IBitSet;
    FOLLOW_instanceOfExpression_in_equalityExpression413:IBitSet;
    FOLLOW_relationalExpression_in_instanceOfExpression432:IBitSet;
    FOLLOW_85_in_instanceOfExpression435:IBitSet;
    FOLLOW_dtype_in_instanceOfExpression437:IBitSet;
    FOLLOW_shiftExpression_in_relationalExpression455:IBitSet;
    FOLLOW_relationalOp_in_relationalExpression459:IBitSet;
    FOLLOW_shiftExpression_in_relationalExpression461:IBitSet;
    FOLLOW_33_in_relationalOp477:IBitSet;
    FOLLOW_44_in_relationalOp479:IBitSet;
    FOLLOW_35_in_relationalOp483:IBitSet;
    FOLLOW_44_in_relationalOp485:IBitSet;
    FOLLOW_33_in_relationalOp489:IBitSet;
    FOLLOW_35_in_relationalOp493:IBitSet;
    FOLLOW_additiveExpression_in_shiftExpression510:IBitSet;
    FOLLOW_shiftOp_in_shiftExpression514:IBitSet;
    FOLLOW_additiveExpression_in_shiftExpression516:IBitSet;
    FOLLOW_33_in_shiftOp540:IBitSet;
    FOLLOW_33_in_shiftOp542:IBitSet;
    FOLLOW_35_in_shiftOp546:IBitSet;
    FOLLOW_35_in_shiftOp548:IBitSet;
    FOLLOW_35_in_shiftOp550:IBitSet;
    FOLLOW_35_in_shiftOp554:IBitSet;
    FOLLOW_35_in_shiftOp556:IBitSet;
    FOLLOW_multiplicativeExpression_in_additiveExpression574:IBitSet;
    FOLLOW_set_in_additiveExpression578:IBitSet;
    FOLLOW_multiplicativeExpression_in_additiveExpression586:IBitSet;
    FOLLOW_unaryExpression_in_multiplicativeExpression605:IBitSet;
    FOLLOW_set_in_multiplicativeExpression609:IBitSet;
    FOLLOW_unaryExpression_in_multiplicativeExpression623:IBitSet;
    FOLLOW_86_in_unaryExpression643:IBitSet;
    FOLLOW_unaryExpression_in_unaryExpression645:IBitSet;
    FOLLOW_87_in_unaryExpression653:IBitSet;
    FOLLOW_unaryExpression_in_unaryExpression655:IBitSet;
    FOLLOW_90_in_unaryExpression665:IBitSet;
    FOLLOW_unaryExpression_in_unaryExpression667:IBitSet;
    FOLLOW_91_in_unaryExpression677:IBitSet;
    FOLLOW_unaryExpression_in_unaryExpression679:IBitSet;
    FOLLOW_unaryExpressionNotPlusMinus_in_unaryExpression689:IBitSet;
    FOLLOW_92_in_unaryExpressionNotPlusMinus708:IBitSet;
    FOLLOW_unaryExpression_in_unaryExpressionNotPlusMinus710:IBitSet;
    FOLLOW_93_in_unaryExpressionNotPlusMinus719:IBitSet;
    FOLLOW_unaryExpression_in_unaryExpressionNotPlusMinus721:IBitSet;
    FOLLOW_castExpression_in_unaryExpressionNotPlusMinus731:IBitSet;
    FOLLOW_primary_in_unaryExpressionNotPlusMinus741:IBitSet;
    FOLLOW_selector_in_unaryExpressionNotPlusMinus743:IBitSet;
    FOLLOW_set_in_unaryExpressionNotPlusMinus746:IBitSet;
    FOLLOW_65_in_castExpression769:IBitSet;
    FOLLOW_primitiveType_in_castExpression771:IBitSet;
    FOLLOW_66_in_castExpression773:IBitSet;
    FOLLOW_unaryExpression_in_castExpression775:IBitSet;
    FOLLOW_65_in_castExpression784:IBitSet;
    FOLLOW_dtype_in_castExpression787:IBitSet;
    FOLLOW_expression_in_castExpression791:IBitSet;
    FOLLOW_66_in_castExpression794:IBitSet;
    FOLLOW_unaryExpressionNotPlusMinus_in_castExpression796:IBitSet;
    FOLLOW_parExpression_in_primary813:IBitSet;
    FOLLOW_nonWildcardTypeArguments_in_primary823:IBitSet;
    FOLLOW_explicitGenericInvocationSuffix_in_primary834:IBitSet;
    FOLLOW_94_in_primary838:IBitSet;
    FOLLOW_arguments_in_primary840:IBitSet;
    FOLLOW_94_in_primary851:IBitSet;
    FOLLOW_28_in_primary854:IBitSet;
    FOLLOW_Identifier_in_primary856:IBitSet;
    FOLLOW_identifierSuffix_in_primary861:IBitSet;
    FOLLOW_64_in_primary873:IBitSet;
    FOLLOW_superSuffix_in_primary875:IBitSet;
    FOLLOW_literal_in_primary885:IBitSet;
    FOLLOW_95_in_primary895:IBitSet;
    FOLLOW_creator_in_primary897:IBitSet;
    FOLLOW_Identifier_in_primary907:IBitSet;
    FOLLOW_28_in_primary910:IBitSet;
    FOLLOW_Identifier_in_primary912:IBitSet;
    FOLLOW_identifierSuffix_in_primary917:IBitSet;
    FOLLOW_primitiveType_in_primary929:IBitSet;
    FOLLOW_41_in_primary932:IBitSet;
    FOLLOW_42_in_primary934:IBitSet;
    FOLLOW_28_in_primary938:IBitSet;
    FOLLOW_30_in_primary940:IBitSet;
    FOLLOW_40_in_primary950:IBitSet;
    FOLLOW_28_in_primary952:IBitSet;
    FOLLOW_30_in_primary954:IBitSet;
    FOLLOW_41_in_identifierSuffix966:IBitSet;
    FOLLOW_42_in_identifierSuffix968:IBitSet;
    FOLLOW_28_in_identifierSuffix972:IBitSet;
    FOLLOW_30_in_identifierSuffix974:IBitSet;
    FOLLOW_41_in_identifierSuffix980:IBitSet;
    FOLLOW_expression_in_identifierSuffix982:IBitSet;
    FOLLOW_42_in_identifierSuffix984:IBitSet;
    FOLLOW_arguments_in_identifierSuffix997:IBitSet;
    FOLLOW_28_in_identifierSuffix1007:IBitSet;
    FOLLOW_30_in_identifierSuffix1009:IBitSet;
    FOLLOW_28_in_identifierSuffix1019:IBitSet;
    FOLLOW_explicitGenericInvocation_in_identifierSuffix1021:IBitSet;
    FOLLOW_28_in_identifierSuffix1031:IBitSet;
    FOLLOW_94_in_identifierSuffix1033:IBitSet;
    FOLLOW_28_in_identifierSuffix1043:IBitSet;
    FOLLOW_64_in_identifierSuffix1045:IBitSet;
    FOLLOW_arguments_in_identifierSuffix1047:IBitSet;
    FOLLOW_28_in_identifierSuffix1057:IBitSet;
    FOLLOW_95_in_identifierSuffix1059:IBitSet;
    FOLLOW_nonWildcardTypeArguments_in_identifierSuffix1062:IBitSet;
    FOLLOW_innerCreator_in_identifierSuffix1066:IBitSet;
    FOLLOW_nonWildcardTypeArguments_in_creator1078:IBitSet;
    FOLLOW_createdName_in_creator1081:IBitSet;
    FOLLOW_arrayCreatorRest_in_creator1092:IBitSet;
    FOLLOW_classCreatorRest_in_creator1096:IBitSet;
    FOLLOW_Identifier_in_createdName1108:IBitSet;
    FOLLOW_typeArguments_in_createdName1110:IBitSet;
    FOLLOW_28_in_createdName1122:IBitSet;
    FOLLOW_Identifier_in_createdName1124:IBitSet;
    FOLLOW_typeArguments_in_createdName1126:IBitSet;
    FOLLOW_primitiveType_in_createdName1137:IBitSet;
    FOLLOW_Identifier_in_innerCreator1149:IBitSet;
    FOLLOW_classCreatorRest_in_innerCreator1151:IBitSet;
    FOLLOW_41_in_arrayCreatorRest1162:IBitSet;
    FOLLOW_42_in_arrayCreatorRest1176:IBitSet;
    FOLLOW_41_in_arrayCreatorRest1179:IBitSet;
    FOLLOW_42_in_arrayCreatorRest1181:IBitSet;
    FOLLOW_arrayInitializer_in_arrayCreatorRest1185:IBitSet;
    FOLLOW_expression_in_arrayCreatorRest1199:IBitSet;
    FOLLOW_42_in_arrayCreatorRest1201:IBitSet;
    FOLLOW_41_in_arrayCreatorRest1204:IBitSet;
    FOLLOW_expression_in_arrayCreatorRest1206:IBitSet;
    FOLLOW_42_in_arrayCreatorRest1208:IBitSet;
    FOLLOW_41_in_arrayCreatorRest1213:IBitSet;
    FOLLOW_42_in_arrayCreatorRest1215:IBitSet;
    FOLLOW_arguments_in_classCreatorRest1238:IBitSet;
    FOLLOW_classBody_in_classCreatorRest1240:IBitSet;
    FOLLOW_nonWildcardTypeArguments_in_explicitGenericInvocation1253:IBitSet;
    FOLLOW_explicitGenericInvocationSuffix_in_explicitGenericInvocation1255:IBitSet;
    FOLLOW_33_in_nonWildcardTypeArguments1267:IBitSet;
    FOLLOW_typeList_in_nonWildcardTypeArguments1269:IBitSet;
    FOLLOW_35_in_nonWildcardTypeArguments1271:IBitSet;
    FOLLOW_64_in_explicitGenericInvocationSuffix1283:IBitSet;
    FOLLOW_superSuffix_in_explicitGenericInvocationSuffix1285:IBitSet;
    FOLLOW_Identifier_in_explicitGenericInvocationSuffix1292:IBitSet;
    FOLLOW_arguments_in_explicitGenericInvocationSuffix1294:IBitSet;
    FOLLOW_28_in_selector1306:IBitSet;
    FOLLOW_Identifier_in_selector1308:IBitSet;
    FOLLOW_arguments_in_selector1311:IBitSet;
    FOLLOW_28_in_selector1320:IBitSet;
    FOLLOW_94_in_selector1322:IBitSet;
    FOLLOW_28_in_selector1329:IBitSet;
    FOLLOW_64_in_selector1331:IBitSet;
    FOLLOW_superSuffix_in_selector1333:IBitSet;
    FOLLOW_28_in_selector1340:IBitSet;
    FOLLOW_95_in_selector1342:IBitSet;
    FOLLOW_nonWildcardTypeArguments_in_selector1345:IBitSet;
    FOLLOW_innerCreator_in_selector1349:IBitSet;
    FOLLOW_41_in_selector1356:IBitSet;
    FOLLOW_expression_in_selector1358:IBitSet;
    FOLLOW_42_in_selector1360:IBitSet;
    FOLLOW_arguments_in_superSuffix1372:IBitSet;
    FOLLOW_28_in_superSuffix1379:IBitSet;
    FOLLOW_Identifier_in_superSuffix1381:IBitSet;
    FOLLOW_arguments_in_superSuffix1384:IBitSet;
    FOLLOW_65_in_arguments1400:IBitSet;
    FOLLOW_expressionList_in_arguments1402:IBitSet;
    FOLLOW_66_in_arguments1405:IBitSet;
    FOLLOW_integerLiteral_in_literal1421:IBitSet;
    FOLLOW_FloatingPointLiteral_in_literal1431:IBitSet;
    FOLLOW_CharacterLiteral_in_literal1441:IBitSet;
    FOLLOW_StringLiteral_in_literal1451:IBitSet;
    FOLLOW_booleanLiteral_in_literal1461:IBitSet;
    FOLLOW_96_in_literal1471:IBitSet;
    FOLLOW_set_in_integerLiteral0:IBitSet;
    FOLLOW_set_in_booleanLiteral0:IBitSet;
    FOLLOW_assignmentOperator_in_synpred2_JavaExpr91:IBitSet;
    FOLLOW_expression_in_synpred2_JavaExpr93:IBitSet;
    FOLLOW_shiftOp_in_synpred27_JavaExpr514:IBitSet;
    FOLLOW_additiveExpression_in_synpred27_JavaExpr516:IBitSet;
    FOLLOW_castExpression_in_synpred41_JavaExpr731:IBitSet;
    FOLLOW_65_in_synpred45_JavaExpr769:IBitSet;
    FOLLOW_primitiveType_in_synpred45_JavaExpr771:IBitSet;
    FOLLOW_66_in_synpred45_JavaExpr773:IBitSet;
    FOLLOW_unaryExpression_in_synpred45_JavaExpr775:IBitSet;
    FOLLOW_dtype_in_synpred46_JavaExpr787:IBitSet;
    FOLLOW_28_in_synpred50_JavaExpr854:IBitSet;
    FOLLOW_Identifier_in_synpred50_JavaExpr856:IBitSet;
    FOLLOW_identifierSuffix_in_synpred51_JavaExpr861:IBitSet;
    FOLLOW_28_in_synpred56_JavaExpr910:IBitSet;
    FOLLOW_Identifier_in_synpred56_JavaExpr912:IBitSet;
    FOLLOW_identifierSuffix_in_synpred57_JavaExpr917:IBitSet;
    FOLLOW_41_in_synpred63_JavaExpr980:IBitSet;
    FOLLOW_expression_in_synpred63_JavaExpr982:IBitSet;
    FOLLOW_42_in_synpred63_JavaExpr984:IBitSet;
    FOLLOW_41_in_synpred79_JavaExpr1204:IBitSet;
    FOLLOW_expression_in_synpred79_JavaExpr1206:IBitSet;
    FOLLOW_42_in_synpred79_JavaExpr1208:IBitSet;
    

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


    // $ANTLR start "parExpression"
    // JavaExpr.g:6:1: parExpression : ''('' expression '')'' ;
    function parExpression():Integer;
    // $ANTLR end parExpression


    // $ANTLR start "expressionList"
    // JavaExpr.g:10:1: expressionList : expression ( '','' expression )* ;
    function expressionList():Integer;
    // $ANTLR end expressionList


    // $ANTLR start "statementExpression"
    // JavaExpr.g:14:1: statementExpression : expression ;
    function statementExpression():Integer;
    // $ANTLR end statementExpression


    // $ANTLR start "constantExpression"
    // JavaExpr.g:18:1: constantExpression : expression ;
    function constantExpression():Integer;
    // $ANTLR end constantExpression


    // $ANTLR start "expression"
    // JavaExpr.g:22:1: expression : conditionalExpression ( assignmentOperator expression )? ;
    function expression():Integer;
    // $ANTLR end expression


    // $ANTLR start "assignmentOperator"
    // JavaExpr.g:26:1: assignmentOperator : ( ''='' | ''+='' | ''-='' | ''*='' | ''/='' | ''&='' | ''|='' | ''^='' | ''%='' | ''<'' ''<'' ''='' | ''>'' ''>'' ''='' | ''>'' ''>'' ''>'' ''='' );
    function assignmentOperator():Integer;
    // $ANTLR end assignmentOperator


    // $ANTLR start "conditionalExpression"
    // JavaExpr.g:41:1: conditionalExpression : conditionalOrExpression ( ''?'' expression '':'' expression )? ;
    function conditionalExpression():Integer;
    // $ANTLR end conditionalExpression


    // $ANTLR start "conditionalOrExpression"
    // JavaExpr.g:45:1: conditionalOrExpression : conditionalAndExpression ( ''||'' conditionalAndExpression )* ;
    function conditionalOrExpression():Integer;
    // $ANTLR end conditionalOrExpression


    // $ANTLR start "conditionalAndExpression"
    // JavaExpr.g:49:1: conditionalAndExpression : inclusiveOrExpression ( ''&&'' inclusiveOrExpression )* ;
    function conditionalAndExpression():Integer;
    // $ANTLR end conditionalAndExpression


    // $ANTLR start "inclusiveOrExpression"
    // JavaExpr.g:53:1: inclusiveOrExpression : exclusiveOrExpression ( ''|'' exclusiveOrExpression )* ;
    function inclusiveOrExpression():Integer;
    // $ANTLR end inclusiveOrExpression


    // $ANTLR start "exclusiveOrExpression"
    // JavaExpr.g:57:1: exclusiveOrExpression : andExpression ( ''^'' andExpression )* ;
    function exclusiveOrExpression():Integer;
    // $ANTLR end exclusiveOrExpression


    // $ANTLR start "andExpression"
    // JavaExpr.g:61:1: andExpression : equalityExpression ( ''&'' equalityExpression )* ;
    function andExpression():Integer;
    // $ANTLR end andExpression


    // $ANTLR start "equalityExpression"
    // JavaExpr.g:65:1: equalityExpression : instanceOfExpression ( ( ''=='' | ''!='' ) instanceOfExpression )* ;
    function equalityExpression():Integer;
    // $ANTLR end equalityExpression


    // $ANTLR start "instanceOfExpression"
    // JavaExpr.g:69:1: instanceOfExpression : relationalExpression ( ''instanceof'' dtype )? ;
    function instanceOfExpression():Integer;
    // $ANTLR end instanceOfExpression


    // $ANTLR start "relationalExpression"
    // JavaExpr.g:73:1: relationalExpression : shiftExpression ( relationalOp shiftExpression )* ;
    function relationalExpression():Integer;
    // $ANTLR end relationalExpression


    // $ANTLR start "relationalOp"
    // JavaExpr.g:77:1: relationalOp : ( ''<'' ''='' | ''>'' ''='' | ''<'' | ''>'' ) ;
    function relationalOp():Integer;
    // $ANTLR end relationalOp


    // $ANTLR start "shiftExpression"
    // JavaExpr.g:81:1: shiftExpression : additiveExpression ( shiftOp additiveExpression )* ;
    function shiftExpression():Integer;
    // $ANTLR end shiftExpression


    // $ANTLR start "shiftOp"
    // JavaExpr.g:86:1: shiftOp : ( ''<'' ''<'' | ''>'' ''>'' ''>'' | ''>'' ''>'' ) ;
    function shiftOp():Integer;
    // $ANTLR end shiftOp


    // $ANTLR start "additiveExpression"
    // JavaExpr.g:91:1: additiveExpression : multiplicativeExpression ( ( ''+'' | ''-'' ) multiplicativeExpression )* ;
    function additiveExpression():Integer;
    // $ANTLR end additiveExpression


    // $ANTLR start "multiplicativeExpression"
    // JavaExpr.g:95:1: multiplicativeExpression : unaryExpression ( ( ''*'' | ''/'' | ''%'' ) unaryExpression )* ;
    function multiplicativeExpression():Integer;
    // $ANTLR end multiplicativeExpression


    // $ANTLR start "unaryExpression"
    // JavaExpr.g:99:1: unaryExpression : ( ''+'' unaryExpression | ''-'' unaryExpression | ''++'' unaryExpression | ''--'' unaryExpression | unaryExpressionNotPlusMinus );
    function unaryExpression():Integer;
    // $ANTLR end unaryExpression


    // $ANTLR start "unaryExpressionNotPlusMinus"
    // JavaExpr.g:107:1: unaryExpressionNotPlusMinus : ( ''~'' unaryExpression | ''!'' unaryExpression | castExpression | primary ( selector )* ( ''++'' | ''--'' )? );
    function unaryExpressionNotPlusMinus():Integer;
    // $ANTLR end unaryExpressionNotPlusMinus


    // $ANTLR start "castExpression"
    // JavaExpr.g:114:1: castExpression : ( ''('' primitiveType '')'' unaryExpression | ''('' ( dtype | expression ) '')'' unaryExpressionNotPlusMinus );
    function castExpression():Integer;
    // $ANTLR end castExpression


    // $ANTLR start "primary"
    // JavaExpr.g:119:1: primary : ( parExpression | nonWildcardTypeArguments ( explicitGenericInvocationSuffix | ''this'' arguments ) | ''this'' ( ''.'' Identifier )* ( identifierSuffix )? | ''super'' superSuffix | literal | ''new'' creator | Identifier ( ''.'' Identifier )* ( identifierSuffix )? | primitiveType ( ''['' '']'' )* ''.'' ''class'' | ''void'' ''.'' ''class'' );
    function primary():Integer;
    // $ANTLR end primary


    // $ANTLR start "identifierSuffix"
    // JavaExpr.g:132:1: identifierSuffix : ( ( ''['' '']'' )+ ''.'' ''class'' | ( ''['' expression '']'' )+ | arguments | ''.'' ''class'' | ''.'' explicitGenericInvocation | ''.'' ''this'' | ''.'' ''super'' arguments | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator );
    function identifierSuffix():Integer;
    // $ANTLR end identifierSuffix


    // $ANTLR start "creator"
    // JavaExpr.g:143:1: creator : ( nonWildcardTypeArguments )? createdName ( arrayCreatorRest | classCreatorRest ) ;
    function creator():Integer;
    // $ANTLR end creator


    // $ANTLR start "createdName"
    // JavaExpr.g:148:1: createdName : ( Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* | primitiveType );
    function createdName():Integer;
    // $ANTLR end createdName


    // $ANTLR start "innerCreator"
    // JavaExpr.g:154:1: innerCreator : Identifier classCreatorRest ;
    function innerCreator():Integer;
    // $ANTLR end innerCreator


    // $ANTLR start "arrayCreatorRest"
    // JavaExpr.g:158:1: arrayCreatorRest : ''['' ( '']'' ( ''['' '']'' )* arrayInitializer | expression '']'' ( ''['' expression '']'' )* ( ''['' '']'' )* ) ;
    function arrayCreatorRest():Integer;
    // $ANTLR end arrayCreatorRest


    // $ANTLR start "classCreatorRest"
    // JavaExpr.g:165:1: classCreatorRest : arguments ( classBody )? ;
    function classCreatorRest():Integer;
    // $ANTLR end classCreatorRest


    // $ANTLR start "explicitGenericInvocation"
    // JavaExpr.g:169:1: explicitGenericInvocation : nonWildcardTypeArguments explicitGenericInvocationSuffix ;
    function explicitGenericInvocation():Integer;
    // $ANTLR end explicitGenericInvocation


    // $ANTLR start "nonWildcardTypeArguments"
    // JavaExpr.g:173:1: nonWildcardTypeArguments : ''<'' typeList ''>'' ;
    function nonWildcardTypeArguments():Integer;
    // $ANTLR end nonWildcardTypeArguments


    // $ANTLR start "explicitGenericInvocationSuffix"
    // JavaExpr.g:177:1: explicitGenericInvocationSuffix : ( ''super'' superSuffix | Identifier arguments );
    function explicitGenericInvocationSuffix():Integer;
    // $ANTLR end explicitGenericInvocationSuffix


    // $ANTLR start "selector"
    // JavaExpr.g:182:1: selector : ( ''.'' Identifier ( arguments )? | ''.'' ''this'' | ''.'' ''super'' superSuffix | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator | ''['' expression '']'' );
    function selector():Integer;
    // $ANTLR end selector


    // $ANTLR start "superSuffix"
    // JavaExpr.g:190:1: superSuffix : ( arguments | ''.'' Identifier ( arguments )? );
    function superSuffix():Integer;
    // $ANTLR end superSuffix


    // $ANTLR start "arguments"
    // JavaExpr.g:195:1: arguments : ''('' ( expressionList )? '')'' ;
    function arguments():Integer;
    // $ANTLR end arguments


    // $ANTLR start "literal"
    // JavaExpr.g:199:1: literal : ( integerLiteral | FloatingPointLiteral | CharacterLiteral | StringLiteral | booleanLiteral | ''null'' );
    function literal():Integer;
    // $ANTLR end literal


    // $ANTLR start "integerLiteral"
    // JavaExpr.g:208:1: integerLiteral : ( HexLiteral | OctalLiteral | DecimalLiteral );
    function integerLiteral():Integer;
    // $ANTLR end integerLiteral


    // $ANTLR start "booleanLiteral"
    // JavaExpr.g:214:1: booleanLiteral : ( ''true'' | ''false'' );
    function booleanLiteral():Integer;
    // $ANTLR end booleanLiteral

    // $ANTLR start "synpred2_JavaExpr"
    function synpred2_JavaExpr_fragment():Integer;
    // $ANTLR end synpred2_JavaExpr

    // $ANTLR start "synpred27_JavaExpr"
    function synpred27_JavaExpr_fragment():Integer;
    // $ANTLR end synpred27_JavaExpr

    // $ANTLR start "synpred41_JavaExpr"
    function synpred41_JavaExpr_fragment():Integer;
    // $ANTLR end synpred41_JavaExpr

    // $ANTLR start "synpred45_JavaExpr"
    function synpred45_JavaExpr_fragment():Integer;
    // $ANTLR end synpred45_JavaExpr

    // $ANTLR start "synpred46_JavaExpr"
    function synpred46_JavaExpr_fragment():Integer;
    // $ANTLR end synpred46_JavaExpr

    // $ANTLR start "synpred50_JavaExpr"
    function synpred50_JavaExpr_fragment():Integer;
    // $ANTLR end synpred50_JavaExpr

    // $ANTLR start "synpred51_JavaExpr"
    function synpred51_JavaExpr_fragment():Integer;
    // $ANTLR end synpred51_JavaExpr

    // $ANTLR start "synpred56_JavaExpr"
    function synpred56_JavaExpr_fragment():Integer;
    // $ANTLR end synpred56_JavaExpr

    // $ANTLR start "synpred57_JavaExpr"
    function synpred57_JavaExpr_fragment():Integer;
    // $ANTLR end synpred57_JavaExpr

    // $ANTLR start "synpred63_JavaExpr"
    function synpred63_JavaExpr_fragment():Integer;
    // $ANTLR end synpred63_JavaExpr

    // $ANTLR start "synpred79_JavaExpr"
    function synpred79_JavaExpr_fragment():Integer;
    // $ANTLR end synpred79_JavaExpr

    // Delegated rules

    function synpred51_JavaExpr():Boolean;function synpred45_JavaExpr():Boolean;function synpred46_JavaExpr():Boolean;function synpred27_JavaExpr():Boolean;function synpred2_JavaExpr():Boolean;function synpred57_JavaExpr():Boolean;function synpred56_JavaExpr():Boolean;function synpred50_JavaExpr():Boolean;function synpred41_JavaExpr():Boolean;function synpred63_JavaExpr():Boolean;function synpred79_JavaExpr():Boolean;
  protected

     
          type TAntlrDFA2=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa2:IDFA;
        protected
          dfa2:IDFA;

     
          type TAntlrDFA3=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa3:IDFA;
        protected
          dfa3:IDFA;

     
          type TAntlrDFA14=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa14:IDFA;
        protected
          dfa14:IDFA;

     
          type TAntlrDFA21=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa21:IDFA;
        protected
          dfa21:IDFA;

     
          type TAntlrDFA22=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa22:IDFA;
        protected
          dfa22:IDFA;

     
          type TAntlrDFA26=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa26:IDFA;
        protected
          dfa26:IDFA;

     
          type TAntlrDFA28=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa28:IDFA;
        protected
          dfa28:IDFA;

     
          type TAntlrDFA34=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa34:IDFA;
        protected
          dfa34:IDFA;

     
          type TAntlrDFA32=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa32:IDFA;
        protected
          dfa32:IDFA;

     
          type TAntlrDFA42=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa42:IDFA;
        protected
          dfa42:IDFA;
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
    JavaParser, 
    JclHashSets;

function TJava_JavaExpr.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TJava_JavaExpr.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState; gJava:TAntlrBaseRecognizer{TJavaParser} );
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

procedure TJava_JavaExpr.InitBitsets;
begin
  FOLLOW_65_in_parExpression22 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_parExpression24 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_parExpression26 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_in_expressionList43 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_expressionList46 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_expressionList48 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_expression_in_statementExpression64 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_in_constantExpression76 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_conditionalExpression_in_expression88 := TAntlrBitSet.CreateWithBits([$0000100A00000002,$0000000000003FC0]);
  FOLLOW_assignmentOperator_in_expression91 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_expression93 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_44_in_assignmentOperator107 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_70_in_assignmentOperator117 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_71_in_assignmentOperator127 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_72_in_assignmentOperator137 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_73_in_assignmentOperator147 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_74_in_assignmentOperator157 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_75_in_assignmentOperator167 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_76_in_assignmentOperator177 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_77_in_assignmentOperator187 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_33_in_assignmentOperator197 := TAntlrBitSet.CreateWithBits([$0000000200000000]);
  FOLLOW_33_in_assignmentOperator199 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_assignmentOperator201 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_assignmentOperator211 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_assignmentOperator213 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_assignmentOperator215 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_assignmentOperator225 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_assignmentOperator227 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_assignmentOperator229 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_assignmentOperator231 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_conditionalOrExpression_in_conditionalExpression247 := TAntlrBitSet.CreateWithBits([$8000000000000002]);
  FOLLOW_63_in_conditionalExpression251 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_conditionalExpression253 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_conditionalExpression255 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_conditionalExpression257 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_conditionalAndExpression_in_conditionalOrExpression276 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000008000]);
  FOLLOW_79_in_conditionalOrExpression280 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_conditionalAndExpression_in_conditionalOrExpression282 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000008000]);
  FOLLOW_inclusiveOrExpression_in_conditionalAndExpression301 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000010000]);
  FOLLOW_80_in_conditionalAndExpression305 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_inclusiveOrExpression_in_conditionalAndExpression307 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000010000]);
  FOLLOW_exclusiveOrExpression_in_inclusiveOrExpression326 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000020000]);
  FOLLOW_81_in_inclusiveOrExpression330 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_exclusiveOrExpression_in_inclusiveOrExpression332 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000020000]);
  FOLLOW_andExpression_in_exclusiveOrExpression351 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000040000]);
  FOLLOW_82_in_exclusiveOrExpression355 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_andExpression_in_exclusiveOrExpression357 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000040000]);
  FOLLOW_equalityExpression_in_andExpression376 := TAntlrBitSet.CreateWithBits([$0000001000000002]);
  FOLLOW_36_in_andExpression380 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_equalityExpression_in_andExpression382 := TAntlrBitSet.CreateWithBits([$0000001000000002]);
  FOLLOW_instanceOfExpression_in_equalityExpression401 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000180000]);
  FOLLOW_set_in_equalityExpression405 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_instanceOfExpression_in_equalityExpression413 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000180000]);
  FOLLOW_relationalExpression_in_instanceOfExpression432 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000200000]);
  FOLLOW_85_in_instanceOfExpression435 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_dtype_in_instanceOfExpression437 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_shiftExpression_in_relationalExpression455 := TAntlrBitSet.CreateWithBits([$0000000A00000002]);
  FOLLOW_relationalOp_in_relationalExpression459 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_shiftExpression_in_relationalExpression461 := TAntlrBitSet.CreateWithBits([$0000000A00000002]);
  FOLLOW_33_in_relationalOp477 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_relationalOp479 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_relationalOp483 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_relationalOp485 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_33_in_relationalOp489 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_relationalOp493 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_additiveExpression_in_shiftExpression510 := TAntlrBitSet.CreateWithBits([$0000000A00000002]);
  FOLLOW_shiftOp_in_shiftExpression514 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_additiveExpression_in_shiftExpression516 := TAntlrBitSet.CreateWithBits([$0000000A00000002]);
  FOLLOW_33_in_shiftOp540 := TAntlrBitSet.CreateWithBits([$0000000200000000]);
  FOLLOW_33_in_shiftOp542 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_shiftOp546 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_shiftOp548 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_shiftOp550 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_shiftOp554 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_shiftOp556 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_multiplicativeExpression_in_additiveExpression574 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000C00000]);
  FOLLOW_set_in_additiveExpression578 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_multiplicativeExpression_in_additiveExpression586 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000C00000]);
  FOLLOW_unaryExpression_in_multiplicativeExpression605 := TAntlrBitSet.CreateWithBits([$0000000020000002,$0000000003000000]);
  FOLLOW_set_in_multiplicativeExpression609 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_multiplicativeExpression623 := TAntlrBitSet.CreateWithBits([$0000000020000002,$0000000003000000]);
  FOLLOW_86_in_unaryExpression643 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_unaryExpression645 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_87_in_unaryExpression653 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_unaryExpression655 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_90_in_unaryExpression665 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_unaryExpression667 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_91_in_unaryExpression677 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_unaryExpression679 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_unaryExpressionNotPlusMinus_in_unaryExpression689 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_92_in_unaryExpressionNotPlusMinus708 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_unaryExpressionNotPlusMinus710 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_93_in_unaryExpressionNotPlusMinus719 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_unaryExpressionNotPlusMinus721 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_castExpression_in_unaryExpressionNotPlusMinus731 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_primary_in_unaryExpressionNotPlusMinus741 := TAntlrBitSet.CreateWithBits([$0000020010000002,$000000000C000000]);
  FOLLOW_selector_in_unaryExpressionNotPlusMinus743 := TAntlrBitSet.CreateWithBits([$0000020010000002,$000000000C000000]);
  FOLLOW_set_in_unaryExpressionNotPlusMinus746 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_65_in_castExpression769 := TAntlrBitSet.CreateWithBits([$7F80000000000000]);
  FOLLOW_primitiveType_in_castExpression771 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_castExpression773 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_castExpression775 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_65_in_castExpression784 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_dtype_in_castExpression787 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_expression_in_castExpression791 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_castExpression794 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpressionNotPlusMinus_in_castExpression796 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_parExpression_in_primary813 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_nonWildcardTypeArguments_in_primary823 := TAntlrBitSet.CreateWithBits([$0000000000000010,$0000000040000001]);
  FOLLOW_explicitGenericInvocationSuffix_in_primary834 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_94_in_primary838 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_arguments_in_primary840 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_94_in_primary851 := TAntlrBitSet.CreateWithBits([$0000020010000002,$0000000000000002]);
  FOLLOW_28_in_primary854 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_primary856 := TAntlrBitSet.CreateWithBits([$0000020010000002,$0000000000000002]);
  FOLLOW_identifierSuffix_in_primary861 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_64_in_primary873 := TAntlrBitSet.CreateWithBits([$0000000010000000,$0000000000000002]);
  FOLLOW_superSuffix_in_primary875 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_literal_in_primary885 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_95_in_primary895 := TAntlrBitSet.CreateWithBits([$7F80000200000010]);
  FOLLOW_creator_in_primary897 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_primary907 := TAntlrBitSet.CreateWithBits([$0000020010000002,$0000000000000002]);
  FOLLOW_28_in_primary910 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_primary912 := TAntlrBitSet.CreateWithBits([$0000020010000002,$0000000000000002]);
  FOLLOW_identifierSuffix_in_primary917 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_primitiveType_in_primary929 := TAntlrBitSet.CreateWithBits([$0000020010000000]);
  FOLLOW_41_in_primary932 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_primary934 := TAntlrBitSet.CreateWithBits([$0000020010000000]);
  FOLLOW_28_in_primary938 := TAntlrBitSet.CreateWithBits([$0000000040000000]);
  FOLLOW_30_in_primary940 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_40_in_primary950 := TAntlrBitSet.CreateWithBits([$0000000010000000]);
  FOLLOW_28_in_primary952 := TAntlrBitSet.CreateWithBits([$0000000040000000]);
  FOLLOW_30_in_primary954 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_identifierSuffix966 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_identifierSuffix968 := TAntlrBitSet.CreateWithBits([$0000020010000000]);
  FOLLOW_28_in_identifierSuffix972 := TAntlrBitSet.CreateWithBits([$0000000040000000]);
  FOLLOW_30_in_identifierSuffix974 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_identifierSuffix980 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_identifierSuffix982 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_identifierSuffix984 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_arguments_in_identifierSuffix997 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_identifierSuffix1007 := TAntlrBitSet.CreateWithBits([$0000000040000000]);
  FOLLOW_30_in_identifierSuffix1009 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_identifierSuffix1019 := TAntlrBitSet.CreateWithBits([$0000000200000000]);
  FOLLOW_explicitGenericInvocation_in_identifierSuffix1021 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_identifierSuffix1031 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000040000000]);
  FOLLOW_94_in_identifierSuffix1033 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_identifierSuffix1043 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000001]);
  FOLLOW_64_in_identifierSuffix1045 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_arguments_in_identifierSuffix1047 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_identifierSuffix1057 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000080000000]);
  FOLLOW_95_in_identifierSuffix1059 := TAntlrBitSet.CreateWithBits([$0000000200000010]);
  FOLLOW_nonWildcardTypeArguments_in_identifierSuffix1062 := TAntlrBitSet.CreateWithBits([$0000000200000010]);
  FOLLOW_innerCreator_in_identifierSuffix1066 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_nonWildcardTypeArguments_in_creator1078 := TAntlrBitSet.CreateWithBits([$7F80000200000010]);
  FOLLOW_createdName_in_creator1081 := TAntlrBitSet.CreateWithBits([$0000020000000000,$0000000000000002]);
  FOLLOW_arrayCreatorRest_in_creator1092 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classCreatorRest_in_creator1096 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_createdName1108 := TAntlrBitSet.CreateWithBits([$0000000210000002]);
  FOLLOW_typeArguments_in_createdName1110 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_28_in_createdName1122 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_createdName1124 := TAntlrBitSet.CreateWithBits([$0000000210000002]);
  FOLLOW_typeArguments_in_createdName1126 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_primitiveType_in_createdName1137 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_innerCreator1149 := TAntlrBitSet.CreateWithBits([$0000020000000000,$0000000000000002]);
  FOLLOW_classCreatorRest_in_innerCreator1151 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_arrayCreatorRest1162 := TAntlrBitSet.CreateWithBits([$7F80050200000FD0,$00000007FCC00003]);
  FOLLOW_42_in_arrayCreatorRest1176 := TAntlrBitSet.CreateWithBits([$0000022000000000]);
  FOLLOW_41_in_arrayCreatorRest1179 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_arrayCreatorRest1181 := TAntlrBitSet.CreateWithBits([$0000022000000000]);
  FOLLOW_arrayInitializer_in_arrayCreatorRest1185 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_in_arrayCreatorRest1199 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_arrayCreatorRest1201 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_41_in_arrayCreatorRest1204 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_arrayCreatorRest1206 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_arrayCreatorRest1208 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_41_in_arrayCreatorRest1213 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_arrayCreatorRest1215 := TAntlrBitSet.CreateWithBits([$0000020000000002]);
  FOLLOW_arguments_in_classCreatorRest1238 := TAntlrBitSet.CreateWithBits([$0000002000000002]);
  FOLLOW_classBody_in_classCreatorRest1240 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_nonWildcardTypeArguments_in_explicitGenericInvocation1253 := TAntlrBitSet.CreateWithBits([$0000000000000010,$0000000000000001]);
  FOLLOW_explicitGenericInvocationSuffix_in_explicitGenericInvocation1255 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_33_in_nonWildcardTypeArguments1267 := TAntlrBitSet.CreateWithBits([$7F80000000000010]);
  FOLLOW_typeList_in_nonWildcardTypeArguments1269 := TAntlrBitSet.CreateWithBits([$0000000800000000]);
  FOLLOW_35_in_nonWildcardTypeArguments1271 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_64_in_explicitGenericInvocationSuffix1283 := TAntlrBitSet.CreateWithBits([$0000000010000000,$0000000000000002]);
  FOLLOW_superSuffix_in_explicitGenericInvocationSuffix1285 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_explicitGenericInvocationSuffix1292 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_arguments_in_explicitGenericInvocationSuffix1294 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_selector1306 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_selector1308 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000000002]);
  FOLLOW_arguments_in_selector1311 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_selector1320 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000040000000]);
  FOLLOW_94_in_selector1322 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_selector1329 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000001]);
  FOLLOW_64_in_selector1331 := TAntlrBitSet.CreateWithBits([$0000000010000000,$0000000000000002]);
  FOLLOW_superSuffix_in_selector1333 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_selector1340 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000080000000]);
  FOLLOW_95_in_selector1342 := TAntlrBitSet.CreateWithBits([$0000000200000010]);
  FOLLOW_nonWildcardTypeArguments_in_selector1345 := TAntlrBitSet.CreateWithBits([$0000000200000010]);
  FOLLOW_innerCreator_in_selector1349 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_selector1356 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_selector1358 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_selector1360 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_arguments_in_superSuffix1372 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_superSuffix1379 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_superSuffix1381 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000000002]);
  FOLLOW_arguments_in_superSuffix1384 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_65_in_arguments1400 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00007]);
  FOLLOW_expressionList_in_arguments1402 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_arguments1405 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_integerLiteral_in_literal1421 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_FloatingPointLiteral_in_literal1431 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_CharacterLiteral_in_literal1441 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_StringLiteral_in_literal1451 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_booleanLiteral_in_literal1461 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_96_in_literal1471 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_integerLiteral0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_booleanLiteral0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_assignmentOperator_in_synpred2_JavaExpr91 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_synpred2_JavaExpr93 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_shiftOp_in_synpred27_JavaExpr514 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_additiveExpression_in_synpred27_JavaExpr516 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_castExpression_in_synpred41_JavaExpr731 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_65_in_synpred45_JavaExpr769 := TAntlrBitSet.CreateWithBits([$7F80000000000000]);
  FOLLOW_primitiveType_in_synpred45_JavaExpr771 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_synpred45_JavaExpr773 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_unaryExpression_in_synpred45_JavaExpr775 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_synpred46_JavaExpr787 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_synpred50_JavaExpr854 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_synpred50_JavaExpr856 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_identifierSuffix_in_synpred51_JavaExpr861 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_28_in_synpred56_JavaExpr910 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_synpred56_JavaExpr912 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_identifierSuffix_in_synpred57_JavaExpr917 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_synpred63_JavaExpr980 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_synpred63_JavaExpr982 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_synpred63_JavaExpr984 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_41_in_synpred79_JavaExpr1204 := TAntlrBitSet.CreateWithBits([$7F80010200000FD0,$00000007FCC00003]);
  FOLLOW_expression_in_synpred79_JavaExpr1206 := TAntlrBitSet.CreateWithBits([$0000040000000000]);
  FOLLOW_42_in_synpred79_JavaExpr1208 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TJava_JavaExpr.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TJava_JavaExpr.GetGrammarFileName():String;
begin
  Result:='JavaExpr.g'; 
end;

// $ANTLR start "parExpression"
// JavaExpr.g:6:1: parExpression : ''('' expression '')'' ;
function TJava_JavaExpr.parExpression():Integer;
var
  _alt:array [0..255] of Integer;
  parExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    parExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 205) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:7:2: ( ''('' expression '')'' )
        // JavaExpr.g:7:4: ''('' expression '')''
        begin
        match(input,65,FOLLOW_65_in_parExpression22); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_expression_in_parExpression24);
        expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,66,FOLLOW_66_in_parExpression26); 
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
          memoize(input, 205, parExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "expressionList"
// JavaExpr.g:10:1: expressionList : expression ( '','' expression )* ;
function TJava_JavaExpr.expressionList():Integer;
var
  _alt:array [0..255] of Integer;
  expressionList_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    expressionList_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 206) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:11:5: ( expression ( '','' expression )* )
        // JavaExpr.g:11:9: expression ( '','' expression )*
        begin
        pushFollow(FOLLOW_expression_in_expressionList43);
        expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:11:20: ( '','' expression )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=34)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:11:21: '','' expression
        	    begin
        	    match(input,34,FOLLOW_34_in_expressionList46); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_expression_in_expressionList48);
        	    expression();

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
          memoize(input, 206, expressionList_StartIndex);
        end;
    end;
end;// $ANTLR start "statementExpression"
// JavaExpr.g:14:1: statementExpression : expression ;
function TJava_JavaExpr.statementExpression():Integer;
var
  _alt:array [0..255] of Integer;
  statementExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    statementExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 207) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:15:2: ( expression )
        // JavaExpr.g:15:4: expression
        begin
        pushFollow(FOLLOW_expression_in_statementExpression64);
        expression();

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
          memoize(input, 207, statementExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "constantExpression"
// JavaExpr.g:18:1: constantExpression : expression ;
function TJava_JavaExpr.constantExpression():Integer;
var
  _alt:array [0..255] of Integer;
  constantExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constantExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 208) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:19:2: ( expression )
        // JavaExpr.g:19:4: expression
        begin
        pushFollow(FOLLOW_expression_in_constantExpression76);
        expression();

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
          memoize(input, 208, constantExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "expression"
// JavaExpr.g:22:1: expression : conditionalExpression ( assignmentOperator expression )? ;
function TJava_JavaExpr.expression():Integer;
var
  _alt:array [0..255] of Integer;
  expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 209) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:23:2: ( conditionalExpression ( assignmentOperator expression )? )
        // JavaExpr.g:23:4: conditionalExpression ( assignmentOperator expression )?
        begin
        pushFollow(FOLLOW_conditionalExpression_in_expression88);
        conditionalExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:23:26: ( assignmentOperator expression )?
        _alt[2]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
         *}
        _alt[2] := getDfa2.predict(input);
        case (_alt[2]) of
             1 :
                begin
                // JavaExpr.g:23:27: assignmentOperator expression
                begin
                pushFollow(FOLLOW_assignmentOperator_in_expression91);
                assignmentOperator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_expression93);
                expression();

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
          memoize(input, 209, expression_StartIndex);
        end;
    end;
end;// $ANTLR start "assignmentOperator"
// JavaExpr.g:26:1: assignmentOperator : ( ''='' | ''+='' | ''-='' | ''*='' | ''/='' | ''&='' | ''|='' | ''^='' | ''%='' | ''<'' ''<'' ''='' | ''>'' ''>'' ''='' | ''>'' ''>'' ''>'' ''='' );
function TJava_JavaExpr.assignmentOperator():Integer;
var
  _alt:array [0..255] of Integer;
  assignmentOperator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    assignmentOperator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 210) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:27:2: ( ''='' | ''+='' | ''-='' | ''*='' | ''/='' | ''&='' | ''|='' | ''^='' | ''%='' | ''<'' ''<'' ''='' | ''>'' ''>'' ''='' | ''>'' ''>'' ''>'' ''='' )
        _alt[3]:=12;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
         *}
        _alt[3] := getDfa3.predict(input);
        case (_alt[3]) of 
             1 :
                begin
                // JavaExpr.g:27:4: ''=''
                begin
                match(input,44,FOLLOW_44_in_assignmentOperator107); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:28:9: ''+=''
                begin
                match(input,70,FOLLOW_70_in_assignmentOperator117); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:29:9: ''-=''
                begin
                match(input,71,FOLLOW_71_in_assignmentOperator127); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:30:9: ''*=''
                begin
                match(input,72,FOLLOW_72_in_assignmentOperator137); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaExpr.g:31:9: ''/=''
                begin
                match(input,73,FOLLOW_73_in_assignmentOperator147); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaExpr.g:32:9: ''&=''
                begin
                match(input,74,FOLLOW_74_in_assignmentOperator157); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // JavaExpr.g:33:9: ''|=''
                begin
                match(input,75,FOLLOW_75_in_assignmentOperator167); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             8 :
                begin
                // JavaExpr.g:34:9: ''^=''
                begin
                match(input,76,FOLLOW_76_in_assignmentOperator177); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             9 :
                begin
                // JavaExpr.g:35:9: ''%=''
                begin
                match(input,77,FOLLOW_77_in_assignmentOperator187); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             10 :
                begin
                // JavaExpr.g:36:9: ''<'' ''<'' ''=''
                begin
                match(input,33,FOLLOW_33_in_assignmentOperator197); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,33,FOLLOW_33_in_assignmentOperator199); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_assignmentOperator201); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             11 :
                begin
                // JavaExpr.g:37:9: ''>'' ''>'' ''=''
                begin
                match(input,35,FOLLOW_35_in_assignmentOperator211); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,35,FOLLOW_35_in_assignmentOperator213); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_assignmentOperator215); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             12 :
                begin
                // JavaExpr.g:38:9: ''>'' ''>'' ''>'' ''=''
                begin
                match(input,35,FOLLOW_35_in_assignmentOperator225); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,35,FOLLOW_35_in_assignmentOperator227); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,35,FOLLOW_35_in_assignmentOperator229); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_assignmentOperator231); 
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
          memoize(input, 210, assignmentOperator_StartIndex);
        end;
    end;
end;// $ANTLR start "conditionalExpression"
// JavaExpr.g:41:1: conditionalExpression : conditionalOrExpression ( ''?'' expression '':'' expression )? ;
function TJava_JavaExpr.conditionalExpression():Integer;
var
  _alt:array [0..255] of Integer;
  conditionalExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    conditionalExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 211) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:42:5: ( conditionalOrExpression ( ''?'' expression '':'' expression )? )
        // JavaExpr.g:42:9: conditionalOrExpression ( ''?'' expression '':'' expression )?
        begin
        pushFollow(FOLLOW_conditionalOrExpression_in_conditionalExpression247);
        conditionalOrExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:42:33: ( ''?'' expression '':'' expression )?
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=63)) ) then 
        begin
          _alt[4]:=1;
        end
        ;
        case (_alt[4]) of
             1 :
                begin
                // JavaExpr.g:42:35: ''?'' expression '':'' expression
                begin
                match(input,63,FOLLOW_63_in_conditionalExpression251); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_conditionalExpression253);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,78,FOLLOW_78_in_conditionalExpression255); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_conditionalExpression257);
                expression();

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
          memoize(input, 211, conditionalExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "conditionalOrExpression"
// JavaExpr.g:45:1: conditionalOrExpression : conditionalAndExpression ( ''||'' conditionalAndExpression )* ;
function TJava_JavaExpr.conditionalOrExpression():Integer;
var
  _alt:array [0..255] of Integer;
  conditionalOrExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    conditionalOrExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 212) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:46:5: ( conditionalAndExpression ( ''||'' conditionalAndExpression )* )
        // JavaExpr.g:46:9: conditionalAndExpression ( ''||'' conditionalAndExpression )*
        begin
        pushFollow(FOLLOW_conditionalAndExpression_in_conditionalOrExpression276);
        conditionalAndExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:46:34: ( ''||'' conditionalAndExpression )*
        repeat 
            _alt[5]:=2;
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=79)) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            case (_alt[5]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:46:36: ''||'' conditionalAndExpression
        	    begin
        	    match(input,79,FOLLOW_79_in_conditionalOrExpression280); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_conditionalAndExpression_in_conditionalOrExpression282);
        	    conditionalAndExpression();

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
          memoize(input, 212, conditionalOrExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "conditionalAndExpression"
// JavaExpr.g:49:1: conditionalAndExpression : inclusiveOrExpression ( ''&&'' inclusiveOrExpression )* ;
function TJava_JavaExpr.conditionalAndExpression():Integer;
var
  _alt:array [0..255] of Integer;
  conditionalAndExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    conditionalAndExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 213) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:50:5: ( inclusiveOrExpression ( ''&&'' inclusiveOrExpression )* )
        // JavaExpr.g:50:9: inclusiveOrExpression ( ''&&'' inclusiveOrExpression )*
        begin
        pushFollow(FOLLOW_inclusiveOrExpression_in_conditionalAndExpression301);
        inclusiveOrExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:50:31: ( ''&&'' inclusiveOrExpression )*
        repeat 
            _alt[6]:=2;
            _LA[6,0] := input.LA(1);

            if ( ((_LA[6,0]=80)) ) then 
            begin
              _alt[6]:=1;
            end

            ;

            case (_alt[6]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:50:33: ''&&'' inclusiveOrExpression
        	    begin
        	    match(input,80,FOLLOW_80_in_conditionalAndExpression305); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_inclusiveOrExpression_in_conditionalAndExpression307);
        	    inclusiveOrExpression();

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
          memoize(input, 213, conditionalAndExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "inclusiveOrExpression"
// JavaExpr.g:53:1: inclusiveOrExpression : exclusiveOrExpression ( ''|'' exclusiveOrExpression )* ;
function TJava_JavaExpr.inclusiveOrExpression():Integer;
var
  _alt:array [0..255] of Integer;
  inclusiveOrExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    inclusiveOrExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 214) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:54:5: ( exclusiveOrExpression ( ''|'' exclusiveOrExpression )* )
        // JavaExpr.g:54:9: exclusiveOrExpression ( ''|'' exclusiveOrExpression )*
        begin
        pushFollow(FOLLOW_exclusiveOrExpression_in_inclusiveOrExpression326);
        exclusiveOrExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:54:31: ( ''|'' exclusiveOrExpression )*
        repeat 
            _alt[7]:=2;
            _LA[7,0] := input.LA(1);

            if ( ((_LA[7,0]=81)) ) then 
            begin
              _alt[7]:=1;
            end

            ;

            case (_alt[7]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:54:33: ''|'' exclusiveOrExpression
        	    begin
        	    match(input,81,FOLLOW_81_in_inclusiveOrExpression330); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_exclusiveOrExpression_in_inclusiveOrExpression332);
        	    exclusiveOrExpression();

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
          memoize(input, 214, inclusiveOrExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "exclusiveOrExpression"
// JavaExpr.g:57:1: exclusiveOrExpression : andExpression ( ''^'' andExpression )* ;
function TJava_JavaExpr.exclusiveOrExpression():Integer;
var
  _alt:array [0..255] of Integer;
  exclusiveOrExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    exclusiveOrExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 215) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:58:5: ( andExpression ( ''^'' andExpression )* )
        // JavaExpr.g:58:9: andExpression ( ''^'' andExpression )*
        begin
        pushFollow(FOLLOW_andExpression_in_exclusiveOrExpression351);
        andExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:58:23: ( ''^'' andExpression )*
        repeat 
            _alt[8]:=2;
            _LA[8,0] := input.LA(1);

            if ( ((_LA[8,0]=82)) ) then 
            begin
              _alt[8]:=1;
            end

            ;

            case (_alt[8]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:58:25: ''^'' andExpression
        	    begin
        	    match(input,82,FOLLOW_82_in_exclusiveOrExpression355); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_andExpression_in_exclusiveOrExpression357);
        	    andExpression();

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
          memoize(input, 215, exclusiveOrExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "andExpression"
// JavaExpr.g:61:1: andExpression : equalityExpression ( ''&'' equalityExpression )* ;
function TJava_JavaExpr.andExpression():Integer;
var
  _alt:array [0..255] of Integer;
  andExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    andExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 216) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:62:5: ( equalityExpression ( ''&'' equalityExpression )* )
        // JavaExpr.g:62:9: equalityExpression ( ''&'' equalityExpression )*
        begin
        pushFollow(FOLLOW_equalityExpression_in_andExpression376);
        equalityExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:62:28: ( ''&'' equalityExpression )*
        repeat 
            _alt[9]:=2;
            _LA[9,0] := input.LA(1);

            if ( ((_LA[9,0]=36)) ) then 
            begin
              _alt[9]:=1;
            end

            ;

            case (_alt[9]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:62:30: ''&'' equalityExpression
        	    begin
        	    match(input,36,FOLLOW_36_in_andExpression380); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_equalityExpression_in_andExpression382);
        	    equalityExpression();

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
          memoize(input, 216, andExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "equalityExpression"
// JavaExpr.g:65:1: equalityExpression : instanceOfExpression ( ( ''=='' | ''!='' ) instanceOfExpression )* ;
function TJava_JavaExpr.equalityExpression():Integer;
var
  _alt:array [0..255] of Integer;
  equalityExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    equalityExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 217) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:66:5: ( instanceOfExpression ( ( ''=='' | ''!='' ) instanceOfExpression )* )
        // JavaExpr.g:66:9: instanceOfExpression ( ( ''=='' | ''!='' ) instanceOfExpression )*
        begin
        pushFollow(FOLLOW_instanceOfExpression_in_equalityExpression401);
        instanceOfExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:66:30: ( ( ''=='' | ''!='' ) instanceOfExpression )*
        repeat 
            _alt[10]:=2;
            _LA[10,0] := input.LA(1);

            if ( (((_LA[10,0]>=83) and 
            ( _LA[10,0]<=84))) ) then 
            begin
              _alt[10]:=1;
            end

            ;

            case (_alt[10]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:66:32: ( ''=='' | ''!='' ) instanceOfExpression
        	    begin
        	    if ( ((input.LA(1)>=83) and (input.LA(1)<=84)) ) then
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

        	    pushFollow(FOLLOW_instanceOfExpression_in_equalityExpression413);
        	    instanceOfExpression();

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
          memoize(input, 217, equalityExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "instanceOfExpression"
// JavaExpr.g:69:1: instanceOfExpression : relationalExpression ( ''instanceof'' dtype )? ;
function TJava_JavaExpr.instanceOfExpression():Integer;
var
  _alt:array [0..255] of Integer;
  instanceOfExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    instanceOfExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 218) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:70:5: ( relationalExpression ( ''instanceof'' dtype )? )
        // JavaExpr.g:70:9: relationalExpression ( ''instanceof'' dtype )?
        begin
        pushFollow(FOLLOW_relationalExpression_in_instanceOfExpression432);
        relationalExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:70:30: ( ''instanceof'' dtype )?
        _alt[11]:=2;
        _LA[11,0] := input.LA(1);

        if ( ((_LA[11,0]=85)) ) then 
        begin
          _alt[11]:=1;
        end
        ;
        case (_alt[11]) of
             1 :
                begin
                // JavaExpr.g:70:31: ''instanceof'' dtype
                begin
                match(input,85,FOLLOW_85_in_instanceOfExpression435); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_dtype_in_instanceOfExpression437);
                TJavaParser(gJava).dtype();

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
          memoize(input, 218, instanceOfExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "relationalExpression"
// JavaExpr.g:73:1: relationalExpression : shiftExpression ( relationalOp shiftExpression )* ;
function TJava_JavaExpr.relationalExpression():Integer;
var
  _alt:array [0..255] of Integer;
  relationalExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    relationalExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 219) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:74:5: ( shiftExpression ( relationalOp shiftExpression )* )
        // JavaExpr.g:74:9: shiftExpression ( relationalOp shiftExpression )*
        begin
        pushFollow(FOLLOW_shiftExpression_in_relationalExpression455);
        shiftExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:74:25: ( relationalOp shiftExpression )*
        repeat 
            _alt[12]:=2;
            _LA[12,0] := input.LA(1);

            if ( ((_LA[12,0]=33)) ) then 
            begin
              _LA[12,2] := input.LA(2);

              if ( ((_LA[12,2]=33)) ) then 
              begin
                _LA[12,4] := input.LA(3);

                if ( ((_LA[12,4]=Identifier) or ((_LA[12,4]>=55) and 
                ( _LA[12,4]<=62))) ) then 
                begin
                  _alt[12]:=1;
                end

                ;

              end
              else if ( ((_LA[12,2]=Identifier) or ((_LA[12,2]>=FloatingPointLiteral) and 
              ( _LA[12,2]<=DecimalLiteral)) or (_LA[12,2]=40) or (_LA[12,2]=44) or ((_LA[12,2]>=55) and 
              ( _LA[12,2]<=62)) or ((_LA[12,2]>=64) and 
              ( _LA[12,2]<=65)) or ((_LA[12,2]>=86) and 
              ( _LA[12,2]<=87)) or ((_LA[12,2]>=90) and 
              ( _LA[12,2]<=98))) ) then 
              begin
                _alt[12]:=1;
              end

              ;

            end
            else if ( ((_LA[12,0]=35)) ) then 
            begin
              _LA[12,3] := input.LA(2);

              if ( ((_LA[12,3]=Identifier) or ((_LA[12,3]>=FloatingPointLiteral) and 
              ( _LA[12,3]<=DecimalLiteral)) or (_LA[12,3]=33) or (_LA[12,3]=40) or (_LA[12,3]=44) or ((_LA[12,3]>=55) and 
              ( _LA[12,3]<=62)) or ((_LA[12,3]>=64) and 
              ( _LA[12,3]<=65)) or ((_LA[12,3]>=86) and 
              ( _LA[12,3]<=87)) or ((_LA[12,3]>=90) and 
              ( _LA[12,3]<=98))) ) then 
              begin
                _alt[12]:=1;
              end

              ;

            end

            ;

            case (_alt[12]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:74:27: relationalOp shiftExpression
        	    begin
        	    pushFollow(FOLLOW_relationalOp_in_relationalExpression459);
        	    relationalOp();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_shiftExpression_in_relationalExpression461);
        	    shiftExpression();

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
          memoize(input, 219, relationalExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "relationalOp"
// JavaExpr.g:77:1: relationalOp : ( ''<'' ''='' | ''>'' ''='' | ''<'' | ''>'' ) ;
function TJava_JavaExpr.relationalOp():Integer;
var
  _alt:array [0..255] of Integer;
  relationalOp_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    relationalOp_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 220) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:78:2: ( ( ''<'' ''='' | ''>'' ''='' | ''<'' | ''>'' ) )
        // JavaExpr.g:78:4: ( ''<'' ''='' | ''>'' ''='' | ''<'' | ''>'' )
        begin
        // block:JavaExpr.g:78:4: ( ''<'' ''='' | ''>'' ''='' | ''<'' | ''>'' )
        _alt[13]:=4;
        _LA[13,0] := input.LA(1);

        if ( ((_LA[13,0]=33)) ) then 
        begin
          _LA[13,1] := input.LA(2);

          if ( ((_LA[13,1]=44)) ) then 
          begin
            _alt[13]:=1;
          end
          else if ( ((_LA[13,1]=Identifier) or ((_LA[13,1]>=FloatingPointLiteral) and 
          ( _LA[13,1]<=DecimalLiteral)) or (_LA[13,1]=33) or (_LA[13,1]=40) or ((_LA[13,1]>=55) and 
          ( _LA[13,1]<=62)) or ((_LA[13,1]>=64) and 
          ( _LA[13,1]<=65)) or ((_LA[13,1]>=86) and 
          ( _LA[13,1]<=87)) or ((_LA[13,1]>=90) and 
          ( _LA[13,1]<=98))) ) then 
          begin
            _alt[13]:=3;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit;  
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 13, 1, input);    

          end;
        end
        else if ( ((_LA[13,0]=35)) ) then 
        begin
          _LA[13,2] := input.LA(2);

          if ( ((_LA[13,2]=44)) ) then 
          begin
            _alt[13]:=2;
          end
          else if ( ((_LA[13,2]=Identifier) or ((_LA[13,2]>=FloatingPointLiteral) and 
          ( _LA[13,2]<=DecimalLiteral)) or (_LA[13,2]=33) or (_LA[13,2]=40) or ((_LA[13,2]>=55) and 
          ( _LA[13,2]<=62)) or ((_LA[13,2]>=64) and 
          ( _LA[13,2]<=65)) or ((_LA[13,2]>=86) and 
          ( _LA[13,2]<=87)) or ((_LA[13,2]>=90) and 
          ( _LA[13,2]<=98))) ) then 
          begin
            _alt[13]:=4;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit;  
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 13, 2, input);    

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
            , 13, 0, input);    

        end;
        case (_alt[13]) of
             1 :
                begin
                // JavaExpr.g:78:5: ''<'' ''=''
                begin
                match(input,33,FOLLOW_33_in_relationalOp477); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_relationalOp479); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:78:15: ''>'' ''=''
                begin
                match(input,35,FOLLOW_35_in_relationalOp483); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_relationalOp485); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:78:25: ''<''
                begin
                match(input,33,FOLLOW_33_in_relationalOp489); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:78:31: ''>''
                begin
                match(input,35,FOLLOW_35_in_relationalOp493); 
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
          memoize(input, 220, relationalOp_StartIndex);
        end;
    end;
end;// $ANTLR start "shiftExpression"
// JavaExpr.g:81:1: shiftExpression : additiveExpression ( shiftOp additiveExpression )* ;
function TJava_JavaExpr.shiftExpression():Integer;
var
  _alt:array [0..255] of Integer;
  shiftExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    shiftExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 221) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:82:5: ( additiveExpression ( shiftOp additiveExpression )* )
        // JavaExpr.g:82:9: additiveExpression ( shiftOp additiveExpression )*
        begin
        pushFollow(FOLLOW_additiveExpression_in_shiftExpression510);
        additiveExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:82:28: ( shiftOp additiveExpression )*
        repeat 
            _alt[14]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
             *}
            _alt[14] := getDfa14.predict(input);
            case (_alt[14]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:82:30: shiftOp additiveExpression
        	    begin
        	    pushFollow(FOLLOW_shiftOp_in_shiftExpression514);
        	    shiftOp();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_additiveExpression_in_shiftExpression516);
        	    additiveExpression();

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
          memoize(input, 221, shiftExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "shiftOp"
// JavaExpr.g:86:1: shiftOp : ( ''<'' ''<'' | ''>'' ''>'' ''>'' | ''>'' ''>'' ) ;
function TJava_JavaExpr.shiftOp():Integer;
var
  _alt:array [0..255] of Integer;
  shiftOp_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    shiftOp_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 222) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:87:2: ( ( ''<'' ''<'' | ''>'' ''>'' ''>'' | ''>'' ''>'' ) )
        // JavaExpr.g:87:4: ( ''<'' ''<'' | ''>'' ''>'' ''>'' | ''>'' ''>'' )
        begin
        // block:JavaExpr.g:87:4: ( ''<'' ''<'' | ''>'' ''>'' ''>'' | ''>'' ''>'' )
        _alt[15]:=3;
        _LA[15,0] := input.LA(1);

        if ( ((_LA[15,0]=33)) ) then 
        begin
          _alt[15]:=1;
        end
        else if ( ((_LA[15,0]=35)) ) then 
        begin
          _LA[15,2] := input.LA(2);

          if ( ((_LA[15,2]=35)) ) then 
          begin
            _LA[15,3] := input.LA(3);

            if ( ((_LA[15,3]=35)) ) then 
            begin
              _alt[15]:=2;
            end
            else if ( ((_LA[15,3]=Identifier) or ((_LA[15,3]>=FloatingPointLiteral) and 
            ( _LA[15,3]<=DecimalLiteral)) or (_LA[15,3]=33) or (_LA[15,3]=40) or ((_LA[15,3]>=55) and 
            ( _LA[15,3]<=62)) or ((_LA[15,3]>=64) and 
            ( _LA[15,3]<=65)) or ((_LA[15,3]>=86) and 
            ( _LA[15,3]<=87)) or ((_LA[15,3]>=90) and 
            ( _LA[15,3]<=98))) ) then 
            begin
              _alt[15]:=3;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit;  
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 15, 3, input);    

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
              , 15, 2, input);    

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
            , 15, 0, input);    

        end;
        case (_alt[15]) of
             1 :
                begin
                // JavaExpr.g:87:5: ''<'' ''<''
                begin
                match(input,33,FOLLOW_33_in_shiftOp540); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,33,FOLLOW_33_in_shiftOp542); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:87:15: ''>'' ''>'' ''>''
                begin
                match(input,35,FOLLOW_35_in_shiftOp546); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,35,FOLLOW_35_in_shiftOp548); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,35,FOLLOW_35_in_shiftOp550); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:87:29: ''>'' ''>''
                begin
                match(input,35,FOLLOW_35_in_shiftOp554); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,35,FOLLOW_35_in_shiftOp556); 
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
          memoize(input, 222, shiftOp_StartIndex);
        end;
    end;
end;// $ANTLR start "additiveExpression"
// JavaExpr.g:91:1: additiveExpression : multiplicativeExpression ( ( ''+'' | ''-'' ) multiplicativeExpression )* ;
function TJava_JavaExpr.additiveExpression():Integer;
var
  _alt:array [0..255] of Integer;
  additiveExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    additiveExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 223) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:92:5: ( multiplicativeExpression ( ( ''+'' | ''-'' ) multiplicativeExpression )* )
        // JavaExpr.g:92:9: multiplicativeExpression ( ( ''+'' | ''-'' ) multiplicativeExpression )*
        begin
        pushFollow(FOLLOW_multiplicativeExpression_in_additiveExpression574);
        multiplicativeExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:92:34: ( ( ''+'' | ''-'' ) multiplicativeExpression )*
        repeat 
            _alt[16]:=2;
            _LA[16,0] := input.LA(1);

            if ( (((_LA[16,0]>=86) and 
            ( _LA[16,0]<=87))) ) then 
            begin
              _alt[16]:=1;
            end

            ;

            case (_alt[16]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:92:36: ( ''+'' | ''-'' ) multiplicativeExpression
        	    begin
        	    if ( ((input.LA(1)>=86) and (input.LA(1)<=87)) ) then
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

        	    pushFollow(FOLLOW_multiplicativeExpression_in_additiveExpression586);
        	    multiplicativeExpression();

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
          memoize(input, 223, additiveExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "multiplicativeExpression"
// JavaExpr.g:95:1: multiplicativeExpression : unaryExpression ( ( ''*'' | ''/'' | ''%'' ) unaryExpression )* ;
function TJava_JavaExpr.multiplicativeExpression():Integer;
var
  _alt:array [0..255] of Integer;
  multiplicativeExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    multiplicativeExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 224) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:96:5: ( unaryExpression ( ( ''*'' | ''/'' | ''%'' ) unaryExpression )* )
        // JavaExpr.g:96:9: unaryExpression ( ( ''*'' | ''/'' | ''%'' ) unaryExpression )*
        begin
        pushFollow(FOLLOW_unaryExpression_in_multiplicativeExpression605);
        unaryExpression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaExpr.g:96:25: ( ( ''*'' | ''/'' | ''%'' ) unaryExpression )*
        repeat 
            _alt[17]:=2;
            _LA[17,0] := input.LA(1);

            if ( ((_LA[17,0]=29) or ((_LA[17,0]>=88) and 
            ( _LA[17,0]<=89))) ) then 
            begin
              _alt[17]:=1;
            end

            ;

            case (_alt[17]) of
        	 1 :
        	    begin
        	    // JavaExpr.g:96:27: ( ''*'' | ''/'' | ''%'' ) unaryExpression
        	    begin
        	    if ( (input.LA(1)=29) or ((input.LA(1)>=88) and (input.LA(1)<=89)) ) then
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

        	    pushFollow(FOLLOW_unaryExpression_in_multiplicativeExpression623);
        	    unaryExpression();

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
          memoize(input, 224, multiplicativeExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "unaryExpression"
// JavaExpr.g:99:1: unaryExpression : ( ''+'' unaryExpression | ''-'' unaryExpression | ''++'' unaryExpression | ''--'' unaryExpression | unaryExpressionNotPlusMinus );
function TJava_JavaExpr.unaryExpression():Integer;
var
  _alt:array [0..255] of Integer;
  unaryExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    unaryExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 225) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:100:5: ( ''+'' unaryExpression | ''-'' unaryExpression | ''++'' unaryExpression | ''--'' unaryExpression | unaryExpressionNotPlusMinus )
        _alt[18]:=5;

        case input.LA(1) of
         86: 
            begin
            _alt[18]:=1;
            end;
         87: 
            begin
            _alt[18]:=2;
            end;
         90: 
            begin
            _alt[18]:=3;
            end;
         91: 
            begin
            _alt[18]:=4;
            end;
         Identifier , 
         FloatingPointLiteral , 
         CharacterLiteral , 
         StringLiteral , 
         HexLiteral , 
         OctalLiteral , 
         DecimalLiteral , 
         33 , 
         40 , 
         55 , 
         56 , 
         57 , 
         58 , 
         59 , 
         60 , 
         61 , 
         62 , 
         64 , 
         65 , 
         92 , 
         93 , 
         94 , 
         95 , 
         96 , 
         97 , 
         98: 
            begin
            _alt[18]:=5;
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
            , 18, 0, input);

        end;
        end;

        case (_alt[18]) of 
             1 :
                begin
                // JavaExpr.g:100:9: ''+'' unaryExpression
                begin
                match(input,86,FOLLOW_86_in_unaryExpression643); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_unaryExpression645);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:101:7: ''-'' unaryExpression
                begin
                match(input,87,FOLLOW_87_in_unaryExpression653); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_unaryExpression655);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:102:9: ''++'' unaryExpression
                begin
                match(input,90,FOLLOW_90_in_unaryExpression665); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_unaryExpression667);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:103:9: ''--'' unaryExpression
                begin
                match(input,91,FOLLOW_91_in_unaryExpression677); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_unaryExpression679);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaExpr.g:104:9: unaryExpressionNotPlusMinus
                begin
                pushFollow(FOLLOW_unaryExpressionNotPlusMinus_in_unaryExpression689);
                unaryExpressionNotPlusMinus();

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
          memoize(input, 225, unaryExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "unaryExpressionNotPlusMinus"
// JavaExpr.g:107:1: unaryExpressionNotPlusMinus : ( ''~'' unaryExpression | ''!'' unaryExpression | castExpression | primary ( selector )* ( ''++'' | ''--'' )? );
function TJava_JavaExpr.unaryExpressionNotPlusMinus():Integer;
var
  _alt:array [0..255] of Integer;
  unaryExpressionNotPlusMinus_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    unaryExpressionNotPlusMinus_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 226) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:108:5: ( ''~'' unaryExpression | ''!'' unaryExpression | castExpression | primary ( selector )* ( ''++'' | ''--'' )? )
        _alt[21]:=4;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
         *}
        _alt[21] := getDfa21.predict(input);
        case (_alt[21]) of 
             1 :
                begin
                // JavaExpr.g:108:9: ''~'' unaryExpression
                begin
                match(input,92,FOLLOW_92_in_unaryExpressionNotPlusMinus708); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_unaryExpressionNotPlusMinus710);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:109:8: ''!'' unaryExpression
                begin
                match(input,93,FOLLOW_93_in_unaryExpressionNotPlusMinus719); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_unaryExpressionNotPlusMinus721);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:110:9: castExpression
                begin
                pushFollow(FOLLOW_castExpression_in_unaryExpressionNotPlusMinus731);
                castExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:111:9: primary ( selector )* ( ''++'' | ''--'' )?
                begin
                pushFollow(FOLLOW_primary_in_unaryExpressionNotPlusMinus741);
                primary();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaExpr.g:111:17: ( selector )*
                repeat 
                    _alt[19]:=2;
                    _LA[19,0] := input.LA(1);

                    if ( ((_LA[19,0]=28) or (_LA[19,0]=41)) ) then 
                    begin
                      _alt[19]:=1;
                    end

                    ;

                    case (_alt[19]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:0:0: selector
                	    begin
                	    pushFollow(FOLLOW_selector_in_unaryExpressionNotPlusMinus743);
                	    selector();

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

                // block:JavaExpr.g:111:27: ( ''++'' | ''--'' )?
                _alt[20]:=2;
                _LA[20,0] := input.LA(1);

                if ( (((_LA[20,0]>=90) and 
                ( _LA[20,0]<=91))) ) then 
                begin
                  _alt[20]:=1;
                end
                ;
                case (_alt[20]) of
                     1 :
                        begin
                        // JavaExpr.g:
                        begin
                        if ( ((input.LA(1)>=90) and (input.LA(1)<=91)) ) then
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
          memoize(input, 226, unaryExpressionNotPlusMinus_StartIndex);
        end;
    end;
end;// $ANTLR start "castExpression"
// JavaExpr.g:114:1: castExpression : ( ''('' primitiveType '')'' unaryExpression | ''('' ( dtype | expression ) '')'' unaryExpressionNotPlusMinus );
function TJava_JavaExpr.castExpression():Integer;
var
  _alt:array [0..255] of Integer;
  castExpression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    castExpression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 227) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:115:5: ( ''('' primitiveType '')'' unaryExpression | ''('' ( dtype | expression ) '')'' unaryExpressionNotPlusMinus )
        _alt[23]:=2;
        _LA[23,0] := input.LA(1);

        if ( ((_LA[23,0]=65)) ) then 
        begin
          _LA[23,1] := input.LA(2);

          if ( (synpred45_JavaExpr()) ) then 
          begin
            _alt[23]:=1;
          end
          else if ( (true) ) then 
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
              , 23, 1, input);    

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
            , 23, 0, input);    

        end;
        case (_alt[23]) of 
             1 :
                begin
                // JavaExpr.g:115:8: ''('' primitiveType '')'' unaryExpression
                begin
                match(input,65,FOLLOW_65_in_castExpression769); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_primitiveType_in_castExpression771);
                TJavaParser(gJava).primitiveType();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,66,FOLLOW_66_in_castExpression773); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpression_in_castExpression775);
                unaryExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:116:8: ''('' ( dtype | expression ) '')'' unaryExpressionNotPlusMinus
                begin
                match(input,65,FOLLOW_65_in_castExpression784); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:116:12: ( dtype | expression )
                _alt[22]:=2;
                {** The code to initiate execution of a cyclic DFA; this is used
                 *  in the rule to predict an alt just like the fixed DFA case.
                 *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
                 *}
                _alt[22] := getDfa22.predict(input);
                case (_alt[22]) of
                     1 :
                        begin
                        // JavaExpr.g:116:13: dtype
                        begin
                        pushFollow(FOLLOW_dtype_in_castExpression787);
                        TJavaParser(gJava).dtype();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;
                     2 :
                        begin
                        // JavaExpr.g:116:21: expression
                        begin
                        pushFollow(FOLLOW_expression_in_castExpression791);
                        expression();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,66,FOLLOW_66_in_castExpression794); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unaryExpressionNotPlusMinus_in_castExpression796);
                unaryExpressionNotPlusMinus();

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
          memoize(input, 227, castExpression_StartIndex);
        end;
    end;
end;// $ANTLR start "primary"
// JavaExpr.g:119:1: primary : ( parExpression | nonWildcardTypeArguments ( explicitGenericInvocationSuffix | ''this'' arguments ) | ''this'' ( ''.'' Identifier )* ( identifierSuffix )? | ''super'' superSuffix | literal | ''new'' creator | Identifier ( ''.'' Identifier )* ( identifierSuffix )? | primitiveType ( ''['' '']'' )* ''.'' ''class'' | ''void'' ''.'' ''class'' );
function TJava_JavaExpr.primary():Integer;
var
  _alt:array [0..255] of Integer;
  primary_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    primary_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 228) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:120:5: ( parExpression | nonWildcardTypeArguments ( explicitGenericInvocationSuffix | ''this'' arguments ) | ''this'' ( ''.'' Identifier )* ( identifierSuffix )? | ''super'' superSuffix | literal | ''new'' creator | Identifier ( ''.'' Identifier )* ( identifierSuffix )? | primitiveType ( ''['' '']'' )* ''.'' ''class'' | ''void'' ''.'' ''class'' )
        _alt[30]:=9;

        case input.LA(1) of
         65: 
            begin
            _alt[30]:=1;
            end;
         33: 
            begin
            _alt[30]:=2;
            end;
         94: 
            begin
            _alt[30]:=3;
            end;
         64: 
            begin
            _alt[30]:=4;
            end;
         FloatingPointLiteral , 
         CharacterLiteral , 
         StringLiteral , 
         HexLiteral , 
         OctalLiteral , 
         DecimalLiteral , 
         96 , 
         97 , 
         98: 
            begin
            _alt[30]:=5;
            end;
         95: 
            begin
            _alt[30]:=6;
            end;
         Identifier: 
            begin
            _alt[30]:=7;
            end;
         55 , 
         56 , 
         57 , 
         58 , 
         59 , 
         60 , 
         61 , 
         62: 
            begin
            _alt[30]:=8;
            end;
         40: 
            begin
            _alt[30]:=9;
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
            , 30, 0, input);

        end;
        end;

        case (_alt[30]) of 
             1 :
                begin
                // JavaExpr.g:120:7: parExpression
                begin
                pushFollow(FOLLOW_parExpression_in_primary813);
                parExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:121:9: nonWildcardTypeArguments ( explicitGenericInvocationSuffix | ''this'' arguments )
                begin
                pushFollow(FOLLOW_nonWildcardTypeArguments_in_primary823);
                nonWildcardTypeArguments();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:122:9: ( explicitGenericInvocationSuffix | ''this'' arguments )
                _alt[24]:=2;
                _LA[24,0] := input.LA(1);

                if ( ((_LA[24,0]=Identifier) or (_LA[24,0]=64)) ) then 
                begin
                  _alt[24]:=1;
                end
                else if ( ((_LA[24,0]=94)) ) then 
                begin
                  _alt[24]:=2;
                end
                else begin
                    if (state.backtracking>0) then 
                    begin 
                      state.failed:=true; 
                      Exit;  
                    end;
                    //Todo:raise ENoViableAltException.CreateNoViable(''
                    raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                    , 24, 0, input);    

                end;
                case (_alt[24]) of
                     1 :
                        begin
                        // JavaExpr.g:122:10: explicitGenericInvocationSuffix
                        begin
                        pushFollow(FOLLOW_explicitGenericInvocationSuffix_in_primary834);
                        explicitGenericInvocationSuffix();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;
                     2 :
                        begin
                        // JavaExpr.g:122:44: ''this'' arguments
                        begin
                        match(input,94,FOLLOW_94_in_primary838); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_arguments_in_primary840);
                        arguments();

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
             3 :
                begin
                // JavaExpr.g:123:9: ''this'' ( ''.'' Identifier )* ( identifierSuffix )?
                begin
                match(input,94,FOLLOW_94_in_primary851); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaExpr.g:123:16: ( ''.'' Identifier )*
                repeat 
                    _alt[25]:=2;
                    _LA[25,0] := input.LA(1);

                    if ( ((_LA[25,0]=28)) ) then 
                    begin
                      _LA[25,2] := input.LA(2);

                      if ( ((_LA[25,2]=Identifier)) ) then 
                      begin
                        _LA[25,3] := input.LA(3);

                        if ( (synpred50_JavaExpr()) ) then 
                        begin
                          _alt[25]:=1;
                        end

                        ;

                      end

                      ;

                    end

                    ;

                    case (_alt[25]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:123:17: ''.'' Identifier
                	    begin
                	    match(input,28,FOLLOW_28_in_primary854); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,Identifier,FOLLOW_Identifier_in_primary856); 
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

                // block:JavaExpr.g:123:34: ( identifierSuffix )?
                _alt[26]:=2;
                {** The code to initiate execution of a cyclic DFA; this is used
                 *  in the rule to predict an alt just like the fixed DFA case.
                 *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
                 *}
                _alt[26] := getDfa26.predict(input);
                case (_alt[26]) of
                     1 :
                        begin
                        // JavaExpr.g:123:35: identifierSuffix
                        begin
                        pushFollow(FOLLOW_identifierSuffix_in_primary861);
                        identifierSuffix();

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
             4 :
                begin
                // JavaExpr.g:124:9: ''super'' superSuffix
                begin
                match(input,64,FOLLOW_64_in_primary873); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_superSuffix_in_primary875);
                superSuffix();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaExpr.g:125:9: literal
                begin
                pushFollow(FOLLOW_literal_in_primary885);
                literal();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaExpr.g:126:9: ''new'' creator
                begin
                match(input,95,FOLLOW_95_in_primary895); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_creator_in_primary897);
                creator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // JavaExpr.g:127:9: Identifier ( ''.'' Identifier )* ( identifierSuffix )?
                begin
                match(input,Identifier,FOLLOW_Identifier_in_primary907); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaExpr.g:127:20: ( ''.'' Identifier )*
                repeat 
                    _alt[27]:=2;
                    _LA[27,0] := input.LA(1);

                    if ( ((_LA[27,0]=28)) ) then 
                    begin
                      _LA[27,2] := input.LA(2);

                      if ( ((_LA[27,2]=Identifier)) ) then 
                      begin
                        _LA[27,3] := input.LA(3);

                        if ( (synpred56_JavaExpr()) ) then 
                        begin
                          _alt[27]:=1;
                        end

                        ;

                      end

                      ;

                    end

                    ;

                    case (_alt[27]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:127:21: ''.'' Identifier
                	    begin
                	    match(input,28,FOLLOW_28_in_primary910); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,Identifier,FOLLOW_Identifier_in_primary912); 
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

                // block:JavaExpr.g:127:38: ( identifierSuffix )?
                _alt[28]:=2;
                {** The code to initiate execution of a cyclic DFA; this is used
                 *  in the rule to predict an alt just like the fixed DFA case.
                 *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
                 *}
                _alt[28] := getDfa28.predict(input);
                case (_alt[28]) of
                     1 :
                        begin
                        // JavaExpr.g:127:39: identifierSuffix
                        begin
                        pushFollow(FOLLOW_identifierSuffix_in_primary917);
                        identifierSuffix();

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
             8 :
                begin
                // JavaExpr.g:128:9: primitiveType ( ''['' '']'' )* ''.'' ''class''
                begin
                pushFollow(FOLLOW_primitiveType_in_primary929);
                TJavaParser(gJava).primitiveType();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaExpr.g:128:23: ( ''['' '']'' )*
                repeat 
                    _alt[29]:=2;
                    _LA[29,0] := input.LA(1);

                    if ( ((_LA[29,0]=41)) ) then 
                    begin
                      _alt[29]:=1;
                    end

                    ;

                    case (_alt[29]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:128:24: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_primary932); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_primary934); 
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

                match(input,28,FOLLOW_28_in_primary938); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,30,FOLLOW_30_in_primary940); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             9 :
                begin
                // JavaExpr.g:129:9: ''void'' ''.'' ''class''
                begin
                match(input,40,FOLLOW_40_in_primary950); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,28,FOLLOW_28_in_primary952); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,30,FOLLOW_30_in_primary954); 
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
          memoize(input, 228, primary_StartIndex);
        end;
    end;
end;// $ANTLR start "identifierSuffix"
// JavaExpr.g:132:1: identifierSuffix : ( ( ''['' '']'' )+ ''.'' ''class'' | ( ''['' expression '']'' )+ | arguments | ''.'' ''class'' | ''.'' explicitGenericInvocation | ''.'' ''this'' | ''.'' ''super'' arguments | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator );
function TJava_JavaExpr.identifierSuffix():Integer;
var
  _alt:array [0..255] of Integer;
  identifierSuffix_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    identifierSuffix_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 229) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:133:2: ( ( ''['' '']'' )+ ''.'' ''class'' | ( ''['' expression '']'' )+ | arguments | ''.'' ''class'' | ''.'' explicitGenericInvocation | ''.'' ''this'' | ''.'' ''super'' arguments | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator )
        _alt[34]:=8;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
         *}
        _alt[34] := getDfa34.predict(input);
        case (_alt[34]) of 
             1 :
                begin
                // JavaExpr.g:133:4: ( ''['' '']'' )+ ''.'' ''class''
                begin
                // positiveClosureBlock:JavaExpr.g:133:4: ( ''['' '']'' )+
                _cnt[31]:=0;
                repeat 
                    _alt[31]:=2;
                    //before decision
                    _LA[31,0] := input.LA(1);

                    if ( ((_LA[31,0]=41)) ) then 
                    begin
                      _alt[31]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[31]) of 
                	 1 :
                	    begin
                	    // JavaExpr.g:133:5: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_identifierSuffix966); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_identifierSuffix968); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;

                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[31] >= 1 ) then
                	        break ;
                	      if (state.backtracking>0) then 
                	      begin 
                	        state.failed:=true; 
                	        Exit;  
                	      end;
                	        raise EEarlyExitException.CreateWithDecision(31, input);
                        end;
                    end;
                    _cnt[31]:=_cnt[31]+1;
                until (false);

                match(input,28,FOLLOW_28_in_identifierSuffix972); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,30,FOLLOW_30_in_identifierSuffix974); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:134:4: ( ''['' expression '']'' )+
                begin
                // positiveClosureBlock:JavaExpr.g:134:4: ( ''['' expression '']'' )+
                _cnt[32]:=0;
                repeat 
                    _alt[32]:=2;
                    //before decision
                    {** The code to initiate execution of a cyclic DFA; this is used
                     *  in the rule to predict an alt just like the fixed DFA case.
                     *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
                     *}
                    _alt[32] := getDfa32.predict(input);
                    //after decision
                    case (_alt[32]) of 
                	 1 :
                	    begin
                	    // JavaExpr.g:134:5: ''['' expression '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_identifierSuffix980); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    pushFollow(FOLLOW_expression_in_identifierSuffix982);
                	    expression();

                	    state._fsp:=state._fsp-1;
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_identifierSuffix984); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;

                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[32] >= 1 ) then
                	        break ;
                	      if (state.backtracking>0) then 
                	      begin 
                	        state.failed:=true; 
                	        Exit;  
                	      end;
                	        raise EEarlyExitException.CreateWithDecision(32, input);
                        end;
                    end;
                    _cnt[32]:=_cnt[32]+1;
                until (false);


                end;
                end;
             3 :
                begin
                // JavaExpr.g:135:9: arguments
                begin
                pushFollow(FOLLOW_arguments_in_identifierSuffix997);
                arguments();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:136:9: ''.'' ''class''
                begin
                match(input,28,FOLLOW_28_in_identifierSuffix1007); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,30,FOLLOW_30_in_identifierSuffix1009); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaExpr.g:137:9: ''.'' explicitGenericInvocation
                begin
                match(input,28,FOLLOW_28_in_identifierSuffix1019); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_explicitGenericInvocation_in_identifierSuffix1021);
                explicitGenericInvocation();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaExpr.g:138:9: ''.'' ''this''
                begin
                match(input,28,FOLLOW_28_in_identifierSuffix1031); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,94,FOLLOW_94_in_identifierSuffix1033); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // JavaExpr.g:139:9: ''.'' ''super'' arguments
                begin
                match(input,28,FOLLOW_28_in_identifierSuffix1043); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,64,FOLLOW_64_in_identifierSuffix1045); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_arguments_in_identifierSuffix1047);
                arguments();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             8 :
                begin
                // JavaExpr.g:140:9: ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator
                begin
                match(input,28,FOLLOW_28_in_identifierSuffix1057); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,95,FOLLOW_95_in_identifierSuffix1059); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:140:19: ( nonWildcardTypeArguments )?
                _alt[33]:=2;
                _LA[33,0] := input.LA(1);

                if ( ((_LA[33,0]=33)) ) then 
                begin
                  _alt[33]:=1;
                end
                ;
                case (_alt[33]) of
                     1 :
                        begin
                        // JavaExpr.g:140:20: nonWildcardTypeArguments
                        begin
                        pushFollow(FOLLOW_nonWildcardTypeArguments_in_identifierSuffix1062);
                        nonWildcardTypeArguments();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                pushFollow(FOLLOW_innerCreator_in_identifierSuffix1066);
                innerCreator();

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
          memoize(input, 229, identifierSuffix_StartIndex);
        end;
    end;
end;// $ANTLR start "creator"
// JavaExpr.g:143:1: creator : ( nonWildcardTypeArguments )? createdName ( arrayCreatorRest | classCreatorRest ) ;
function TJava_JavaExpr.creator():Integer;
var
  _alt:array [0..255] of Integer;
  creator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    creator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 230) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:144:2: ( ( nonWildcardTypeArguments )? createdName ( arrayCreatorRest | classCreatorRest ) )
        // JavaExpr.g:144:4: ( nonWildcardTypeArguments )? createdName ( arrayCreatorRest | classCreatorRest )
        begin
        // block:JavaExpr.g:144:4: ( nonWildcardTypeArguments )?
        _alt[35]:=2;
        _LA[35,0] := input.LA(1);

        if ( ((_LA[35,0]=33)) ) then 
        begin
          _alt[35]:=1;
        end
        ;
        case (_alt[35]) of
             1 :
                begin
                // JavaExpr.g:0:0: nonWildcardTypeArguments
                begin
                pushFollow(FOLLOW_nonWildcardTypeArguments_in_creator1078);
                nonWildcardTypeArguments();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_createdName_in_creator1081);
        createdName();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:145:9: ( arrayCreatorRest | classCreatorRest )
        _alt[36]:=2;
        _LA[36,0] := input.LA(1);

        if ( ((_LA[36,0]=41)) ) then 
        begin
          _alt[36]:=1;
        end
        else if ( ((_LA[36,0]=65)) ) then 
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
                // JavaExpr.g:145:10: arrayCreatorRest
                begin
                pushFollow(FOLLOW_arrayCreatorRest_in_creator1092);
                arrayCreatorRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:145:29: classCreatorRest
                begin
                pushFollow(FOLLOW_classCreatorRest_in_creator1096);
                classCreatorRest();

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
          memoize(input, 230, creator_StartIndex);
        end;
    end;
end;// $ANTLR start "createdName"
// JavaExpr.g:148:1: createdName : ( Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* | primitiveType );
function TJava_JavaExpr.createdName():Integer;
var
  _alt:array [0..255] of Integer;
  createdName_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    createdName_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 231) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:149:2: ( Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )* | primitiveType )
        _alt[40]:=2;
        _LA[40,0] := input.LA(1);

        if ( ((_LA[40,0]=Identifier)) ) then 
        begin
          _alt[40]:=1;
        end
        else if ( (((_LA[40,0]>=55) and 
        ( _LA[40,0]<=62))) ) then 
        begin
          _alt[40]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 40, 0, input);    

        end;
        case (_alt[40]) of 
             1 :
                begin
                // JavaExpr.g:149:4: Identifier ( typeArguments )? ( ''.'' Identifier ( typeArguments )? )*
                begin
                match(input,Identifier,FOLLOW_Identifier_in_createdName1108); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:149:15: ( typeArguments )?
                _alt[37]:=2;
                _LA[37,0] := input.LA(1);

                if ( ((_LA[37,0]=33)) ) then 
                begin
                  _alt[37]:=1;
                end
                ;
                case (_alt[37]) of
                     1 :
                        begin
                        // JavaExpr.g:0:0: typeArguments
                        begin
                        pushFollow(FOLLOW_typeArguments_in_createdName1110);
                        TJavaParser(gJava).typeArguments();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                // closureBlock:JavaExpr.g:150:9: ( ''.'' Identifier ( typeArguments )? )*
                repeat 
                    _alt[39]:=2;
                    _LA[39,0] := input.LA(1);

                    if ( ((_LA[39,0]=28)) ) then 
                    begin
                      _alt[39]:=1;
                    end

                    ;

                    case (_alt[39]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:150:10: ''.'' Identifier ( typeArguments )?
                	    begin
                	    match(input,28,FOLLOW_28_in_createdName1122); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,Identifier,FOLLOW_Identifier_in_createdName1124); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:JavaExpr.g:150:25: ( typeArguments )?
                	    _alt[38]:=2;
                	    _LA[38,0] := input.LA(1);

                	    if ( ((_LA[38,0]=33)) ) then 
                	    begin
                	      _alt[38]:=1;
                	    end
                	    ;
                	    case (_alt[38]) of
                	         1 :
                	            begin
                	            // JavaExpr.g:0:0: typeArguments
                	            begin
                	            pushFollow(FOLLOW_typeArguments_in_createdName1126);
                	            TJavaParser(gJava).typeArguments();

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


                end;
                end;
             2 :
                begin
                // JavaExpr.g:151:7: primitiveType
                begin
                pushFollow(FOLLOW_primitiveType_in_createdName1137);
                TJavaParser(gJava).primitiveType();

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
          memoize(input, 231, createdName_StartIndex);
        end;
    end;
end;// $ANTLR start "innerCreator"
// JavaExpr.g:154:1: innerCreator : Identifier classCreatorRest ;
function TJava_JavaExpr.innerCreator():Integer;
var
  _alt:array [0..255] of Integer;
  innerCreator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    innerCreator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 232) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:155:2: ( Identifier classCreatorRest )
        // JavaExpr.g:155:4: Identifier classCreatorRest
        begin
        match(input,Identifier,FOLLOW_Identifier_in_innerCreator1149); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_classCreatorRest_in_innerCreator1151);
        classCreatorRest();

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
          memoize(input, 232, innerCreator_StartIndex);
        end;
    end;
end;// $ANTLR start "arrayCreatorRest"
// JavaExpr.g:158:1: arrayCreatorRest : ''['' ( '']'' ( ''['' '']'' )* arrayInitializer | expression '']'' ( ''['' expression '']'' )* ( ''['' '']'' )* ) ;
function TJava_JavaExpr.arrayCreatorRest():Integer;
var
  _alt:array [0..255] of Integer;
  arrayCreatorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    arrayCreatorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 233) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:159:2: ( ''['' ( '']'' ( ''['' '']'' )* arrayInitializer | expression '']'' ( ''['' expression '']'' )* ( ''['' '']'' )* ) )
        // JavaExpr.g:159:4: ''['' ( '']'' ( ''['' '']'' )* arrayInitializer | expression '']'' ( ''['' expression '']'' )* ( ''['' '']'' )* )
        begin
        match(input,41,FOLLOW_41_in_arrayCreatorRest1162); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:160:9: ( '']'' ( ''['' '']'' )* arrayInitializer | expression '']'' ( ''['' expression '']'' )* ( ''['' '']'' )* )
        _alt[44]:=2;
        _LA[44,0] := input.LA(1);

        if ( ((_LA[44,0]=42)) ) then 
        begin
          _alt[44]:=1;
        end
        else if ( ((_LA[44,0]=Identifier) or ((_LA[44,0]>=FloatingPointLiteral) and 
        ( _LA[44,0]<=DecimalLiteral)) or (_LA[44,0]=33) or (_LA[44,0]=40) or ((_LA[44,0]>=55) and 
        ( _LA[44,0]<=62)) or ((_LA[44,0]>=64) and 
        ( _LA[44,0]<=65)) or ((_LA[44,0]>=86) and 
        ( _LA[44,0]<=87)) or ((_LA[44,0]>=90) and 
        ( _LA[44,0]<=98))) ) then 
        begin
          _alt[44]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 44, 0, input);    

        end;
        case (_alt[44]) of
             1 :
                begin
                // JavaExpr.g:160:13: '']'' ( ''['' '']'' )* arrayInitializer
                begin
                match(input,42,FOLLOW_42_in_arrayCreatorRest1176); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaExpr.g:160:17: ( ''['' '']'' )*
                repeat 
                    _alt[41]:=2;
                    _LA[41,0] := input.LA(1);

                    if ( ((_LA[41,0]=41)) ) then 
                    begin
                      _alt[41]:=1;
                    end

                    ;

                    case (_alt[41]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:160:18: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_arrayCreatorRest1179); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_arrayCreatorRest1181); 
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

                pushFollow(FOLLOW_arrayInitializer_in_arrayCreatorRest1185);
                TJavaParser(gJava).arrayInitializer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:161:13: expression '']'' ( ''['' expression '']'' )* ( ''['' '']'' )*
                begin
                pushFollow(FOLLOW_expression_in_arrayCreatorRest1199);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,42,FOLLOW_42_in_arrayCreatorRest1201); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaExpr.g:161:28: ( ''['' expression '']'' )*
                repeat 
                    _alt[42]:=2;
                    {** The code to initiate execution of a cyclic DFA; this is used
                     *  in the rule to predict an alt just like the fixed DFA case.
                     *  The Java_JavaExpr attribute is inherited via the parser, lexer, ...
                     *}
                    _alt[42] := getDfa42.predict(input);
                    case (_alt[42]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:161:29: ''['' expression '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_arrayCreatorRest1204); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    pushFollow(FOLLOW_expression_in_arrayCreatorRest1206);
                	    expression();

                	    state._fsp:=state._fsp-1;
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_arrayCreatorRest1208); 
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

                // closureBlock:JavaExpr.g:161:50: ( ''['' '']'' )*
                repeat 
                    _alt[43]:=2;
                    _LA[43,0] := input.LA(1);

                    if ( ((_LA[43,0]=41)) ) then 
                    begin
                      _LA[43,2] := input.LA(2);

                      if ( ((_LA[43,2]=42)) ) then 
                      begin
                        _alt[43]:=1;
                      end

                      ;

                    end

                    ;

                    case (_alt[43]) of
                	 1 :
                	    begin
                	    // JavaExpr.g:161:51: ''['' '']''
                	    begin
                	    match(input,41,FOLLOW_41_in_arrayCreatorRest1213); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    match(input,42,FOLLOW_42_in_arrayCreatorRest1215); 
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
          memoize(input, 233, arrayCreatorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "classCreatorRest"
// JavaExpr.g:165:1: classCreatorRest : arguments ( classBody )? ;
function TJava_JavaExpr.classCreatorRest():Integer;
var
  _alt:array [0..255] of Integer;
  classCreatorRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    classCreatorRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 234) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:166:2: ( arguments ( classBody )? )
        // JavaExpr.g:166:4: arguments ( classBody )?
        begin
        pushFollow(FOLLOW_arguments_in_classCreatorRest1238);
        arguments();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:166:14: ( classBody )?
        _alt[45]:=2;
        _LA[45,0] := input.LA(1);

        if ( ((_LA[45,0]=37)) ) then 
        begin
          _alt[45]:=1;
        end
        ;
        case (_alt[45]) of
             1 :
                begin
                // JavaExpr.g:0:0: classBody
                begin
                pushFollow(FOLLOW_classBody_in_classCreatorRest1240);
                TJavaParser(gJava).classBody();

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
          memoize(input, 234, classCreatorRest_StartIndex);
        end;
    end;
end;// $ANTLR start "explicitGenericInvocation"
// JavaExpr.g:169:1: explicitGenericInvocation : nonWildcardTypeArguments explicitGenericInvocationSuffix ;
function TJava_JavaExpr.explicitGenericInvocation():Integer;
var
  _alt:array [0..255] of Integer;
  explicitGenericInvocation_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    explicitGenericInvocation_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 235) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:170:2: ( nonWildcardTypeArguments explicitGenericInvocationSuffix )
        // JavaExpr.g:170:4: nonWildcardTypeArguments explicitGenericInvocationSuffix
        begin
        pushFollow(FOLLOW_nonWildcardTypeArguments_in_explicitGenericInvocation1253);
        nonWildcardTypeArguments();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_explicitGenericInvocationSuffix_in_explicitGenericInvocation1255);
        explicitGenericInvocationSuffix();

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
          memoize(input, 235, explicitGenericInvocation_StartIndex);
        end;
    end;
end;// $ANTLR start "nonWildcardTypeArguments"
// JavaExpr.g:173:1: nonWildcardTypeArguments : ''<'' typeList ''>'' ;
function TJava_JavaExpr.nonWildcardTypeArguments():Integer;
var
  _alt:array [0..255] of Integer;
  nonWildcardTypeArguments_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    nonWildcardTypeArguments_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 236) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:174:2: ( ''<'' typeList ''>'' )
        // JavaExpr.g:174:4: ''<'' typeList ''>''
        begin
        match(input,33,FOLLOW_33_in_nonWildcardTypeArguments1267); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_typeList_in_nonWildcardTypeArguments1269);
        TJavaParser(gJava).typeList();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,35,FOLLOW_35_in_nonWildcardTypeArguments1271); 
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
          memoize(input, 236, nonWildcardTypeArguments_StartIndex);
        end;
    end;
end;// $ANTLR start "explicitGenericInvocationSuffix"
// JavaExpr.g:177:1: explicitGenericInvocationSuffix : ( ''super'' superSuffix | Identifier arguments );
function TJava_JavaExpr.explicitGenericInvocationSuffix():Integer;
var
  _alt:array [0..255] of Integer;
  explicitGenericInvocationSuffix_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    explicitGenericInvocationSuffix_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 237) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:178:2: ( ''super'' superSuffix | Identifier arguments )
        _alt[46]:=2;
        _LA[46,0] := input.LA(1);

        if ( ((_LA[46,0]=64)) ) then 
        begin
          _alt[46]:=1;
        end
        else if ( ((_LA[46,0]=Identifier)) ) then 
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
                // JavaExpr.g:178:4: ''super'' superSuffix
                begin
                match(input,64,FOLLOW_64_in_explicitGenericInvocationSuffix1283); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_superSuffix_in_explicitGenericInvocationSuffix1285);
                superSuffix();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:179:6: Identifier arguments
                begin
                match(input,Identifier,FOLLOW_Identifier_in_explicitGenericInvocationSuffix1292); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_arguments_in_explicitGenericInvocationSuffix1294);
                arguments();

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
          memoize(input, 237, explicitGenericInvocationSuffix_StartIndex);
        end;
    end;
end;// $ANTLR start "selector"
// JavaExpr.g:182:1: selector : ( ''.'' Identifier ( arguments )? | ''.'' ''this'' | ''.'' ''super'' superSuffix | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator | ''['' expression '']'' );
function TJava_JavaExpr.selector():Integer;
var
  _alt:array [0..255] of Integer;
  selector_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    selector_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 238) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:183:2: ( ''.'' Identifier ( arguments )? | ''.'' ''this'' | ''.'' ''super'' superSuffix | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator | ''['' expression '']'' )
        _alt[49]:=5;
        _LA[49,0] := input.LA(1);

        if ( ((_LA[49,0]=28)) ) then 
        begin

          case input.LA(2) of
           Identifier: 
              begin
              _alt[49]:=1;
              end;
           94: 
              begin
              _alt[49]:=2;
              end;
           64: 
              begin
              _alt[49]:=3;
              end;
           95: 
              begin
              _alt[49]:=4;
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
              , 49, 1, input);

          end;
          end;

        end
        else if ( ((_LA[49,0]=41)) ) then 
        begin
          _alt[49]:=5;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 49, 0, input);    

        end;
        case (_alt[49]) of 
             1 :
                begin
                // JavaExpr.g:183:4: ''.'' Identifier ( arguments )?
                begin
                match(input,28,FOLLOW_28_in_selector1306); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,Identifier,FOLLOW_Identifier_in_selector1308); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:183:19: ( arguments )?
                _alt[47]:=2;
                _LA[47,0] := input.LA(1);

                if ( ((_LA[47,0]=65)) ) then 
                begin
                  _alt[47]:=1;
                end
                ;
                case (_alt[47]) of
                     1 :
                        begin
                        // JavaExpr.g:183:20: arguments
                        begin
                        pushFollow(FOLLOW_arguments_in_selector1311);
                        arguments();

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
                // JavaExpr.g:184:6: ''.'' ''this''
                begin
                match(input,28,FOLLOW_28_in_selector1320); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,94,FOLLOW_94_in_selector1322); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:185:6: ''.'' ''super'' superSuffix
                begin
                match(input,28,FOLLOW_28_in_selector1329); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,64,FOLLOW_64_in_selector1331); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_superSuffix_in_selector1333);
                superSuffix();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:186:6: ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator
                begin
                match(input,28,FOLLOW_28_in_selector1340); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,95,FOLLOW_95_in_selector1342); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:186:16: ( nonWildcardTypeArguments )?
                _alt[48]:=2;
                _LA[48,0] := input.LA(1);

                if ( ((_LA[48,0]=33)) ) then 
                begin
                  _alt[48]:=1;
                end
                ;
                case (_alt[48]) of
                     1 :
                        begin
                        // JavaExpr.g:186:17: nonWildcardTypeArguments
                        begin
                        pushFollow(FOLLOW_nonWildcardTypeArguments_in_selector1345);
                        nonWildcardTypeArguments();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                pushFollow(FOLLOW_innerCreator_in_selector1349);
                innerCreator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaExpr.g:187:6: ''['' expression '']''
                begin
                match(input,41,FOLLOW_41_in_selector1356); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_selector1358);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,42,FOLLOW_42_in_selector1360); 
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
          memoize(input, 238, selector_StartIndex);
        end;
    end;
end;// $ANTLR start "superSuffix"
// JavaExpr.g:190:1: superSuffix : ( arguments | ''.'' Identifier ( arguments )? );
function TJava_JavaExpr.superSuffix():Integer;
var
  _alt:array [0..255] of Integer;
  superSuffix_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    superSuffix_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 239) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:191:2: ( arguments | ''.'' Identifier ( arguments )? )
        _alt[51]:=2;
        _LA[51,0] := input.LA(1);

        if ( ((_LA[51,0]=65)) ) then 
        begin
          _alt[51]:=1;
        end
        else if ( ((_LA[51,0]=28)) ) then 
        begin
          _alt[51]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 51, 0, input);    

        end;
        case (_alt[51]) of 
             1 :
                begin
                // JavaExpr.g:191:4: arguments
                begin
                pushFollow(FOLLOW_arguments_in_superSuffix1372);
                arguments();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:192:6: ''.'' Identifier ( arguments )?
                begin
                match(input,28,FOLLOW_28_in_superSuffix1379); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,Identifier,FOLLOW_Identifier_in_superSuffix1381); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaExpr.g:192:21: ( arguments )?
                _alt[50]:=2;
                _LA[50,0] := input.LA(1);

                if ( ((_LA[50,0]=65)) ) then 
                begin
                  _alt[50]:=1;
                end
                ;
                case (_alt[50]) of
                     1 :
                        begin
                        // JavaExpr.g:192:22: arguments
                        begin
                        pushFollow(FOLLOW_arguments_in_superSuffix1384);
                        arguments();

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
          memoize(input, 239, superSuffix_StartIndex);
        end;
    end;
end;// $ANTLR start "arguments"
// JavaExpr.g:195:1: arguments : ''('' ( expressionList )? '')'' ;
function TJava_JavaExpr.arguments():Integer;
var
  _alt:array [0..255] of Integer;
  arguments_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    arguments_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 240) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:196:2: ( ''('' ( expressionList )? '')'' )
        // JavaExpr.g:196:4: ''('' ( expressionList )? '')''
        begin
        match(input,65,FOLLOW_65_in_arguments1400); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaExpr.g:196:8: ( expressionList )?
        _alt[52]:=2;
        _LA[52,0] := input.LA(1);

        if ( ((_LA[52,0]=Identifier) or ((_LA[52,0]>=FloatingPointLiteral) and 
        ( _LA[52,0]<=DecimalLiteral)) or (_LA[52,0]=33) or (_LA[52,0]=40) or ((_LA[52,0]>=55) and 
        ( _LA[52,0]<=62)) or ((_LA[52,0]>=64) and 
        ( _LA[52,0]<=65)) or ((_LA[52,0]>=86) and 
        ( _LA[52,0]<=87)) or ((_LA[52,0]>=90) and 
        ( _LA[52,0]<=98))) ) then 
        begin
          _alt[52]:=1;
        end
        ;
        case (_alt[52]) of
             1 :
                begin
                // JavaExpr.g:0:0: expressionList
                begin
                pushFollow(FOLLOW_expressionList_in_arguments1402);
                expressionList();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,66,FOLLOW_66_in_arguments1405); 
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
          memoize(input, 240, arguments_StartIndex);
        end;
    end;
end;// $ANTLR start "literal"
// JavaExpr.g:199:1: literal : ( integerLiteral | FloatingPointLiteral | CharacterLiteral | StringLiteral | booleanLiteral | ''null'' );
function TJava_JavaExpr.literal():Integer;
var
  _alt:array [0..255] of Integer;
  literal_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    literal_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 241) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaExpr.g:200:5: ( integerLiteral | FloatingPointLiteral | CharacterLiteral | StringLiteral | booleanLiteral | ''null'' )
        _alt[53]:=6;

        case input.LA(1) of
         HexLiteral , 
         OctalLiteral , 
         DecimalLiteral: 
            begin
            _alt[53]:=1;
            end;
         FloatingPointLiteral: 
            begin
            _alt[53]:=2;
            end;
         CharacterLiteral: 
            begin
            _alt[53]:=3;
            end;
         StringLiteral: 
            begin
            _alt[53]:=4;
            end;
         97 , 
         98: 
            begin
            _alt[53]:=5;
            end;
         96: 
            begin
            _alt[53]:=6;
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
            , 53, 0, input);

        end;
        end;

        case (_alt[53]) of 
             1 :
                begin
                // JavaExpr.g:200:9: integerLiteral
                begin
                pushFollow(FOLLOW_integerLiteral_in_literal1421);
                integerLiteral();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaExpr.g:201:9: FloatingPointLiteral
                begin
                match(input,FloatingPointLiteral,FOLLOW_FloatingPointLiteral_in_literal1431); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaExpr.g:202:9: CharacterLiteral
                begin
                match(input,CharacterLiteral,FOLLOW_CharacterLiteral_in_literal1441); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // JavaExpr.g:203:9: StringLiteral
                begin
                match(input,StringLiteral,FOLLOW_StringLiteral_in_literal1451); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaExpr.g:204:9: booleanLiteral
                begin
                pushFollow(FOLLOW_booleanLiteral_in_literal1461);
                booleanLiteral();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaExpr.g:205:9: ''null''
                begin
                match(input,96,FOLLOW_96_in_literal1471); 
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
          memoize(input, 241, literal_StartIndex);
        end;
    end;
end;// $ANTLR start "integerLiteral"
// JavaExpr.g:208:1: integerLiteral : ( HexLiteral | OctalLiteral | DecimalLiteral );
function TJava_JavaExpr.integerLiteral():Integer;
var
  _alt:array [0..255] of Integer;
  integerLiteral_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    integerLiteral_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 242) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:209:5: ( HexLiteral | OctalLiteral | DecimalLiteral )
        // JavaExpr.g:
        begin
        if ( ((input.LA(1)>=HexLiteral) and (input.LA(1)<=DecimalLiteral)) ) then
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
          memoize(input, 242, integerLiteral_StartIndex);
        end;
    end;
end;// $ANTLR start "booleanLiteral"
// JavaExpr.g:214:1: booleanLiteral : ( ''true'' | ''false'' );
function TJava_JavaExpr.booleanLiteral():Integer;
var
  _alt:array [0..255] of Integer;
  booleanLiteral_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    booleanLiteral_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 243) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaExpr.g:215:5: ( ''true'' | ''false'' )
        // JavaExpr.g:
        begin
        if ( ((input.LA(1)>=97) and (input.LA(1)<=98)) ) then
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
          memoize(input, 243, booleanLiteral_StartIndex);
        end;
    end;
end;// $ANTLR start "synpred2_JavaExpr"
function TJava_JavaExpr.synpred2_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:23:27: ( assignmentOperator expression )
    // JavaExpr.g:23:27: assignmentOperator expression
    begin
    pushFollow(FOLLOW_assignmentOperator_in_synpred2_JavaExpr91);
    assignmentOperator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_expression_in_synpred2_JavaExpr93);
    expression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred2_JavaExpr// $ANTLR start "synpred27_JavaExpr"
function TJava_JavaExpr.synpred27_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:82:30: ( shiftOp additiveExpression )
    // JavaExpr.g:82:30: shiftOp additiveExpression
    begin
    pushFollow(FOLLOW_shiftOp_in_synpred27_JavaExpr514);
    shiftOp();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_additiveExpression_in_synpred27_JavaExpr516);
    additiveExpression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred27_JavaExpr// $ANTLR start "synpred41_JavaExpr"
function TJava_JavaExpr.synpred41_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:110:9: ( castExpression )
    // JavaExpr.g:110:9: castExpression
    begin
    pushFollow(FOLLOW_castExpression_in_synpred41_JavaExpr731);
    castExpression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred41_JavaExpr// $ANTLR start "synpred45_JavaExpr"
function TJava_JavaExpr.synpred45_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:115:8: ( ''('' primitiveType '')'' unaryExpression )
    // JavaExpr.g:115:8: ''('' primitiveType '')'' unaryExpression
    begin
    match(input,65,FOLLOW_65_in_synpred45_JavaExpr769); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_primitiveType_in_synpred45_JavaExpr771);
    TJavaParser(gJava).primitiveType();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,66,FOLLOW_66_in_synpred45_JavaExpr773); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_unaryExpression_in_synpred45_JavaExpr775);
    unaryExpression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred45_JavaExpr// $ANTLR start "synpred46_JavaExpr"
function TJava_JavaExpr.synpred46_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:116:13: ( dtype )
    // JavaExpr.g:116:13: dtype
    begin
    pushFollow(FOLLOW_dtype_in_synpred46_JavaExpr787);
    TJavaParser(gJava).dtype();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred46_JavaExpr// $ANTLR start "synpred50_JavaExpr"
function TJava_JavaExpr.synpred50_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:123:17: ( ''.'' Identifier )
    // JavaExpr.g:123:17: ''.'' Identifier
    begin
    match(input,28,FOLLOW_28_in_synpred50_JavaExpr854); 
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,Identifier,FOLLOW_Identifier_in_synpred50_JavaExpr856); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred50_JavaExpr// $ANTLR start "synpred51_JavaExpr"
function TJava_JavaExpr.synpred51_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:123:35: ( identifierSuffix )
    // JavaExpr.g:123:35: identifierSuffix
    begin
    pushFollow(FOLLOW_identifierSuffix_in_synpred51_JavaExpr861);
    identifierSuffix();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred51_JavaExpr// $ANTLR start "synpred56_JavaExpr"
function TJava_JavaExpr.synpred56_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:127:21: ( ''.'' Identifier )
    // JavaExpr.g:127:21: ''.'' Identifier
    begin
    match(input,28,FOLLOW_28_in_synpred56_JavaExpr910); 
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,Identifier,FOLLOW_Identifier_in_synpred56_JavaExpr912); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred56_JavaExpr// $ANTLR start "synpred57_JavaExpr"
function TJava_JavaExpr.synpred57_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:127:39: ( identifierSuffix )
    // JavaExpr.g:127:39: identifierSuffix
    begin
    pushFollow(FOLLOW_identifierSuffix_in_synpred57_JavaExpr917);
    identifierSuffix();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred57_JavaExpr// $ANTLR start "synpred63_JavaExpr"
function TJava_JavaExpr.synpred63_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:134:5: ( ''['' expression '']'' )
    // JavaExpr.g:134:5: ''['' expression '']''
    begin
    match(input,41,FOLLOW_41_in_synpred63_JavaExpr980); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_expression_in_synpred63_JavaExpr982);
    expression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,42,FOLLOW_42_in_synpred63_JavaExpr984); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred63_JavaExpr// $ANTLR start "synpred79_JavaExpr"
function TJava_JavaExpr.synpred79_JavaExpr_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaExpr.g:161:29: ( ''['' expression '']'' )
    // JavaExpr.g:161:29: ''['' expression '']''
    begin
    match(input,41,FOLLOW_41_in_synpred79_JavaExpr1204); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_expression_in_synpred79_JavaExpr1206);
    expression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,42,FOLLOW_42_in_synpred79_JavaExpr1208); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred79_JavaExpr

function TJava_JavaExpr.synpred51_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred51_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred45_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred45_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred46_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred46_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred27_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred27_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred2_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred2_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred57_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred57_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred56_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred56_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred50_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred50_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred41_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred41_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred63_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred63_JavaExpr_fragment(); // can never throw exception
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
function TJava_JavaExpr.synpred79_JavaExpr():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred79_JavaExpr_fragment(); // can never throw exception
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



function TJava_JavaExpr.getDfa2:IDFA;
begin
  if not Assigned(dfa2) then
    dfa2:=TAntlrDFA2.Create(self);
  Result:=dfa2;  
end;

constructor TJava_JavaExpr.TAntlrDFA2.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=2;
  feot:=unpackEncodedString('\16\uffff');
  feof:=unpackEncodedString('\1\14\15\uffff');

  FMinc:=unpackEncodedString('\1\31\13\0\2\uffff');

  FMaxc:=unpackEncodedString('\1\116\13\0\2\uffff');
  faccept:=unpackEncodedString('\14\uffff\1\2\1\1');
  fspecial:=unpackEncodedString('\1\uffff\1\2\1\4\1\6\1\11\1\0\1\3\1\7\1'+
    '\12\1\1\1\10\1\5\2\uffff');
  AddTransition(unpackEncodedString('\1\14\7\uffff\1\12\1\14\1\13\2\uffff'+
  '\1\14\3\uffff\1\14\1\uffff\1\1\25\uffff\1\14\3\uffff\1\2\1\3\1\4\1\5\1'+
  '\6\1\7\1\10\1\11\1\14'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA2.getDescription():string;
begin
  Result:='23:26: ( assignmentOperator expression )?';
end;


function TJava_JavaExpr.TAntlrDFA2.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[2,5] := input.LA(1);

		         
		        _index['2_5'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_5']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[2,9] := input.LA(1);

		         
		        _index['2_9'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_9']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[2,1] := input.LA(1);

		         
		        _index['2_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[2,6] := input.LA(1);

		         
		        _index['2_6'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_6']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[2,2] := input.LA(1);

		         
		        _index['2_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_2']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[2,11] := input.LA(1);

		         
		        _index['2_11'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_11']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[2,3] := input.LA(1);

		         
		        _index['2_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_3']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[2,7] := input.LA(1);

		         
		        _index['2_7'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_7']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[2,10] := input.LA(1);

		         
		        _index['2_10'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_10']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[2,4] := input.LA(1);

		         
		        _index['2_4'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_4']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[2,8] := input.LA(1);

		         
		        _index['2_8'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaExpr()) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 12;
		        end
		        ;

		         
		        input.seek(_index['2_8']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 2, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaExpr.getDfa3:IDFA;
begin
  if not Assigned(dfa3) then
    dfa3:=TAntlrDFA3.Create(self);
  Result:=dfa3;  
end;

constructor TJava_JavaExpr.TAntlrDFA3.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=3;
  feot:=unpackEncodedString('\17\uffff');
  feof:=unpackEncodedString('\17\uffff');

  FMinc:=unpackEncodedString('\1\41\12\uffff\2\43\2\uffff');

  FMaxc:=unpackEncodedString('\1\115\12\uffff\1\43\1\54\2\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\1\4\1\5\1\6\1\7\1\10'+
    '\1\11\1\12\2\uffff\1\13\1\14');
  fspecial:=unpackEncodedString('\17\uffff');
  AddTransition(unpackEncodedString('\1\12\1\uffff\1\13\10\uffff\1\1\31'+
  '\uffff\1\2\1\3\1\4\1\5\1\6\1\7\1\10\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\14'));
  AddTransition(unpackEncodedString('\1\16\10\uffff\1\15'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA3.getDescription():string;
begin
  Result:='26:1: assignmentOperator : ( ''='' | ''+='' | ''-='' | ''*='' | ''/='' | ''&='' | ''|='' | ''^='+
  ''' | ''%='' | ''<'' ''<'' ''='' | ''>'' ''>'' ''='' | ''>'' ''>'' ''>'' ''='' );';
end;




function TJava_JavaExpr.getDfa14:IDFA;
begin
  if not Assigned(dfa14) then
    dfa14:=TAntlrDFA14.Create(self);
  Result:=dfa14;  
end;

constructor TJava_JavaExpr.TAntlrDFA14.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=14;
  feot:=unpackEncodedString('\34\uffff');
  feof:=unpackEncodedString('\1\3\33\uffff');

  FMinc:=unpackEncodedString('\1\31\2\0\31\uffff');

  FMaxc:=unpackEncodedString('\1\125\2\0\31\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\2\27\uffff\1\1');
  fspecial:=unpackEncodedString('\1\uffff\1\0\1\1\31\uffff');
  AddTransition(unpackEncodedString('\1\3\7\uffff\1\1\1\3\1\2\1\3\1\uffff'+
  '\1\3\3\uffff\1\3\1\uffff\1\3\22\uffff\1\3\2\uffff\1\3\3\uffff\20\3'));
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
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA14.getDescription():string;
begin
  Result:='()* loopback of 82:28: ( shiftOp additiveExpression )*';
end;


function TJava_JavaExpr.TAntlrDFA14.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[14,1] := input.LA(1);

		         
		        _index['14_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred27_JavaExpr()) ) then 
		        begin 
		          s := 27;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['14_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[14,2] := input.LA(1);

		         
		        _index['14_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred27_JavaExpr()) ) then 
		        begin 
		          s := 27;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['14_2']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 14, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaExpr.getDfa21:IDFA;
begin
  if not Assigned(dfa21) then
    dfa21:=TAntlrDFA21.Create(self);
  Result:=dfa21;  
end;

constructor TJava_JavaExpr.TAntlrDFA21.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=21;
  feot:=unpackEncodedString('\22\uffff');
  feof:=unpackEncodedString('\22\uffff');

  FMinc:=unpackEncodedString('\1\4\2\uffff\1\0\16\uffff');

  FMaxc:=unpackEncodedString('\1\142\2\uffff\1\0\16\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\uffff\1\4\14\uffff\1'+
    '\3');
  fspecial:=unpackEncodedString('\3\uffff\1\0\16\uffff');
  AddTransition(unpackEncodedString('\1\4\1\uffff\6\4\25\uffff\1\4\6\uffff'+
  '\1\4\16\uffff\10\4\1\uffff\1\4\1\3\32\uffff\1\1\1\2\5\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA21.getDescription():string;
begin
  Result:='107:1: unaryExpressionNotPlusMinus : ( ''~'' unaryExpression | ''!'' unaryExpression'+
  ' | castExpression | primary ( selector )* ( ''++'' | ''--'' )? );';
end;


function TJava_JavaExpr.TAntlrDFA21.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[21,3] := input.LA(1);

		         
		        _index['21_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred41_JavaExpr()) ) then 
		        begin 
		          s := 17;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 4;
		        end
		        ;

		         
		        input.seek(_index['21_3']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 21, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaExpr.getDfa22:IDFA;
begin
  if not Assigned(dfa22) then
    dfa22:=TAntlrDFA22.Create(self);
  Result:=dfa22;  
end;

constructor TJava_JavaExpr.TAntlrDFA22.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=22;
  feot:=unpackEncodedString('\7\uffff');
  feof:=unpackEncodedString('\7\uffff');

  FMinc:=unpackEncodedString('\1\4\1\0\1\34\2\uffff\1\52\1\34');

  FMaxc:=unpackEncodedString('\1\142\1\0\1\102\2\uffff\1\52\1\102');
  faccept:=unpackEncodedString('\3\uffff\1\2\1\1\2\uffff');
  fspecial:=unpackEncodedString('\1\uffff\1\0\5\uffff');
  AddTransition(unpackEncodedString('\1\1\1\uffff\6\3\25\uffff\1\3\6\uffff'+
  '\1\3\16\uffff\10\2\1\uffff\2\3\24\uffff\2\3\2\uffff\11\3'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\3\14\uffff\1\5\30\uffff\1\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\6'));
  AddTransition(unpackEncodedString('\1\3\14\uffff\1\5\30\uffff\1\4'));
end;

function TJava_JavaExpr.TAntlrDFA22.getDescription():string;
begin
  Result:='116:12: ( dtype | expression )';
end;


function TJava_JavaExpr.TAntlrDFA22.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[22,1] := input.LA(1);

		         
		        _index['22_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred46_JavaExpr()) ) then 
		        begin 
		          s := 4;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['22_1']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 22, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaExpr.getDfa26:IDFA;
begin
  if not Assigned(dfa26) then
    dfa26:=TAntlrDFA26.Create(self);
  Result:=dfa26;  
end;

constructor TJava_JavaExpr.TAntlrDFA26.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=26;
  feot:=unpackEncodedString('\41\uffff');
  feof:=unpackEncodedString('\1\4\40\uffff');

  FMinc:=unpackEncodedString('\1\31\1\0\1\uffff\1\0\35\uffff');

  FMaxc:=unpackEncodedString('\1\133\1\0\1\uffff\1\0\35\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\1\1\uffff\1\2\34\uffff');
  fspecial:=unpackEncodedString('\1\uffff\1\0\1\uffff\1\1\35\uffff');
  AddTransition(unpackEncodedString('\1\4\2\uffff\1\3\1\4\3\uffff\4\4\1'+
  '\uffff\1\4\2\uffff\1\1\1\4\1\uffff\1\4\22\uffff\1\4\1\uffff\1\2\1\4\3'+
  '\uffff\26\4'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA26.getDescription():string;
begin
  Result:='123:34: ( identifierSuffix )?';
end;


function TJava_JavaExpr.TAntlrDFA26.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[26,1] := input.LA(1);

		         
		        _index['26_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred51_JavaExpr()) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 4;
		        end
		        ;

		         
		        input.seek(_index['26_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[26,3] := input.LA(1);

		         
		        _index['26_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred51_JavaExpr()) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 4;
		        end
		        ;

		         
		        input.seek(_index['26_3']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 26, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaExpr.getDfa28:IDFA;
begin
  if not Assigned(dfa28) then
    dfa28:=TAntlrDFA28.Create(self);
  Result:=dfa28;  
end;

constructor TJava_JavaExpr.TAntlrDFA28.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=28;
  feot:=unpackEncodedString('\41\uffff');
  feof:=unpackEncodedString('\1\4\40\uffff');

  FMinc:=unpackEncodedString('\1\31\1\0\1\uffff\1\0\35\uffff');

  FMaxc:=unpackEncodedString('\1\133\1\0\1\uffff\1\0\35\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\1\1\uffff\1\2\34\uffff');
  fspecial:=unpackEncodedString('\1\uffff\1\0\1\uffff\1\1\35\uffff');
  AddTransition(unpackEncodedString('\1\4\2\uffff\1\3\1\4\3\uffff\4\4\1'+
  '\uffff\1\4\2\uffff\1\1\1\4\1\uffff\1\4\22\uffff\1\4\1\uffff\1\2\1\4\3'+
  '\uffff\26\4'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA28.getDescription():string;
begin
  Result:='127:38: ( identifierSuffix )?';
end;


function TJava_JavaExpr.TAntlrDFA28.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[28,1] := input.LA(1);

		         
		        _index['28_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred57_JavaExpr()) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 4;
		        end
		        ;

		         
		        input.seek(_index['28_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[28,3] := input.LA(1);

		         
		        _index['28_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred57_JavaExpr()) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 4;
		        end
		        ;

		         
		        input.seek(_index['28_3']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 28, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaExpr.getDfa34:IDFA;
begin
  if not Assigned(dfa34) then
    dfa34:=TAntlrDFA34.Create(self);
  Result:=dfa34;  
end;

constructor TJava_JavaExpr.TAntlrDFA34.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=34;
  feot:=unpackEncodedString('\13\uffff');
  feof:=unpackEncodedString('\13\uffff');

  FMinc:=unpackEncodedString('\1\34\1\4\1\uffff\1\36\7\uffff');

  FMaxc:=unpackEncodedString('\1\101\1\142\1\uffff\1\137\7\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\3\1\uffff\1\1\1\2\1\4\1\6\1\7'+
    '\1\10\1\5');
  fspecial:=unpackEncodedString('\13\uffff');
  AddTransition(unpackEncodedString('\1\3\14\uffff\1\1\27\uffff\1\2'));
  AddTransition(unpackEncodedString('\1\5\1\uffff\6\5\25\uffff\1\5\6\uffff'+
  '\1\5\1\uffff\1\4\14\uffff\10\5\1\uffff\2\5\24\uffff\2\5\2\uffff\11\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\6\2\uffff\1\12\36\uffff\1\10\35'+
  '\uffff\1\7\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA34.getDescription():string;
begin
  Result:='132:1: identifierSuffix : ( ( ''['' '']'' )+ ''.'' ''class'' | ( ''['' expression '']'' )+ |'+
  ' arguments | ''.'' ''class'' | ''.'' explicitGenericInvocation | ''.'' ''this'' | ''.'' ''sup'+
  'er'' arguments | ''.'' ''new'' ( nonWildcardTypeArguments )? innerCreator );';
end;




function TJava_JavaExpr.getDfa32:IDFA;
begin
  if not Assigned(dfa32) then
    dfa32:=TAntlrDFA32.Create(self);
  Result:=dfa32;  
end;

constructor TJava_JavaExpr.TAntlrDFA32.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=32;
  feot:=unpackEncodedString('\41\uffff');
  feof:=unpackEncodedString('\1\1\40\uffff');

  FMinc:=unpackEncodedString('\1\31\1\uffff\1\0\36\uffff');

  FMaxc:=unpackEncodedString('\1\133\1\uffff\1\0\36\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\36\uffff\1\1');
  fspecial:=unpackEncodedString('\2\uffff\1\0\36\uffff');
  AddTransition(unpackEncodedString('\1\1\2\uffff\2\1\3\uffff\4\1\1\uffff'+
  '\1\1\2\uffff\1\2\1\1\1\uffff\1\1\22\uffff\1\1\2\uffff\1\1\3\uffff\26\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA32.getDescription():string;
begin
  Result:='()+ loopback of 134:4: ( ''['' expression '']'' )+';
end;


function TJava_JavaExpr.TAntlrDFA32.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[32,2] := input.LA(1);

		         
		        _index['32_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred63_JavaExpr()) ) then 
		        begin 
		          s := 32;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['32_2']);
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


function TJava_JavaExpr.getDfa42:IDFA;
begin
  if not Assigned(dfa42) then
    dfa42:=TAntlrDFA42.Create(self);
  Result:=dfa42;  
end;

constructor TJava_JavaExpr.TAntlrDFA42.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=42;
  feot:=unpackEncodedString('\41\uffff');
  feof:=unpackEncodedString('\1\2\40\uffff');

  FMinc:=unpackEncodedString('\1\31\1\0\37\uffff');

  FMaxc:=unpackEncodedString('\1\133\1\0\37\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\35\uffff\1\1');
  fspecial:=unpackEncodedString('\1\uffff\1\0\37\uffff');
  AddTransition(unpackEncodedString('\1\2\2\uffff\2\2\3\uffff\4\2\1\uffff'+
  '\1\2\2\uffff\1\1\1\2\1\uffff\1\2\22\uffff\1\2\2\uffff\1\2\3\uffff\26\2'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaExpr.TAntlrDFA42.getDescription():string;
begin
  Result:='()* loopback of 161:28: ( ''['' expression '']'' )*';
end;


function TJava_JavaExpr.TAntlrDFA42.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaExpr(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[42,1] := input.LA(1);

		         
		        _index['42_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred79_JavaExpr()) ) then 
		        begin 
		          s := 32;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 2;
		        end
		        ;

		         
		        input.seek(_index['42_1']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 42, _s, input);
    error(nvae);
    raise nvae;
  end;
end;

 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.