// $ANTLR 3.2 10 03, 2009 16:05:49 JavaStat.g 2009-10-03 16:52:10
unit Java_JavaStat;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

              
type
  TJava_JavaStat = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_block_in_methodBody27:IBitSet;
    FOLLOW_37_in_block41:IBitSet;
    FOLLOW_blockStatement_in_block43:IBitSet;
    FOLLOW_38_in_block46:IBitSet;
    FOLLOW_localVariableDeclaration_in_blockStatement58:IBitSet;
    FOLLOW_classOrInterfaceDeclaration_in_blockStatement63:IBitSet;
    FOLLOW_statement_in_blockStatement72:IBitSet;
    FOLLOW_variableModifier_in_localVariableDeclaration84:IBitSet;
    FOLLOW_dtype_in_localVariableDeclaration87:IBitSet;
    FOLLOW_variableDeclarators_in_localVariableDeclaration89:IBitSet;
    FOLLOW_25_in_localVariableDeclaration91:IBitSet;
    FOLLOW_block_in_statement103:IBitSet;
    FOLLOW_99_in_statement111:IBitSet;
    FOLLOW_expression_in_statement113:IBitSet;
    FOLLOW_78_in_statement116:IBitSet;
    FOLLOW_expression_in_statement118:IBitSet;
    FOLLOW_25_in_statement122:IBitSet;
    FOLLOW_100_in_statement130:IBitSet;
    FOLLOW_parExpression_in_statement132:IBitSet;
    FOLLOW_statement_in_statement134:IBitSet;
    FOLLOW_101_in_statement149:IBitSet;
    FOLLOW_statement_in_statement151:IBitSet;
    FOLLOW_102_in_statement161:IBitSet;
    FOLLOW_65_in_statement163:IBitSet;
    FOLLOW_forControl_in_statement165:IBitSet;
    FOLLOW_66_in_statement167:IBitSet;
    FOLLOW_statement_in_statement169:IBitSet;
    FOLLOW_103_in_statement177:IBitSet;
    FOLLOW_parExpression_in_statement179:IBitSet;
    FOLLOW_statement_in_statement181:IBitSet;
    FOLLOW_104_in_statement189:IBitSet;
    FOLLOW_statement_in_statement191:IBitSet;
    FOLLOW_103_in_statement193:IBitSet;
    FOLLOW_parExpression_in_statement195:IBitSet;
    FOLLOW_25_in_statement197:IBitSet;
    FOLLOW_105_in_statement205:IBitSet;
    FOLLOW_block_in_statement207:IBitSet;
    FOLLOW_catches_in_statement217:IBitSet;
    FOLLOW_106_in_statement219:IBitSet;
    FOLLOW_block_in_statement221:IBitSet;
    FOLLOW_catches_in_statement231:IBitSet;
    FOLLOW_106_in_statement241:IBitSet;
    FOLLOW_block_in_statement243:IBitSet;
    FOLLOW_107_in_statement259:IBitSet;
    FOLLOW_parExpression_in_statement261:IBitSet;
    FOLLOW_37_in_statement263:IBitSet;
    FOLLOW_switchBlockStatementGroups_in_statement265:IBitSet;
    FOLLOW_38_in_statement267:IBitSet;
    FOLLOW_51_in_statement275:IBitSet;
    FOLLOW_parExpression_in_statement277:IBitSet;
    FOLLOW_block_in_statement279:IBitSet;
    FOLLOW_108_in_statement287:IBitSet;
    FOLLOW_expression_in_statement289:IBitSet;
    FOLLOW_25_in_statement292:IBitSet;
    FOLLOW_109_in_statement300:IBitSet;
    FOLLOW_expression_in_statement302:IBitSet;
    FOLLOW_25_in_statement304:IBitSet;
    FOLLOW_110_in_statement312:IBitSet;
    FOLLOW_Identifier_in_statement314:IBitSet;
    FOLLOW_25_in_statement317:IBitSet;
    FOLLOW_111_in_statement325:IBitSet;
    FOLLOW_Identifier_in_statement327:IBitSet;
    FOLLOW_25_in_statement330:IBitSet;
    FOLLOW_25_in_statement338:IBitSet;
    FOLLOW_statementExpression_in_statement346:IBitSet;
    FOLLOW_25_in_statement348:IBitSet;
    FOLLOW_Identifier_in_statement356:IBitSet;
    FOLLOW_78_in_statement358:IBitSet;
    FOLLOW_statement_in_statement360:IBitSet;
    FOLLOW_catchClause_in_catches372:IBitSet;
    FOLLOW_catchClause_in_catches375:IBitSet;
    FOLLOW_112_in_catchClause389:IBitSet;
    FOLLOW_65_in_catchClause391:IBitSet;
    FOLLOW_formalParameter_in_catchClause393:IBitSet;
    FOLLOW_66_in_catchClause395:IBitSet;
    FOLLOW_block_in_catchClause397:IBitSet;
    FOLLOW_variableModifier_in_formalParameter408:IBitSet;
    FOLLOW_dtype_in_formalParameter411:IBitSet;
    FOLLOW_variableDeclaratorId_in_formalParameter413:IBitSet;
    FOLLOW_switchBlockStatementGroup_in_switchBlockStatementGroups427:IBitSet;
    FOLLOW_switchLabel_in_switchBlockStatementGroup441:IBitSet;
    FOLLOW_blockStatement_in_switchBlockStatementGroup443:IBitSet;
    FOLLOW_113_in_switchLabel456:IBitSet;
    FOLLOW_constantExpression_in_switchLabel458:IBitSet;
    FOLLOW_78_in_switchLabel460:IBitSet;
    FOLLOW_113_in_switchLabel467:IBitSet;
    FOLLOW_enumConstantName_in_switchLabel469:IBitSet;
    FOLLOW_78_in_switchLabel471:IBitSet;
    FOLLOW_69_in_switchLabel478:IBitSet;
    FOLLOW_78_in_switchLabel480:IBitSet;
    FOLLOW_34_in_moreStatementExpressions493:IBitSet;
    FOLLOW_statementExpression_in_moreStatementExpressions495:IBitSet;
    FOLLOW_forVarControl_in_forControl516:IBitSet;
    FOLLOW_forInit_in_forControl521:IBitSet;
    FOLLOW_25_in_forControl524:IBitSet;
    FOLLOW_expression_in_forControl526:IBitSet;
    FOLLOW_25_in_forControl529:IBitSet;
    FOLLOW_forUpdate_in_forControl531:IBitSet;
    FOLLOW_variableModifier_in_forInit543:IBitSet;
    FOLLOW_dtype_in_forInit546:IBitSet;
    FOLLOW_variableDeclarators_in_forInit548:IBitSet;
    FOLLOW_expressionList_in_forInit553:IBitSet;
    FOLLOW_variableModifier_in_forVarControl565:IBitSet;
    FOLLOW_dtype_in_forVarControl568:IBitSet;
    FOLLOW_Identifier_in_forVarControl570:IBitSet;
    FOLLOW_78_in_forVarControl572:IBitSet;
    FOLLOW_expression_in_forVarControl574:IBitSet;
    FOLLOW_expressionList_in_forUpdate585:IBitSet;
    FOLLOW_localVariableDeclaration_in_synpred2_JavaStat58:IBitSet;
    FOLLOW_classOrInterfaceDeclaration_in_synpred3_JavaStat63:IBitSet;
    FOLLOW_catches_in_synpred12_JavaStat217:IBitSet;
    FOLLOW_106_in_synpred12_JavaStat219:IBitSet;
    FOLLOW_block_in_synpred12_JavaStat221:IBitSet;
    FOLLOW_catches_in_synpred13_JavaStat231:IBitSet;
    FOLLOW_113_in_synpred30_JavaStat456:IBitSet;
    FOLLOW_constantExpression_in_synpred30_JavaStat458:IBitSet;
    FOLLOW_78_in_synpred30_JavaStat460:IBitSet;
    FOLLOW_113_in_synpred31_JavaStat467:IBitSet;
    FOLLOW_enumConstantName_in_synpred31_JavaStat469:IBitSet;
    FOLLOW_78_in_synpred31_JavaStat471:IBitSet;
    FOLLOW_forVarControl_in_synpred33_JavaStat516:IBitSet;
    FOLLOW_variableModifier_in_synpred38_JavaStat543:IBitSet;
    FOLLOW_dtype_in_synpred38_JavaStat546:IBitSet;
    FOLLOW_variableDeclarators_in_synpred38_JavaStat548:IBitSet;
    

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


    // $ANTLR start "methodBody"
    // JavaStat.g:6:1: methodBody : block ;
    function methodBody():Integer;
    // $ANTLR end methodBody


    // $ANTLR start "block"
    // JavaStat.g:10:1: block : ''{'' ( blockStatement )* ''}'' ;
    function block():Integer;
    // $ANTLR end block


    // $ANTLR start "blockStatement"
    // JavaStat.g:14:1: blockStatement : ( localVariableDeclaration | classOrInterfaceDeclaration | statement );
    function blockStatement():Integer;
    // $ANTLR end blockStatement


    // $ANTLR start "localVariableDeclaration"
    // JavaStat.g:20:1: localVariableDeclaration : ( variableModifier )* dtype variableDeclarators '';'' ;
    function localVariableDeclaration():Integer;
    // $ANTLR end localVariableDeclaration


    // $ANTLR start "statement"
    // JavaStat.g:24:1: statement : ( block | ''assert'' expression ( '':'' expression )? '';'' | ''if'' parExpression statement ( options {k=1; backtrack=false; } : ''else'' statement )? | ''for'' ''('' forControl '')'' statement | ''while'' parExpression statement | ''do'' statement ''while'' parExpression '';'' | ''try'' block ( catches ''finally'' block | catches | ''finally'' block ) | ''switch'' parExpression ''{'' switchBlockStatementGroups ''}'' | ''synchronized'' parExpression block | ''return'' ( expression )? '';'' | ''throw'' expression '';'' | ''break'' ( Identifier )? '';'' | ''continue'' ( Identifier )? '';'' | '';'' | statementExpression '';'' | Identifier '':'' statement );
    function statement():Integer;
    // $ANTLR end statement


    // $ANTLR start "catches"
    // JavaStat.g:47:1: catches : catchClause ( catchClause )* ;
    function catches():Integer;
    // $ANTLR end catches


    // $ANTLR start "catchClause"
    // JavaStat.g:51:1: catchClause : ''catch'' ''('' formalParameter '')'' block ;
    function catchClause():Integer;
    // $ANTLR end catchClause


    // $ANTLR start "formalParameter"
    // JavaStat.g:55:1: formalParameter : ( variableModifier )* dtype variableDeclaratorId ;
    function formalParameter():Integer;
    // $ANTLR end formalParameter


    // $ANTLR start "switchBlockStatementGroups"
    // JavaStat.g:59:1: switchBlockStatementGroups : ( switchBlockStatementGroup )* ;
    function switchBlockStatementGroups():Integer;
    // $ANTLR end switchBlockStatementGroups


    // $ANTLR start "switchBlockStatementGroup"
    // JavaStat.g:63:1: switchBlockStatementGroup : switchLabel ( blockStatement )* ;
    function switchBlockStatementGroup():Integer;
    // $ANTLR end switchBlockStatementGroup


    // $ANTLR start "switchLabel"
    // JavaStat.g:67:1: switchLabel : ( ''case'' constantExpression '':'' | ''case'' enumConstantName '':'' | ''default'' '':'' );
    function switchLabel():Integer;
    // $ANTLR end switchLabel


    // $ANTLR start "moreStatementExpressions"
    // JavaStat.g:73:1: moreStatementExpressions : ( '','' statementExpression )* ;
    function moreStatementExpressions():Integer;
    // $ANTLR end moreStatementExpressions


    // $ANTLR start "forControl"
    // JavaStat.g:77:1: forControl options {k=3; } : ( forVarControl | ( forInit )? '';'' ( expression )? '';'' ( forUpdate )? );
    function forControl():Integer;
    // $ANTLR end forControl


    // $ANTLR start "forInit"
    // JavaStat.g:83:1: forInit : ( ( variableModifier )* dtype variableDeclarators | expressionList );
    function forInit():Integer;
    // $ANTLR end forInit


    // $ANTLR start "forVarControl"
    // JavaStat.g:88:1: forVarControl : ( variableModifier )* dtype Identifier '':'' expression ;
    function forVarControl():Integer;
    // $ANTLR end forVarControl


    // $ANTLR start "forUpdate"
    // JavaStat.g:92:1: forUpdate : expressionList ;
    function forUpdate():Integer;
    // $ANTLR end forUpdate

    // $ANTLR start "synpred2_JavaStat"
    function synpred2_JavaStat_fragment():Integer;
    // $ANTLR end synpred2_JavaStat

    // $ANTLR start "synpred3_JavaStat"
    function synpred3_JavaStat_fragment():Integer;
    // $ANTLR end synpred3_JavaStat

    // $ANTLR start "synpred12_JavaStat"
    function synpred12_JavaStat_fragment():Integer;
    // $ANTLR end synpred12_JavaStat

    // $ANTLR start "synpred13_JavaStat"
    function synpred13_JavaStat_fragment():Integer;
    // $ANTLR end synpred13_JavaStat

    // $ANTLR start "synpred30_JavaStat"
    function synpred30_JavaStat_fragment():Integer;
    // $ANTLR end synpred30_JavaStat

    // $ANTLR start "synpred31_JavaStat"
    function synpred31_JavaStat_fragment():Integer;
    // $ANTLR end synpred31_JavaStat

    // $ANTLR start "synpred33_JavaStat"
    function synpred33_JavaStat_fragment():Integer;
    // $ANTLR end synpred33_JavaStat

    // $ANTLR start "synpred38_JavaStat"
    function synpred38_JavaStat_fragment():Integer;
    // $ANTLR end synpred38_JavaStat

    // Delegated rules

    function synpred2_JavaStat():Boolean;function synpred13_JavaStat():Boolean;function synpred38_JavaStat():Boolean;function synpred31_JavaStat():Boolean;function synpred12_JavaStat():Boolean;function synpred30_JavaStat():Boolean;function synpred33_JavaStat():Boolean;function synpred3_JavaStat():Boolean;
  protected

     
          type TAntlrDFA2=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa2:IDFA;
        protected
          dfa2:IDFA;

     
          type TAntlrDFA10=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa10:IDFA;
        protected
          dfa10:IDFA;

     
          type TAntlrDFA20=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa20:IDFA;
        protected
          dfa20:IDFA;

     
          type TAntlrDFA22=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa22:IDFA;
        protected
          dfa22:IDFA;
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
    JavaParser, 
    JclHashSets;

function TJava_JavaStat.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TJava_JavaStat.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState; gJava:TAntlrBaseRecognizer{TJavaParser} );
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

procedure TJava_JavaStat.InitBitsets;
begin
  FOLLOW_block_in_methodBody27 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_block41 := TAntlrBitSet.CreateWithBits([$7FFFE1E24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_blockStatement_in_block43 := TAntlrBitSet.CreateWithBits([$7FFFE1E24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_38_in_block46 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_localVariableDeclaration_in_blockStatement58 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classOrInterfaceDeclaration_in_blockStatement63 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_statement_in_blockStatement72 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableModifier_in_localVariableDeclaration84 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_dtype_in_localVariableDeclaration87 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclarators_in_localVariableDeclaration89 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_localVariableDeclaration91 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_statement103 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_99_in_statement111 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_expression_in_statement113 := TAntlrBitSet.CreateWithBits([$0000000002000000,$0000000000004000]);
  FOLLOW_78_in_statement116 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_expression_in_statement118 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement122 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_100_in_statement130 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_parExpression_in_statement132 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_statement_in_statement134 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000002000000000]);
  FOLLOW_101_in_statement149 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_statement_in_statement151 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_102_in_statement161 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_65_in_statement163 := TAntlrBitSet.CreateWithBits([$7F82010202000FD0,$00000007FCC00013]);
  FOLLOW_forControl_in_statement165 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_statement167 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_statement_in_statement169 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_103_in_statement177 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_parExpression_in_statement179 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_statement_in_statement181 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_104_in_statement189 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_statement_in_statement191 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000008000000000]);
  FOLLOW_103_in_statement193 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_parExpression_in_statement195 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement197 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_105_in_statement205 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_block_in_statement207 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0001040000000000]);
  FOLLOW_catches_in_statement217 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000040000000000]);
  FOLLOW_106_in_statement219 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_block_in_statement221 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_catches_in_statement231 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_106_in_statement241 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_block_in_statement243 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_107_in_statement259 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_parExpression_in_statement261 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_37_in_statement263 := TAntlrBitSet.CreateWithBits([$0000004000000000,$0002000000000020]);
  FOLLOW_switchBlockStatementGroups_in_statement265 := TAntlrBitSet.CreateWithBits([$0000004000000000]);
  FOLLOW_38_in_statement267 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_51_in_statement275 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_parExpression_in_statement277 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_block_in_statement279 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_108_in_statement287 := TAntlrBitSet.CreateWithBits([$7F82010202000FD0,$00000007FCC00013]);
  FOLLOW_expression_in_statement289 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement292 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_109_in_statement300 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_expression_in_statement302 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement304 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_110_in_statement312 := TAntlrBitSet.CreateWithBits([$0000000002000010]);
  FOLLOW_Identifier_in_statement314 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement317 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_111_in_statement325 := TAntlrBitSet.CreateWithBits([$0000000002000010]);
  FOLLOW_Identifier_in_statement327 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement330 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_statement338 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_statementExpression_in_statement346 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement348 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_statement356 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_statement358 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF0,$0000FBDFFCC00013]);
  FOLLOW_statement_in_statement360 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_catchClause_in_catches372 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0001000000000000]);
  FOLLOW_catchClause_in_catches375 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0001000000000000]);
  FOLLOW_112_in_catchClause389 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_65_in_catchClause391 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_formalParameter_in_catchClause393 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_catchClause395 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_block_in_catchClause397 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableModifier_in_formalParameter408 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_dtype_in_formalParameter411 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclaratorId_in_formalParameter413 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_switchBlockStatementGroup_in_switchBlockStatementGroups427 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0002000000000020]);
  FOLLOW_switchLabel_in_switchBlockStatementGroup441 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF2,$0000FBDFFCC00013]);
  FOLLOW_blockStatement_in_switchBlockStatementGroup443 := TAntlrBitSet.CreateWithBits([$7FFFE1A24A000FF2,$0000FBDFFCC00013]);
  FOLLOW_113_in_switchLabel456 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_constantExpression_in_switchLabel458 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_switchLabel460 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_113_in_switchLabel467 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_enumConstantName_in_switchLabel469 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_switchLabel471 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_69_in_switchLabel478 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_switchLabel480 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_34_in_moreStatementExpressions493 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_statementExpression_in_moreStatementExpressions495 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_forVarControl_in_forControl516 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_forInit_in_forControl521 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_forControl524 := TAntlrBitSet.CreateWithBits([$7F82010202000FD0,$00000007FCC00013]);
  FOLLOW_expression_in_forControl526 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_forControl529 := TAntlrBitSet.CreateWithBits([$7F82010200000FD2,$00000007FCC00013]);
  FOLLOW_forUpdate_in_forControl531 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableModifier_in_forInit543 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_dtype_in_forInit546 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclarators_in_forInit548 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expressionList_in_forInit553 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableModifier_in_forVarControl565 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_dtype_in_forVarControl568 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_forVarControl570 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_forVarControl572 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_expression_in_forVarControl574 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expressionList_in_forUpdate585 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_localVariableDeclaration_in_synpred2_JavaStat58 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classOrInterfaceDeclaration_in_synpred3_JavaStat63 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_catches_in_synpred12_JavaStat217 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000040000000000]);
  FOLLOW_106_in_synpred12_JavaStat219 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_block_in_synpred12_JavaStat221 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_catches_in_synpred13_JavaStat231 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_113_in_synpred30_JavaStat456 := TAntlrBitSet.CreateWithBits([$7F82010200000FD0,$00000007FCC00013]);
  FOLLOW_constantExpression_in_synpred30_JavaStat458 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_synpred30_JavaStat460 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_113_in_synpred31_JavaStat467 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_enumConstantName_in_synpred31_JavaStat469 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000004000]);
  FOLLOW_78_in_synpred31_JavaStat471 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_forVarControl_in_synpred33_JavaStat516 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableModifier_in_synpred38_JavaStat543 := TAntlrBitSet.CreateWithBits([$7F82000000000010,$0000000000000010]);
  FOLLOW_dtype_in_synpred38_JavaStat546 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_variableDeclarators_in_synpred38_JavaStat548 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TJava_JavaStat.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TJava_JavaStat.GetGrammarFileName():String;
begin
  Result:='JavaStat.g'; 
end;

// $ANTLR start "methodBody"
// JavaStat.g:6:1: methodBody : block ;
function TJava_JavaStat.methodBody():Integer;
var
  _alt:array [0..255] of Integer;
  methodBody_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    methodBody_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 343) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:7:5: ( block )
        // JavaStat.g:7:9: block
        begin
        pushFollow(FOLLOW_block_in_methodBody27);
        block();

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
          memoize(input, 343, methodBody_StartIndex);
        end;
    end;
end;// $ANTLR start "block"
// JavaStat.g:10:1: block : ''{'' ( blockStatement )* ''}'' ;
function TJava_JavaStat.block():Integer;
var
  _alt:array [0..255] of Integer;
  block_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    block_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 344) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:11:2: ( ''{'' ( blockStatement )* ''}'' )
        // JavaStat.g:11:4: ''{'' ( blockStatement )* ''}''
        begin
        match(input,37,FOLLOW_37_in_block41); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaStat.g:11:8: ( blockStatement )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=Identifier) and 
            ( _LA[1,0]<=DecimalLiteral)) or (_LA[1,0]=25) or (_LA[1,0]=27) or (_LA[1,0]=30) or (_LA[1,0]=33) or (_LA[1,0]=37) or ((_LA[1,0]>=39) and 
            ( _LA[1,0]<=40)) or ((_LA[1,0]>=45) and 
            ( _LA[1,0]<=62)) or ((_LA[1,0]>=64) and 
            ( _LA[1,0]<=65)) or (_LA[1,0]=68) or ((_LA[1,0]>=86) and 
            ( _LA[1,0]<=87)) or ((_LA[1,0]>=90) and 
            ( _LA[1,0]<=100)) or ((_LA[1,0]>=102) and 
            ( _LA[1,0]<=105)) or ((_LA[1,0]>=107) and 
            ( _LA[1,0]<=111))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // JavaStat.g:0:0: blockStatement
        	    begin
        	    pushFollow(FOLLOW_blockStatement_in_block43);
        	    blockStatement();

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

        match(input,38,FOLLOW_38_in_block46); 
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
          memoize(input, 344, block_StartIndex);
        end;
    end;
end;// $ANTLR start "blockStatement"
// JavaStat.g:14:1: blockStatement : ( localVariableDeclaration | classOrInterfaceDeclaration | statement );
function TJava_JavaStat.blockStatement():Integer;
var
  _alt:array [0..255] of Integer;
  blockStatement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    blockStatement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 345) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaStat.g:15:2: ( localVariableDeclaration | classOrInterfaceDeclaration | statement )
        _alt[2]:=3;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaStat attribute is inherited via the parser, lexer, ...
         *}
        _alt[2] := getDfa2.predict(input);
        case (_alt[2]) of 
             1 :
                begin
                // JavaStat.g:15:4: localVariableDeclaration
                begin
                pushFollow(FOLLOW_localVariableDeclaration_in_blockStatement58);
                localVariableDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaStat.g:16:4: classOrInterfaceDeclaration
                begin
                pushFollow(FOLLOW_classOrInterfaceDeclaration_in_blockStatement63);
                TJavaParser(gJava).classOrInterfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaStat.g:17:8: statement
                begin
                pushFollow(FOLLOW_statement_in_blockStatement72);
                statement();

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
          memoize(input, 345, blockStatement_StartIndex);
        end;
    end;
end;// $ANTLR start "localVariableDeclaration"
// JavaStat.g:20:1: localVariableDeclaration : ( variableModifier )* dtype variableDeclarators '';'' ;
function TJava_JavaStat.localVariableDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  localVariableDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    localVariableDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 346) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:21:2: ( ( variableModifier )* dtype variableDeclarators '';'' )
        // JavaStat.g:21:4: ( variableModifier )* dtype variableDeclarators '';''
        begin
        // closureBlock:JavaStat.g:21:4: ( variableModifier )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=49) or (_LA[3,0]=68)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // JavaStat.g:0:0: variableModifier
        	    begin
        	    pushFollow(FOLLOW_variableModifier_in_localVariableDeclaration84);
        	    TJavaParser(gJava).variableModifier();

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

        pushFollow(FOLLOW_dtype_in_localVariableDeclaration87);
        TJavaParser(gJava).dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_variableDeclarators_in_localVariableDeclaration89);
        TJavaParser(gJava).variableDeclarators();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,25,FOLLOW_25_in_localVariableDeclaration91); 
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
          memoize(input, 346, localVariableDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "statement"
// JavaStat.g:24:1: statement : ( block | ''assert'' expression ( '':'' expression )? '';'' | ''if'' parExpression statement ( options {k=1; backtrack=false; } : ''else'' statement )? | ''for'' ''('' forControl '')'' statement | ''while'' parExpression statement | ''do'' statement ''while'' parExpression '';'' | ''try'' block ( catches ''finally'' block | catches | ''finally'' block ) | ''switch'' parExpression ''{'' switchBlockStatementGroups ''}'' | ''synchronized'' parExpression block | ''return'' ( expression )? '';'' | ''throw'' expression '';'' | ''break'' ( Identifier )? '';'' | ''continue'' ( Identifier )? '';'' | '';'' | statementExpression '';'' | Identifier '':'' statement );
function TJava_JavaStat.statement():Integer;
var
  _alt:array [0..255] of Integer;
  statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 347) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaStat.g:25:2: ( block | ''assert'' expression ( '':'' expression )? '';'' | ''if'' parExpression statement ( options {k=1; backtrack=false; } : ''else'' statement )? | ''for'' ''('' forControl '')'' statement | ''while'' parExpression statement | ''do'' statement ''while'' parExpression '';'' | ''try'' block ( catches ''finally'' block | catches | ''finally'' block ) | ''switch'' parExpression ''{'' switchBlockStatementGroups ''}'' | ''synchronized'' parExpression block | ''return'' ( expression )? '';'' | ''throw'' expression '';'' | ''break'' ( Identifier )? '';'' | ''continue'' ( Identifier )? '';'' | '';'' | statementExpression '';'' | Identifier '':'' statement )
        _alt[10]:=16;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaStat attribute is inherited via the parser, lexer, ...
         *}
        _alt[10] := getDfa10.predict(input);
        case (_alt[10]) of 
             1 :
                begin
                // JavaStat.g:25:4: block
                begin
                pushFollow(FOLLOW_block_in_statement103);
                block();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaStat.g:26:7: ''assert'' expression ( '':'' expression )? '';''
                begin
                match(input,99,FOLLOW_99_in_statement111); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_statement113);
                TJavaParser(gJava).expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:26:27: ( '':'' expression )?
                _alt[4]:=2;
                _LA[4,0] := input.LA(1);

                if ( ((_LA[4,0]=78)) ) then 
                begin
                  _alt[4]:=1;
                end
                ;
                case (_alt[4]) of
                     1 :
                        begin
                        // JavaStat.g:26:28: '':'' expression
                        begin
                        match(input,78,FOLLOW_78_in_statement116); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_expression_in_statement118);
                        TJavaParser(gJava).expression();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,25,FOLLOW_25_in_statement122); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaStat.g:27:7: ''if'' parExpression statement ( options {k=1; backtrack=false; } : ''else'' statement )?
                begin
                match(input,100,FOLLOW_100_in_statement130); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parExpression_in_statement132);
                TJavaParser(gJava).parExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_statement134);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:27:36: ( options {k=1; backtrack=false; } : ''else'' statement )?
                _alt[5]:=2;
                _LA[5,0] := input.LA(1);

                if ( ((_LA[5,0]=101)) ) then 
                begin
                  _LA[5,2] := input.LA(2);

                  if ( (true) ) then 
                  begin
                    _alt[5]:=1;
                  end
                  ;
                end
                ;
                case (_alt[5]) of
                     1 :
                        begin
                        // JavaStat.g:27:69: ''else'' statement
                        begin
                        match(input,101,FOLLOW_101_in_statement149); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_statement_in_statement151);
                        statement();

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
                // JavaStat.g:28:7: ''for'' ''('' forControl '')'' statement
                begin
                match(input,102,FOLLOW_102_in_statement161); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,65,FOLLOW_65_in_statement163); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_forControl_in_statement165);
                forControl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,66,FOLLOW_66_in_statement167); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_statement169);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // JavaStat.g:29:7: ''while'' parExpression statement
                begin
                match(input,103,FOLLOW_103_in_statement177); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parExpression_in_statement179);
                TJavaParser(gJava).parExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_statement181);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // JavaStat.g:30:7: ''do'' statement ''while'' parExpression '';''
                begin
                match(input,104,FOLLOW_104_in_statement189); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_statement191);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,103,FOLLOW_103_in_statement193); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parExpression_in_statement195);
                TJavaParser(gJava).parExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,25,FOLLOW_25_in_statement197); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // JavaStat.g:31:7: ''try'' block ( catches ''finally'' block | catches | ''finally'' block )
                begin
                match(input,105,FOLLOW_105_in_statement205); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_block_in_statement207);
                block();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:32:7: ( catches ''finally'' block | catches | ''finally'' block )
                _alt[6]:=3;
                _LA[6,0] := input.LA(1);

                if ( ((_LA[6,0]=112)) ) then 
                begin
                  _LA[6,1] := input.LA(2);

                  if ( (synpred12_JavaStat()) ) then 
                  begin
                    _alt[6]:=1;
                  end
                  else if ( (synpred13_JavaStat()) ) then 
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
                      , 6, 1, input);    

                  end;
                end
                else if ( ((_LA[6,0]=106)) ) then 
                begin
                  _alt[6]:=3;
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
                        // JavaStat.g:32:9: catches ''finally'' block
                        begin
                        pushFollow(FOLLOW_catches_in_statement217);
                        catches();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        match(input,106,FOLLOW_106_in_statement219); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_block_in_statement221);
                        block();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;
                     2 :
                        begin
                        // JavaStat.g:33:9: catches
                        begin
                        pushFollow(FOLLOW_catches_in_statement231);
                        catches();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;
                     3 :
                        begin
                        // JavaStat.g:34:9: ''finally'' block
                        begin
                        match(input,106,FOLLOW_106_in_statement241); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_block_in_statement243);
                        block();

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
                // JavaStat.g:36:7: ''switch'' parExpression ''{'' switchBlockStatementGroups ''}''
                begin
                match(input,107,FOLLOW_107_in_statement259); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parExpression_in_statement261);
                TJavaParser(gJava).parExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,37,FOLLOW_37_in_statement263); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_switchBlockStatementGroups_in_statement265);
                switchBlockStatementGroups();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,38,FOLLOW_38_in_statement267); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             9 :
                begin
                // JavaStat.g:37:7: ''synchronized'' parExpression block
                begin
                match(input,51,FOLLOW_51_in_statement275); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parExpression_in_statement277);
                TJavaParser(gJava).parExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_block_in_statement279);
                block();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             10 :
                begin
                // JavaStat.g:38:7: ''return'' ( expression )? '';''
                begin
                match(input,108,FOLLOW_108_in_statement287); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:38:16: ( expression )?
                _alt[7]:=2;
                _LA[7,0] := input.LA(1);

                if ( ((_LA[7,0]=Identifier) or ((_LA[7,0]>=FloatingPointLiteral) and 
                ( _LA[7,0]<=DecimalLiteral)) or (_LA[7,0]=33) or (_LA[7,0]=40) or ((_LA[7,0]>=55) and 
                ( _LA[7,0]<=62)) or ((_LA[7,0]>=64) and 
                ( _LA[7,0]<=65)) or ((_LA[7,0]>=86) and 
                ( _LA[7,0]<=87)) or ((_LA[7,0]>=90) and 
                ( _LA[7,0]<=98))) ) then 
                begin
                  _alt[7]:=1;
                end
                ;
                case (_alt[7]) of
                     1 :
                        begin
                        // JavaStat.g:0:0: expression
                        begin
                        pushFollow(FOLLOW_expression_in_statement289);
                        TJavaParser(gJava).expression();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,25,FOLLOW_25_in_statement292); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             11 :
                begin
                // JavaStat.g:39:7: ''throw'' expression '';''
                begin
                match(input,109,FOLLOW_109_in_statement300); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_statement302);
                TJavaParser(gJava).expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,25,FOLLOW_25_in_statement304); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             12 :
                begin
                // JavaStat.g:40:7: ''break'' ( Identifier )? '';''
                begin
                match(input,110,FOLLOW_110_in_statement312); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:40:15: ( Identifier )?
                _alt[8]:=2;
                _LA[8,0] := input.LA(1);

                if ( ((_LA[8,0]=Identifier)) ) then 
                begin
                  _alt[8]:=1;
                end
                ;
                case (_alt[8]) of
                     1 :
                        begin
                        // JavaStat.g:0:0: Identifier
                        begin
                        match(input,Identifier,FOLLOW_Identifier_in_statement314); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,25,FOLLOW_25_in_statement317); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             13 :
                begin
                // JavaStat.g:41:7: ''continue'' ( Identifier )? '';''
                begin
                match(input,111,FOLLOW_111_in_statement325); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:41:18: ( Identifier )?
                _alt[9]:=2;
                _LA[9,0] := input.LA(1);

                if ( ((_LA[9,0]=Identifier)) ) then 
                begin
                  _alt[9]:=1;
                end
                ;
                case (_alt[9]) of
                     1 :
                        begin
                        // JavaStat.g:0:0: Identifier
                        begin
                        match(input,Identifier,FOLLOW_Identifier_in_statement327); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,25,FOLLOW_25_in_statement330); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             14 :
                begin
                // JavaStat.g:42:7: '';''
                begin
                match(input,25,FOLLOW_25_in_statement338); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             15 :
                begin
                // JavaStat.g:43:7: statementExpression '';''
                begin
                pushFollow(FOLLOW_statementExpression_in_statement346);
                TJavaParser(gJava).statementExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,25,FOLLOW_25_in_statement348); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             16 :
                begin
                // JavaStat.g:44:7: Identifier '':'' statement
                begin
                match(input,Identifier,FOLLOW_Identifier_in_statement356); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,78,FOLLOW_78_in_statement358); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_statement360);
                statement();

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
          memoize(input, 347, statement_StartIndex);
        end;
    end;
end;// $ANTLR start "catches"
// JavaStat.g:47:1: catches : catchClause ( catchClause )* ;
function TJava_JavaStat.catches():Integer;
var
  _alt:array [0..255] of Integer;
  catches_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    catches_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 348) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:48:2: ( catchClause ( catchClause )* )
        // JavaStat.g:48:4: catchClause ( catchClause )*
        begin
        pushFollow(FOLLOW_catchClause_in_catches372);
        catchClause();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaStat.g:48:16: ( catchClause )*
        repeat 
            _alt[11]:=2;
            _LA[11,0] := input.LA(1);

            if ( ((_LA[11,0]=112)) ) then 
            begin
              _alt[11]:=1;
            end

            ;

            case (_alt[11]) of
        	 1 :
        	    begin
        	    // JavaStat.g:48:17: catchClause
        	    begin
        	    pushFollow(FOLLOW_catchClause_in_catches375);
        	    catchClause();

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
          memoize(input, 348, catches_StartIndex);
        end;
    end;
end;// $ANTLR start "catchClause"
// JavaStat.g:51:1: catchClause : ''catch'' ''('' formalParameter '')'' block ;
function TJava_JavaStat.catchClause():Integer;
var
  _alt:array [0..255] of Integer;
  catchClause_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    catchClause_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 349) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:52:2: ( ''catch'' ''('' formalParameter '')'' block )
        // JavaStat.g:52:4: ''catch'' ''('' formalParameter '')'' block
        begin
        match(input,112,FOLLOW_112_in_catchClause389); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,65,FOLLOW_65_in_catchClause391); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_formalParameter_in_catchClause393);
        formalParameter();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,66,FOLLOW_66_in_catchClause395); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_block_in_catchClause397);
        block();

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
          memoize(input, 349, catchClause_StartIndex);
        end;
    end;
end;// $ANTLR start "formalParameter"
// JavaStat.g:55:1: formalParameter : ( variableModifier )* dtype variableDeclaratorId ;
function TJava_JavaStat.formalParameter():Integer;
var
  _alt:array [0..255] of Integer;
  formalParameter_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    formalParameter_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 350) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:56:2: ( ( variableModifier )* dtype variableDeclaratorId )
        // JavaStat.g:56:4: ( variableModifier )* dtype variableDeclaratorId
        begin
        // closureBlock:JavaStat.g:56:4: ( variableModifier )*
        repeat 
            _alt[12]:=2;
            _LA[12,0] := input.LA(1);

            if ( ((_LA[12,0]=49) or (_LA[12,0]=68)) ) then 
            begin
              _alt[12]:=1;
            end

            ;

            case (_alt[12]) of
        	 1 :
        	    begin
        	    // JavaStat.g:0:0: variableModifier
        	    begin
        	    pushFollow(FOLLOW_variableModifier_in_formalParameter408);
        	    TJavaParser(gJava).variableModifier();

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

        pushFollow(FOLLOW_dtype_in_formalParameter411);
        TJavaParser(gJava).dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_variableDeclaratorId_in_formalParameter413);
        TJavaParser(gJava).variableDeclaratorId();

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
          memoize(input, 350, formalParameter_StartIndex);
        end;
    end;
end;// $ANTLR start "switchBlockStatementGroups"
// JavaStat.g:59:1: switchBlockStatementGroups : ( switchBlockStatementGroup )* ;
function TJava_JavaStat.switchBlockStatementGroups():Integer;
var
  _alt:array [0..255] of Integer;
  switchBlockStatementGroups_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    switchBlockStatementGroups_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 351) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:60:2: ( ( switchBlockStatementGroup )* )
        // JavaStat.g:60:4: ( switchBlockStatementGroup )*
        begin
        // closureBlock:JavaStat.g:60:4: ( switchBlockStatementGroup )*
        repeat 
            _alt[13]:=2;
            _LA[13,0] := input.LA(1);

            if ( ((_LA[13,0]=69) or (_LA[13,0]=113)) ) then 
            begin
              _alt[13]:=1;
            end

            ;

            case (_alt[13]) of
        	 1 :
        	    begin
        	    // JavaStat.g:60:5: switchBlockStatementGroup
        	    begin
        	    pushFollow(FOLLOW_switchBlockStatementGroup_in_switchBlockStatementGroups427);
        	    switchBlockStatementGroup();

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
          memoize(input, 351, switchBlockStatementGroups_StartIndex);
        end;
    end;
end;// $ANTLR start "switchBlockStatementGroup"
// JavaStat.g:63:1: switchBlockStatementGroup : switchLabel ( blockStatement )* ;
function TJava_JavaStat.switchBlockStatementGroup():Integer;
var
  _alt:array [0..255] of Integer;
  switchBlockStatementGroup_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    switchBlockStatementGroup_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 352) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:64:2: ( switchLabel ( blockStatement )* )
        // JavaStat.g:64:4: switchLabel ( blockStatement )*
        begin
        pushFollow(FOLLOW_switchLabel_in_switchBlockStatementGroup441);
        switchLabel();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaStat.g:64:16: ( blockStatement )*
        repeat 
            _alt[14]:=2;
            _LA[14,0] := input.LA(1);

            if ( (((_LA[14,0]>=Identifier) and 
            ( _LA[14,0]<=DecimalLiteral)) or (_LA[14,0]=25) or (_LA[14,0]=27) or (_LA[14,0]=30) or (_LA[14,0]=33) or (_LA[14,0]=37) or ((_LA[14,0]>=39) and 
            ( _LA[14,0]<=40)) or ((_LA[14,0]>=45) and 
            ( _LA[14,0]<=62)) or ((_LA[14,0]>=64) and 
            ( _LA[14,0]<=65)) or (_LA[14,0]=68) or ((_LA[14,0]>=86) and 
            ( _LA[14,0]<=87)) or ((_LA[14,0]>=90) and 
            ( _LA[14,0]<=100)) or ((_LA[14,0]>=102) and 
            ( _LA[14,0]<=105)) or ((_LA[14,0]>=107) and 
            ( _LA[14,0]<=111))) ) then 
            begin
              _alt[14]:=1;
            end

            ;

            case (_alt[14]) of
        	 1 :
        	    begin
        	    // JavaStat.g:0:0: blockStatement
        	    begin
        	    pushFollow(FOLLOW_blockStatement_in_switchBlockStatementGroup443);
        	    blockStatement();

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
          memoize(input, 352, switchBlockStatementGroup_StartIndex);
        end;
    end;
end;// $ANTLR start "switchLabel"
// JavaStat.g:67:1: switchLabel : ( ''case'' constantExpression '':'' | ''case'' enumConstantName '':'' | ''default'' '':'' );
function TJava_JavaStat.switchLabel():Integer;
var
  _alt:array [0..255] of Integer;
  switchLabel_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    switchLabel_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 353) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaStat.g:68:2: ( ''case'' constantExpression '':'' | ''case'' enumConstantName '':'' | ''default'' '':'' )
        _alt[15]:=3;
        _LA[15,0] := input.LA(1);

        if ( ((_LA[15,0]=113)) ) then 
        begin
          _LA[15,1] := input.LA(2);

          if ( (((_LA[15,1]>=FloatingPointLiteral) and 
          ( _LA[15,1]<=DecimalLiteral)) or (_LA[15,1]=33) or (_LA[15,1]=40) or ((_LA[15,1]>=55) and 
          ( _LA[15,1]<=62)) or ((_LA[15,1]>=64) and 
          ( _LA[15,1]<=65)) or ((_LA[15,1]>=86) and 
          ( _LA[15,1]<=87)) or ((_LA[15,1]>=90) and 
          ( _LA[15,1]<=98))) ) then 
          begin
            _alt[15]:=1;
          end
          else if ( ((_LA[15,1]=Identifier)) ) then 
          begin
            _LA[15,4] := input.LA(3);

            if ( ((_LA[15,4]=78)) ) then 
            begin
              _LA[15,5] := input.LA(4);

              if ( (synpred30_JavaStat()) ) then 
              begin
                _alt[15]:=1;
              end
              else if ( (synpred31_JavaStat()) ) then 
              begin
                _alt[15]:=2;
              end
              else begin
                  if (state.backtracking>0) then 
                  begin 
                    state.failed:=true; 
                    Exit;  
                  end;
                  //Todo:raise ENoViableAltException.CreateNoViable(''
                  raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                  , 15, 5, input);    

              end;
            end
            else if ( (((_LA[15,4]>=28) and 
            ( _LA[15,4]<=29)) or (_LA[15,4]=33) or ((_LA[15,4]>=35) and 
            ( _LA[15,4]<=36)) or (_LA[15,4]=41) or (_LA[15,4]=44) or (_LA[15,4]=63) or (_LA[15,4]=65) or ((_LA[15,4]>=70) and 
            ( _LA[15,4]<=77)) or ((_LA[15,4]>=79) and 
            ( _LA[15,4]<=91))) ) then 
            begin
              _alt[15]:=1;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit;  
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 15, 4, input);    

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
              , 15, 1, input);    

          end;
        end
        else if ( ((_LA[15,0]=69)) ) then 
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
            , 15, 0, input);    

        end;
        case (_alt[15]) of 
             1 :
                begin
                // JavaStat.g:68:4: ''case'' constantExpression '':''
                begin
                match(input,113,FOLLOW_113_in_switchLabel456); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constantExpression_in_switchLabel458);
                TJavaParser(gJava).constantExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,78,FOLLOW_78_in_switchLabel460); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaStat.g:69:6: ''case'' enumConstantName '':''
                begin
                match(input,113,FOLLOW_113_in_switchLabel467); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_enumConstantName_in_switchLabel469);
                TJavaParser(gJava).enumConstantName();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,78,FOLLOW_78_in_switchLabel471); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaStat.g:70:6: ''default'' '':''
                begin
                match(input,69,FOLLOW_69_in_switchLabel478); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,78,FOLLOW_78_in_switchLabel480); 
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
          memoize(input, 353, switchLabel_StartIndex);
        end;
    end;
end;// $ANTLR start "moreStatementExpressions"
// JavaStat.g:73:1: moreStatementExpressions : ( '','' statementExpression )* ;
function TJava_JavaStat.moreStatementExpressions():Integer;
var
  _alt:array [0..255] of Integer;
  moreStatementExpressions_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    moreStatementExpressions_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 354) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:74:2: ( ( '','' statementExpression )* )
        // JavaStat.g:74:4: ( '','' statementExpression )*
        begin
        // closureBlock:JavaStat.g:74:4: ( '','' statementExpression )*
        repeat 
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
        	    // JavaStat.g:74:5: '','' statementExpression
        	    begin
        	    match(input,34,FOLLOW_34_in_moreStatementExpressions493); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_statementExpression_in_moreStatementExpressions495);
        	    TJavaParser(gJava).statementExpression();

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
          memoize(input, 354, moreStatementExpressions_StartIndex);
        end;
    end;
end;// $ANTLR start "forControl"
// JavaStat.g:77:1: forControl options {k=3; } : ( forVarControl | ( forInit )? '';'' ( expression )? '';'' ( forUpdate )? );
function TJava_JavaStat.forControl():Integer;
var
  _alt:array [0..255] of Integer;
  forControl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    forControl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 355) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaStat.g:79:2: ( forVarControl | ( forInit )? '';'' ( expression )? '';'' ( forUpdate )? )
        _alt[20]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaStat attribute is inherited via the parser, lexer, ...
         *}
        _alt[20] := getDfa20.predict(input);
        case (_alt[20]) of 
             1 :
                begin
                // JavaStat.g:79:4: forVarControl
                begin
                pushFollow(FOLLOW_forVarControl_in_forControl516);
                forVarControl();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaStat.g:80:4: ( forInit )? '';'' ( expression )? '';'' ( forUpdate )?
                begin
                // block:JavaStat.g:80:4: ( forInit )?
                _alt[17]:=2;
                _LA[17,0] := input.LA(1);

                if ( ((_LA[17,0]=Identifier) or ((_LA[17,0]>=FloatingPointLiteral) and 
                ( _LA[17,0]<=DecimalLiteral)) or (_LA[17,0]=33) or (_LA[17,0]=40) or (_LA[17,0]=49) or ((_LA[17,0]>=55) and 
                ( _LA[17,0]<=62)) or ((_LA[17,0]>=64) and 
                ( _LA[17,0]<=65)) or (_LA[17,0]=68) or ((_LA[17,0]>=86) and 
                ( _LA[17,0]<=87)) or ((_LA[17,0]>=90) and 
                ( _LA[17,0]<=98))) ) then 
                begin
                  _alt[17]:=1;
                end
                ;
                case (_alt[17]) of
                     1 :
                        begin
                        // JavaStat.g:0:0: forInit
                        begin
                        pushFollow(FOLLOW_forInit_in_forControl521);
                        forInit();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,25,FOLLOW_25_in_forControl524); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:80:17: ( expression )?
                _alt[18]:=2;
                _LA[18,0] := input.LA(1);

                if ( ((_LA[18,0]=Identifier) or ((_LA[18,0]>=FloatingPointLiteral) and 
                ( _LA[18,0]<=DecimalLiteral)) or (_LA[18,0]=33) or (_LA[18,0]=40) or ((_LA[18,0]>=55) and 
                ( _LA[18,0]<=62)) or ((_LA[18,0]>=64) and 
                ( _LA[18,0]<=65)) or ((_LA[18,0]>=86) and 
                ( _LA[18,0]<=87)) or ((_LA[18,0]>=90) and 
                ( _LA[18,0]<=98))) ) then 
                begin
                  _alt[18]:=1;
                end
                ;
                case (_alt[18]) of
                     1 :
                        begin
                        // JavaStat.g:0:0: expression
                        begin
                        pushFollow(FOLLOW_expression_in_forControl526);
                        TJavaParser(gJava).expression();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,25,FOLLOW_25_in_forControl529); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaStat.g:80:33: ( forUpdate )?
                _alt[19]:=2;
                _LA[19,0] := input.LA(1);

                if ( ((_LA[19,0]=Identifier) or ((_LA[19,0]>=FloatingPointLiteral) and 
                ( _LA[19,0]<=DecimalLiteral)) or (_LA[19,0]=33) or (_LA[19,0]=40) or ((_LA[19,0]>=55) and 
                ( _LA[19,0]<=62)) or ((_LA[19,0]>=64) and 
                ( _LA[19,0]<=65)) or ((_LA[19,0]>=86) and 
                ( _LA[19,0]<=87)) or ((_LA[19,0]>=90) and 
                ( _LA[19,0]<=98))) ) then 
                begin
                  _alt[19]:=1;
                end
                ;
                case (_alt[19]) of
                     1 :
                        begin
                        // JavaStat.g:0:0: forUpdate
                        begin
                        pushFollow(FOLLOW_forUpdate_in_forControl531);
                        forUpdate();

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
          memoize(input, 355, forControl_StartIndex);
        end;
    end;
end;// $ANTLR start "forInit"
// JavaStat.g:83:1: forInit : ( ( variableModifier )* dtype variableDeclarators | expressionList );
function TJava_JavaStat.forInit():Integer;
var
  _alt:array [0..255] of Integer;
  forInit_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    forInit_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 356) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaStat.g:84:2: ( ( variableModifier )* dtype variableDeclarators | expressionList )
        _alt[22]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Java_JavaStat attribute is inherited via the parser, lexer, ...
         *}
        _alt[22] := getDfa22.predict(input);
        case (_alt[22]) of 
             1 :
                begin
                // JavaStat.g:84:4: ( variableModifier )* dtype variableDeclarators
                begin
                // closureBlock:JavaStat.g:84:4: ( variableModifier )*
                repeat 
                    _alt[21]:=2;
                    _LA[21,0] := input.LA(1);

                    if ( ((_LA[21,0]=49) or (_LA[21,0]=68)) ) then 
                    begin
                      _alt[21]:=1;
                    end

                    ;

                    case (_alt[21]) of
                	 1 :
                	    begin
                	    // JavaStat.g:0:0: variableModifier
                	    begin
                	    pushFollow(FOLLOW_variableModifier_in_forInit543);
                	    TJavaParser(gJava).variableModifier();

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

                pushFollow(FOLLOW_dtype_in_forInit546);
                TJavaParser(gJava).dtype();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_variableDeclarators_in_forInit548);
                TJavaParser(gJava).variableDeclarators();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaStat.g:85:4: expressionList
                begin
                pushFollow(FOLLOW_expressionList_in_forInit553);
                TJavaParser(gJava).expressionList();

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
          memoize(input, 356, forInit_StartIndex);
        end;
    end;
end;// $ANTLR start "forVarControl"
// JavaStat.g:88:1: forVarControl : ( variableModifier )* dtype Identifier '':'' expression ;
function TJava_JavaStat.forVarControl():Integer;
var
  _alt:array [0..255] of Integer;
  forVarControl_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    forVarControl_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 357) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:89:2: ( ( variableModifier )* dtype Identifier '':'' expression )
        // JavaStat.g:89:4: ( variableModifier )* dtype Identifier '':'' expression
        begin
        // closureBlock:JavaStat.g:89:4: ( variableModifier )*
        repeat 
            _alt[23]:=2;
            _LA[23,0] := input.LA(1);

            if ( ((_LA[23,0]=49) or (_LA[23,0]=68)) ) then 
            begin
              _alt[23]:=1;
            end

            ;

            case (_alt[23]) of
        	 1 :
        	    begin
        	    // JavaStat.g:0:0: variableModifier
        	    begin
        	    pushFollow(FOLLOW_variableModifier_in_forVarControl565);
        	    TJavaParser(gJava).variableModifier();

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

        pushFollow(FOLLOW_dtype_in_forVarControl568);
        TJavaParser(gJava).dtype();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_forVarControl570); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,78,FOLLOW_78_in_forVarControl572); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_expression_in_forVarControl574);
        TJavaParser(gJava).expression();

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
          memoize(input, 357, forVarControl_StartIndex);
        end;
    end;
end;// $ANTLR start "forUpdate"
// JavaStat.g:92:1: forUpdate : expressionList ;
function TJava_JavaStat.forUpdate():Integer;
var
  _alt:array [0..255] of Integer;
  forUpdate_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    forUpdate_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 358) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaStat.g:93:2: ( expressionList )
        // JavaStat.g:93:4: expressionList
        begin
        pushFollow(FOLLOW_expressionList_in_forUpdate585);
        TJavaParser(gJava).expressionList();

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
          memoize(input, 358, forUpdate_StartIndex);
        end;
    end;
end;// $ANTLR start "synpred2_JavaStat"
function TJava_JavaStat.synpred2_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:15:4: ( localVariableDeclaration )
    // JavaStat.g:15:4: localVariableDeclaration
    begin
    pushFollow(FOLLOW_localVariableDeclaration_in_synpred2_JavaStat58);
    localVariableDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred2_JavaStat// $ANTLR start "synpred3_JavaStat"
function TJava_JavaStat.synpred3_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:16:4: ( classOrInterfaceDeclaration )
    // JavaStat.g:16:4: classOrInterfaceDeclaration
    begin
    pushFollow(FOLLOW_classOrInterfaceDeclaration_in_synpred3_JavaStat63);
    TJavaParser(gJava).classOrInterfaceDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred3_JavaStat// $ANTLR start "synpred12_JavaStat"
function TJava_JavaStat.synpred12_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:32:9: ( catches ''finally'' block )
    // JavaStat.g:32:9: catches ''finally'' block
    begin
    pushFollow(FOLLOW_catches_in_synpred12_JavaStat217);
    catches();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,106,FOLLOW_106_in_synpred12_JavaStat219); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_block_in_synpred12_JavaStat221);
    block();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred12_JavaStat// $ANTLR start "synpred13_JavaStat"
function TJava_JavaStat.synpred13_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:33:9: ( catches )
    // JavaStat.g:33:9: catches
    begin
    pushFollow(FOLLOW_catches_in_synpred13_JavaStat231);
    catches();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred13_JavaStat// $ANTLR start "synpred30_JavaStat"
function TJava_JavaStat.synpred30_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:68:4: ( ''case'' constantExpression '':'' )
    // JavaStat.g:68:4: ''case'' constantExpression '':''
    begin
    match(input,113,FOLLOW_113_in_synpred30_JavaStat456); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_constantExpression_in_synpred30_JavaStat458);
    TJavaParser(gJava).constantExpression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,78,FOLLOW_78_in_synpred30_JavaStat460); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred30_JavaStat// $ANTLR start "synpred31_JavaStat"
function TJava_JavaStat.synpred31_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:69:6: ( ''case'' enumConstantName '':'' )
    // JavaStat.g:69:6: ''case'' enumConstantName '':''
    begin
    match(input,113,FOLLOW_113_in_synpred31_JavaStat467); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_enumConstantName_in_synpred31_JavaStat469);
    TJavaParser(gJava).enumConstantName();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,78,FOLLOW_78_in_synpred31_JavaStat471); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred31_JavaStat// $ANTLR start "synpred33_JavaStat"
function TJava_JavaStat.synpred33_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:79:4: ( forVarControl )
    // JavaStat.g:79:4: forVarControl
    begin
    pushFollow(FOLLOW_forVarControl_in_synpred33_JavaStat516);
    forVarControl();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred33_JavaStat// $ANTLR start "synpred38_JavaStat"
function TJava_JavaStat.synpred38_JavaStat_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaStat.g:84:4: ( ( variableModifier )* dtype variableDeclarators )
    // JavaStat.g:84:4: ( variableModifier )* dtype variableDeclarators
    begin
    // closureBlock:JavaStat.g:84:4: ( variableModifier )*
    repeat 
        _alt[30]:=2;
        _LA[30,0] := input.LA(1);

        if ( ((_LA[30,0]=49) or (_LA[30,0]=68)) ) then 
        begin
          _alt[30]:=1;
        end

        ;

        case (_alt[30]) of
    	 1 :
    	    begin
    	    // JavaStat.g:0:0: variableModifier
    	    begin
    	    pushFollow(FOLLOW_variableModifier_in_synpred38_JavaStat543);
    	    TJavaParser(gJava).variableModifier();

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

    pushFollow(FOLLOW_dtype_in_synpred38_JavaStat546);
    TJavaParser(gJava).dtype();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_variableDeclarators_in_synpred38_JavaStat548);
    TJavaParser(gJava).variableDeclarators();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred38_JavaStat

function TJava_JavaStat.synpred2_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred2_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred13_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred13_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred38_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred38_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred31_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred31_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred12_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred12_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred30_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred30_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred33_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred33_JavaStat_fragment(); // can never throw exception
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
function TJava_JavaStat.synpred3_JavaStat():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred3_JavaStat_fragment(); // can never throw exception
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



function TJava_JavaStat.getDfa2:IDFA;
begin
  if not Assigned(dfa2) then
    dfa2:=TAntlrDFA2.Create(self);
  Result:=dfa2;  
end;

constructor TJava_JavaStat.TAntlrDFA2.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=2;
  feot:=unpackEncodedString('\62\uffff');
  feof:=unpackEncodedString('\62\uffff');

  FMinc:=unpackEncodedString('\1\4\4\0\6\uffff\1\0\46\uffff');

  FMaxc:=unpackEncodedString('\1\157\4\0\6\uffff\1\0\46\uffff');
  faccept:=unpackEncodedString('\5\uffff\1\2\14\uffff\1\3\36\uffff\1\1');
  fspecial:=unpackEncodedString('\1\uffff\1\0\1\1\1\2\1\3\6\uffff\1\4\46'+
    '\uffff');
  AddTransition(unpackEncodedString('\1\3\1\5\6\22\15\uffff\1\22\1\uffff'+
  '\1\5\2\uffff\1\5\2\uffff\1\22\3\uffff\1\22\1\uffff\1\5\1\22\4\uffff\4'+
  '\5\1\1\1\5\1\13\3\5\10\4\1\uffff\2\22\2\uffff\1\2\21\uffff\2\22\2\uffff'+
  '\13\22\1\uffff\4\22\1\uffff\5\22'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
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

function TJava_JavaStat.TAntlrDFA2.getDescription():string;
begin
  Result:='14:1: blockStatement : ( localVariableDeclaration | classOrInterfaceDeclaration '+
  '| statement );';
end;


function TJava_JavaStat.TAntlrDFA2.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaStat(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[2,1] := input.LA(1);

		         
		        _index['2_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaStat()) ) then 
		        begin 
		          s := 49;
		        end

		        else if ( (synpred3_JavaStat()) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['2_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[2,2] := input.LA(1);

		         
		        _index['2_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaStat()) ) then 
		        begin 
		          s := 49;
		        end

		        else if ( (synpred3_JavaStat()) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['2_2']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[2,3] := input.LA(1);

		         
		        _index['2_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaStat()) ) then 
		        begin 
		          s := 49;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 18;
		        end
		        ;

		         
		        input.seek(_index['2_3']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[2,4] := input.LA(1);

		         
		        _index['2_4'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_JavaStat()) ) then 
		        begin 
		          s := 49;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 18;
		        end
		        ;

		         
		        input.seek(_index['2_4']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[2,11] := input.LA(1);

		         
		        _index['2_11'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred3_JavaStat()) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 18;
		        end
		        ;

		         
		        input.seek(_index['2_11']);
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


function TJava_JavaStat.getDfa10:IDFA;
begin
  if not Assigned(dfa10) then
    dfa10:=TAntlrDFA10.Create(self);
  Result:=dfa10;  
end;

constructor TJava_JavaStat.TAntlrDFA10.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=10;
  feot:=unpackEncodedString('\22\uffff');
  feof:=unpackEncodedString('\22\uffff');

  FMinc:=unpackEncodedString('\1\4\17\uffff\1\31\1\uffff');

  FMaxc:=unpackEncodedString('\1\157\17\uffff\1\133\1\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\1\4\1\5\1\6\1\7\1\10'+
    '\1\11\1\12\1\13\1\14\1\15\1\16\1\17\1\uffff\1\20');
  fspecial:=unpackEncodedString('\22\uffff');
  AddTransition(unpackEncodedString('\1\20\1\uffff\6\17\15\uffff\1\16\7'+
  '\uffff\1\17\3\uffff\1\1\2\uffff\1\17\12\uffff\1\11\3\uffff\10\17\1\uffff'+
  '\2\17\24\uffff\2\17\2\uffff\11\17\1\2\1\3\1\uffff\1\4\1\5\1\6\1\7\1\uffff'+
  '\1\10\1\12\1\13\1\14\1\15'));
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
  AddTransition(unpackEncodedString('\1\17\2\uffff\2\17\3\uffff\1\17\1\uffff'+
  '\2\17\4\uffff\1\17\2\uffff\1\17\22\uffff\1\17\1\uffff\1\17\4\uffff\10'+
  '\17\1\21\15\17'));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaStat.TAntlrDFA10.getDescription():string;
begin
  Result:='24:1: statement : ( block | ''assert'' expression ( '':'' expression )? '';'' | ''if'' p'+
  'arExpression statement ( options {k=1; backtrack=false; } : ''else'' statement )? '+
  '| ''for'' ''('' forControl '')'' statement | ''while'' parExpression statement | ''do'' st'+
  'atement ''while'' parExpression '';'' | ''try'' block ( catches ''finally'' block | catc'+
  'hes | ''finally'' block ) | ''switch'' parExpression ''{'' switchBlockStatementGroups '+
  '''}'' | ''synchronized'' parExpression block | ''return'' ( expression )? '';'' | ''throw'+
  ''' expression '';'' | ''break'' ( Identifier )? '';'' | ''continue'' ( Identifier )? '';'' '+
  '| '';'' | statementExpression '';'' | Identifier '':'' statement );';
end;




function TJava_JavaStat.getDfa20:IDFA;
begin
  if not Assigned(dfa20) then
    dfa20:=TAntlrDFA20.Create(self);
  Result:=dfa20;  
end;

constructor TJava_JavaStat.TAntlrDFA20.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=20;
  feot:=unpackEncodedString('\u0089\uffff');
  feof:=unpackEncodedString('\u0089\uffff');

  FMinc:=unpackEncodedString('\5\4\23\uffff\7\4\4\uffff\1\4\24\uffff\1\31'+
    '\1\52\1\31\1\uffff\22\0\5\uffff\1\0\26\uffff\3\0\26\uffff\1\0\5\uffff');

  FMaxc:=unpackEncodedString('\1\142\1\104\1\4\1\133\1\51\23\uffff\2\51'+
    '\1\104\1\4\1\104\1\137\1\142\4\uffff\1\142\24\uffff\1\116\1\52\1\116'+
    '\1\uffff\22\0\5\uffff\1\0\26\uffff\3\0\26\uffff\1\0\5\uffff');
  faccept:=unpackEncodedString('\5\uffff\1\2\170\uffff\1\1\12\uffff');
  fspecial:=unpackEncodedString('\74\uffff\1\0\1\1\1\2\1\3\1\4\1\5\1\6\1'+
    '\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\1\17\1\20\1\21\5\uffff\1\22\26'+
    '\uffff\1\23\1\24\1\25\26\uffff\1\26\5\uffff');
  AddTransition(unpackEncodedString('\1\3\1\uffff\6\5\15\uffff\1\5\7\uffff'+
  '\1\5\6\uffff\1\5\10\uffff\1\1\5\uffff\10\4\1\uffff\2\5\2\uffff\1\2\21'+
  '\uffff\2\5\2\uffff\11\5'));
  AddTransition(unpackEncodedString('\1\30\54\uffff\1\32\5\uffff\10\31\5'+
  '\uffff\1\33'));
  AddTransition(unpackEncodedString('\1\34'));
  AddTransition(unpackEncodedString('\1\70\24\uffff\1\5\2\uffff\1\35\1\5'+
  '\3\uffff\1\43\3\5\4\uffff\1\36\2\uffff\1\5\22\uffff\1\5\1\uffff\1\5\4'+
  '\uffff\10\5\1\uffff\15\5'));
  AddTransition(unpackEncodedString('\1\72\27\uffff\1\5\14\uffff\1\71'));
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
  AddTransition(unpackEncodedString('\1\77\27\uffff\1\75\4\uffff\1\74\7'+
  '\uffff\1\76'));
  AddTransition(unpackEncodedString('\1\101\44\uffff\1\100'));
  AddTransition(unpackEncodedString('\1\102\54\uffff\1\104\5\uffff\10\103'+
  '\5\uffff\1\105'));
  AddTransition(unpackEncodedString('\1\106'));
  AddTransition(unpackEncodedString('\1\111\27\uffff\1\107\24\uffff\1\113'+
  '\5\uffff\10\112\2\uffff\1\110\2\uffff\1\114'));
  AddTransition(unpackEncodedString('\1\115\31\uffff\1\5\2\uffff\1\5\36'+
  '\uffff\1\5\35\uffff\2\5'));
  AddTransition(unpackEncodedString('\1\5\1\uffff\6\5\25\uffff\1\5\6\uffff'+
  '\1\5\1\uffff\1\123\14\uffff\10\5\1\uffff\2\5\24\uffff\2\5\2\uffff\11\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\152\1\uffff\6\5\25\uffff\1\5\6\uffff'+
  '\1\5\3\uffff\1\5\12\uffff\10\153\1\154\2\5\24\uffff\2\5\2\uffff\11\5'));
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
  AddTransition(unpackEncodedString('\1\5\10\uffff\1\5\6\uffff\1\5\2\uffff'+
  '\1\5\41\uffff\1\176'));
  AddTransition(unpackEncodedString('\1\u0083'));
  AddTransition(unpackEncodedString('\1\5\10\uffff\1\5\6\uffff\1\5\2\uffff'+
  '\1\5\41\uffff\1\176'));
  AddTransition(unpackEncodedString(''));
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
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
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
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
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
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJava_JavaStat.TAntlrDFA20.getDescription():string;
begin
  Result:='77:1: forControl options {k=3; } : ( forVarControl | ( forInit )? '';'' ( expressi'+
  'on )? '';'' ( forUpdate )? );';
end;


function TJava_JavaStat.TAntlrDFA20.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaStat(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[20,60] := input.LA(1);

		         
		        _index['20_60'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_60']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[20,61] := input.LA(1);

		         
		        _index['20_61'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_61']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[20,62] := input.LA(1);

		         
		        _index['20_62'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_62']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[20,63] := input.LA(1);

		         
		        _index['20_63'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_63']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[20,64] := input.LA(1);

		         
		        _index['20_64'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_64']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[20,65] := input.LA(1);

		         
		        _index['20_65'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_65']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[20,66] := input.LA(1);

		         
		        _index['20_66'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_66']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[20,67] := input.LA(1);

		         
		        _index['20_67'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_67']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[20,68] := input.LA(1);

		         
		        _index['20_68'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_68']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[20,69] := input.LA(1);

		         
		        _index['20_69'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_69']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[20,70] := input.LA(1);

		         
		        _index['20_70'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_70']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[20,71] := input.LA(1);

		         
		        _index['20_71'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_71']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[20,72] := input.LA(1);

		         
		        _index['20_72'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_72']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[20,73] := input.LA(1);

		         
		        _index['20_73'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_73']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[20,74] := input.LA(1);

		         
		        _index['20_74'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_74']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 15 : 
		      begin
		        _LA[20,75] := input.LA(1);

		         
		        _index['20_75'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_75']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 16 : 
		      begin
		        _LA[20,76] := input.LA(1);

		         
		        _index['20_76'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_76']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 17 : 
		      begin
		        _LA[20,77] := input.LA(1);

		         
		        _index['20_77'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_77']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 18 : 
		      begin
		        _LA[20,83] := input.LA(1);

		         
		        _index['20_83'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_83']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 19 : 
		      begin
		        _LA[20,106] := input.LA(1);

		         
		        _index['20_106'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_106']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 20 : 
		      begin
		        _LA[20,107] := input.LA(1);

		         
		        _index['20_107'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_107']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 21 : 
		      begin
		        _LA[20,108] := input.LA(1);

		         
		        _index['20_108'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_108']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 22 : 
		      begin
		        _LA[20,131] := input.LA(1);

		         
		        _index['20_131'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred33_JavaStat()) ) then 
		        begin 
		          s := 126;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['20_131']);
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
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 20, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TJava_JavaStat.getDfa22:IDFA;
begin
  if not Assigned(dfa22) then
    dfa22:=TAntlrDFA22.Create(self);
  Result:=dfa22;  
end;

constructor TJava_JavaStat.TAntlrDFA22.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=22;
  feot:=unpackEncodedString('\27\uffff');
  feof:=unpackEncodedString('\27\uffff');

  FMinc:=unpackEncodedString('\1\4\2\uffff\2\0\22\uffff');

  FMaxc:=unpackEncodedString('\1\142\2\uffff\2\0\22\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\3\uffff\1\2\21\uffff');
  fspecial:=unpackEncodedString('\3\uffff\1\0\1\1\22\uffff');
  AddTransition(unpackEncodedString('\1\3\1\uffff\6\5\25\uffff\1\5\6\uffff'+
  '\1\5\10\uffff\1\1\5\uffff\10\4\1\uffff\2\5\2\uffff\1\1\21\uffff\2\5\2'+
  '\uffff\11\5'));
  AddTransition(unpackEncodedString(''));
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

function TJava_JavaStat.TAntlrDFA22.getDescription():string;
begin
  Result:='83:1: forInit : ( ( variableModifier )* dtype variableDeclarators | expressionLi'+
  'st );';
end;


function TJava_JavaStat.TAntlrDFA22.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TJava_JavaStat(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[22,3] := input.LA(1);

		         
		        _index['22_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred38_JavaStat()) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['22_3']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[22,4] := input.LA(1);

		         
		        _index['22_4'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred38_JavaStat()) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 5;
		        end
		        ;

		         
		        input.seek(_index['22_4']);
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

 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.