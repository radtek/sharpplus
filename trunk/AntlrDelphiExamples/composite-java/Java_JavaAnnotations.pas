// $ANTLR 3.1.2 JavaAnnotations.g 2009-07-23 21:37:51
unit Java_JavaAnnotations;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

              
type
  TJava_JavaAnnotations = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_annotation_in_annotations22:IBitSet;
    FOLLOW_68_in_annotation34:IBitSet;
    FOLLOW_annotationName_in_annotation36:IBitSet;
    FOLLOW_65_in_annotation39:IBitSet;
    FOLLOW_elementValuePairs_in_annotation41:IBitSet;
    FOLLOW_66_in_annotation44:IBitSet;
    FOLLOW_Identifier_in_annotationName58:IBitSet;
    FOLLOW_28_in_annotationName61:IBitSet;
    FOLLOW_Identifier_in_annotationName63:IBitSet;
    FOLLOW_elementValuePair_in_elementValuePairs77:IBitSet;
    FOLLOW_34_in_elementValuePairs80:IBitSet;
    FOLLOW_elementValuePair_in_elementValuePairs82:IBitSet;
    FOLLOW_Identifier_in_elementValuePair97:IBitSet;
    FOLLOW_44_in_elementValuePair99:IBitSet;
    FOLLOW_elementValue_in_elementValuePair103:IBitSet;
    FOLLOW_conditionalExpression_in_elementValue115:IBitSet;
    FOLLOW_annotation_in_elementValue122:IBitSet;
    FOLLOW_elementValueArrayInitializer_in_elementValue129:IBitSet;
    FOLLOW_37_in_elementValueArrayInitializer141:IBitSet;
    FOLLOW_elementValue_in_elementValueArrayInitializer144:IBitSet;
    FOLLOW_34_in_elementValueArrayInitializer147:IBitSet;
    FOLLOW_elementValue_in_elementValueArrayInitializer149:IBitSet;
    FOLLOW_38_in_elementValueArrayInitializer156:IBitSet;
    FOLLOW_68_in_annotationTypeDeclaration168:IBitSet;
    FOLLOW_39_in_annotationTypeDeclaration170:IBitSet;
    FOLLOW_Identifier_in_annotationTypeDeclaration172:IBitSet;
    FOLLOW_annotationTypeBody_in_annotationTypeDeclaration174:IBitSet;
    FOLLOW_37_in_annotationTypeBody186:IBitSet;
    FOLLOW_annotationTypeElementDeclarations_in_annotationTypeBody189:IBitSet;
    FOLLOW_38_in_annotationTypeBody193:IBitSet;
    FOLLOW_annotationTypeElementDeclaration_in_annotationTypeElementDeclarations206:IBitSet;
    FOLLOW_annotationTypeElementDeclaration_in_annotationTypeElementDeclarations210:IBitSet;
    FOLLOW_modifier_in_annotationTypeElementDeclaration225:IBitSet;
    FOLLOW_annotationTypeElementRest_in_annotationTypeElementDeclaration229:IBitSet;
    FOLLOW_dtype_in_annotationTypeElementRest241:IBitSet;
    FOLLOW_annotationMethodOrConstantRest_in_annotationTypeElementRest243:IBitSet;
    FOLLOW_25_in_annotationTypeElementRest245:IBitSet;
    FOLLOW_classDeclaration_in_annotationTypeElementRest252:IBitSet;
    FOLLOW_25_in_annotationTypeElementRest254:IBitSet;
    FOLLOW_interfaceDeclaration_in_annotationTypeElementRest262:IBitSet;
    FOLLOW_25_in_annotationTypeElementRest264:IBitSet;
    FOLLOW_enumDeclaration_in_annotationTypeElementRest272:IBitSet;
    FOLLOW_25_in_annotationTypeElementRest274:IBitSet;
    FOLLOW_annotationTypeDeclaration_in_annotationTypeElementRest282:IBitSet;
    FOLLOW_25_in_annotationTypeElementRest284:IBitSet;
    FOLLOW_annotationMethodRest_in_annotationMethodOrConstantRest297:IBitSet;
    FOLLOW_annotationConstantRest_in_annotationMethodOrConstantRest304:IBitSet;
    FOLLOW_Identifier_in_annotationMethodRest317:IBitSet;
    FOLLOW_65_in_annotationMethodRest319:IBitSet;
    FOLLOW_66_in_annotationMethodRest321:IBitSet;
    FOLLOW_defaultValue_in_annotationMethodRest324:IBitSet;
    FOLLOW_variableDeclarators_in_annotationConstantRest341:IBitSet;
    FOLLOW_69_in_defaultValue356:IBitSet;
    FOLLOW_elementValue_in_defaultValue358:IBitSet;
    FOLLOW_annotation_in_synpred1_JavaAnnotations22:IBitSet;
    FOLLOW_classDeclaration_in_synpred16_JavaAnnotations252:IBitSet;
    FOLLOW_25_in_synpred16_JavaAnnotations254:IBitSet;
    FOLLOW_interfaceDeclaration_in_synpred18_JavaAnnotations262:IBitSet;
    FOLLOW_25_in_synpred18_JavaAnnotations264:IBitSet;
    FOLLOW_enumDeclaration_in_synpred20_JavaAnnotations272:IBitSet;
    FOLLOW_25_in_synpred20_JavaAnnotations274:IBitSet;
    

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


    // $ANTLR start "annotations"
    // JavaAnnotations.g:6:1: annotations : ( annotation )+ ;
    function annotations():Integer;
    // $ANTLR end annotations


    // $ANTLR start "annotation"
    // JavaAnnotations.g:10:1: annotation : ''@'' annotationName ( ''('' ( elementValuePairs )? '')'' )? ;
    function annotation():Integer;
    // $ANTLR end annotation


    // $ANTLR start "annotationName"
    // JavaAnnotations.g:14:1: annotationName : Identifier ( ''.'' Identifier )* ;
    function annotationName():Integer;
    // $ANTLR end annotationName


    // $ANTLR start "elementValuePairs"
    // JavaAnnotations.g:18:1: elementValuePairs : elementValuePair ( '','' elementValuePair )* ;
    function elementValuePairs():Integer;
    // $ANTLR end elementValuePairs


    // $ANTLR start "elementValuePair"
    // JavaAnnotations.g:22:1: elementValuePair : ( Identifier ''='' )? elementValue ;
    function elementValuePair():Integer;
    // $ANTLR end elementValuePair


    // $ANTLR start "elementValue"
    // JavaAnnotations.g:26:1: elementValue : ( conditionalExpression | annotation | elementValueArrayInitializer );
    function elementValue():Integer;
    // $ANTLR end elementValue


    // $ANTLR start "elementValueArrayInitializer"
    // JavaAnnotations.g:32:1: elementValueArrayInitializer : ''{'' ( elementValue ( '','' elementValue )* )? ''}'' ;
    function elementValueArrayInitializer():Integer;
    // $ANTLR end elementValueArrayInitializer


    // $ANTLR start "annotationTypeDeclaration"
    // JavaAnnotations.g:36:1: annotationTypeDeclaration : ''@'' ''interface'' Identifier annotationTypeBody ;
    function annotationTypeDeclaration():Integer;
    // $ANTLR end annotationTypeDeclaration


    // $ANTLR start "annotationTypeBody"
    // JavaAnnotations.g:40:1: annotationTypeBody : ''{'' ( annotationTypeElementDeclarations )? ''}'' ;
    function annotationTypeBody():Integer;
    // $ANTLR end annotationTypeBody


    // $ANTLR start "annotationTypeElementDeclarations"
    // JavaAnnotations.g:44:1: annotationTypeElementDeclarations : ( annotationTypeElementDeclaration ) ( annotationTypeElementDeclaration )* ;
    function annotationTypeElementDeclarations():Integer;
    // $ANTLR end annotationTypeElementDeclarations


    // $ANTLR start "annotationTypeElementDeclaration"
    // JavaAnnotations.g:48:1: annotationTypeElementDeclaration : ( modifier )* annotationTypeElementRest ;
    function annotationTypeElementDeclaration():Integer;
    // $ANTLR end annotationTypeElementDeclaration


    // $ANTLR start "annotationTypeElementRest"
    // JavaAnnotations.g:52:1: annotationTypeElementRest : ( dtype annotationMethodOrConstantRest '';'' | classDeclaration ( '';'' )? | interfaceDeclaration ( '';'' )? | enumDeclaration ( '';'' )? | annotationTypeDeclaration ( '';'' )? );
    function annotationTypeElementRest():Integer;
    // $ANTLR end annotationTypeElementRest


    // $ANTLR start "annotationMethodOrConstantRest"
    // JavaAnnotations.g:60:1: annotationMethodOrConstantRest : ( annotationMethodRest | annotationConstantRest );
    function annotationMethodOrConstantRest():Integer;
    // $ANTLR end annotationMethodOrConstantRest


    // $ANTLR start "annotationMethodRest"
    // JavaAnnotations.g:65:1: annotationMethodRest : Identifier ''('' '')'' ( defaultValue )? ;
    function annotationMethodRest():Integer;
    // $ANTLR end annotationMethodRest


    // $ANTLR start "annotationConstantRest"
    // JavaAnnotations.g:69:1: annotationConstantRest : variableDeclarators ;
    function annotationConstantRest():Integer;
    // $ANTLR end annotationConstantRest


    // $ANTLR start "defaultValue"
    // JavaAnnotations.g:73:1: defaultValue : ''default'' elementValue ;
    function defaultValue():Integer;
    // $ANTLR end defaultValue

    // $ANTLR start "synpred1_JavaAnnotations"
    function synpred1_JavaAnnotations_fragment():Integer;
    // $ANTLR end synpred1_JavaAnnotations

    // $ANTLR start "synpred16_JavaAnnotations"
    function synpred16_JavaAnnotations_fragment():Integer;
    // $ANTLR end synpred16_JavaAnnotations

    // $ANTLR start "synpred18_JavaAnnotations"
    function synpred18_JavaAnnotations_fragment():Integer;
    // $ANTLR end synpred18_JavaAnnotations

    // $ANTLR start "synpred20_JavaAnnotations"
    function synpred20_JavaAnnotations_fragment():Integer;
    // $ANTLR end synpred20_JavaAnnotations

    // Delegated rules

    function synpred16_JavaAnnotations():Boolean;function synpred20_JavaAnnotations():Boolean;function synpred18_JavaAnnotations():Boolean;function synpred1_JavaAnnotations():Boolean;
  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
    JavaParser, 
    JclHashSets;

function TJava_JavaAnnotations.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TJava_JavaAnnotations.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState; gJava:TAntlrBaseRecognizer{TJavaParser} );
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

procedure TJava_JavaAnnotations.InitBitsets;
begin
  FOLLOW_annotation_in_annotations22 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000000010]);
  FOLLOW_68_in_annotation34 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_annotationName_in_annotation36 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000000002]);
  FOLLOW_65_in_annotation39 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00017]);
  FOLLOW_elementValuePairs_in_annotation41 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_annotation44 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_annotationName58 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_28_in_annotationName61 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_annotationName63 := TAntlrBitSet.CreateWithBits([$0000000010000002]);
  FOLLOW_elementValuePair_in_elementValuePairs77 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_34_in_elementValuePairs80 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00013]);
  FOLLOW_elementValuePair_in_elementValuePairs82 := TAntlrBitSet.CreateWithBits([$0000000400000002]);
  FOLLOW_Identifier_in_elementValuePair97 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_elementValuePair99 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00013]);
  FOLLOW_elementValue_in_elementValuePair103 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_conditionalExpression_in_elementValue115 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotation_in_elementValue122 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_elementValueArrayInitializer_in_elementValue129 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_elementValueArrayInitializer141 := TAntlrBitSet.CreateWithBits([$7F80016200000FD0,$00000007FCC00013]);
  FOLLOW_elementValue_in_elementValueArrayInitializer144 := TAntlrBitSet.CreateWithBits([$0000004400000000]);
  FOLLOW_34_in_elementValueArrayInitializer147 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00013]);
  FOLLOW_elementValue_in_elementValueArrayInitializer149 := TAntlrBitSet.CreateWithBits([$0000004400000000]);
  FOLLOW_38_in_elementValueArrayInitializer156 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_68_in_annotationTypeDeclaration168 := TAntlrBitSet.CreateWithBits([$0000008000000000]);
  FOLLOW_39_in_annotationTypeDeclaration170 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_Identifier_in_annotationTypeDeclaration172 := TAntlrBitSet.CreateWithBits([$0000002000000000]);
  FOLLOW_annotationTypeBody_in_annotationTypeDeclaration174 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_annotationTypeBody186 := TAntlrBitSet.CreateWithBits([$7FFFE0C048000030,$0000000000000010]);
  FOLLOW_annotationTypeElementDeclarations_in_annotationTypeBody189 := TAntlrBitSet.CreateWithBits([$0000004000000000]);
  FOLLOW_38_in_annotationTypeBody193 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotationTypeElementDeclaration_in_annotationTypeElementDeclarations206 := TAntlrBitSet.CreateWithBits([$7FFFE08048000032,$0000000000000010]);
  FOLLOW_annotationTypeElementDeclaration_in_annotationTypeElementDeclarations210 := TAntlrBitSet.CreateWithBits([$7FFFE08048000032,$0000000000000010]);
  FOLLOW_modifier_in_annotationTypeElementDeclaration225 := TAntlrBitSet.CreateWithBits([$7FFFE08048000030,$0000000000000010]);
  FOLLOW_annotationTypeElementRest_in_annotationTypeElementDeclaration229 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_annotationTypeElementRest241 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_annotationMethodOrConstantRest_in_annotationTypeElementRest243 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_annotationTypeElementRest245 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classDeclaration_in_annotationTypeElementRest252 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_annotationTypeElementRest254 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceDeclaration_in_annotationTypeElementRest262 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_annotationTypeElementRest264 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumDeclaration_in_annotationTypeElementRest272 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_annotationTypeElementRest274 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotationTypeDeclaration_in_annotationTypeElementRest282 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_annotationTypeElementRest284 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotationMethodRest_in_annotationMethodOrConstantRest297 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotationConstantRest_in_annotationMethodOrConstantRest304 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_Identifier_in_annotationMethodRest317 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000002]);
  FOLLOW_65_in_annotationMethodRest319 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000000000004]);
  FOLLOW_66_in_annotationMethodRest321 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000000020]);
  FOLLOW_defaultValue_in_annotationMethodRest324 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_variableDeclarators_in_annotationConstantRest341 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_69_in_defaultValue356 := TAntlrBitSet.CreateWithBits([$7F80012200000FD0,$00000007FCC00013]);
  FOLLOW_elementValue_in_defaultValue358 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_annotation_in_synpred1_JavaAnnotations22 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_classDeclaration_in_synpred16_JavaAnnotations252 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_synpred16_JavaAnnotations254 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_interfaceDeclaration_in_synpred18_JavaAnnotations262 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_synpred18_JavaAnnotations264 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumDeclaration_in_synpred20_JavaAnnotations272 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_synpred20_JavaAnnotations274 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TJava_JavaAnnotations.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TJava_JavaAnnotations.GetGrammarFileName():String;
begin
  Result:='JavaAnnotations.g'; 
end;

// $ANTLR start "annotations"
// JavaAnnotations.g:6:1: annotations : ( annotation )+ ;
function TJava_JavaAnnotations.annotations():Integer;
var
  _alt:array [0..255] of Integer;
  annotations_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotations_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 166) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:7:2: ( ( annotation )+ )
        // JavaAnnotations.g:7:4: ( annotation )+
        begin
        // positiveClosureBlock:JavaAnnotations.g:7:4: ( annotation )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=68)) ) then 
            begin
              _LA[1,2] := input.LA(2);

              if ( ((_LA[1,2]=Identifier)) ) then 
              begin
                _LA[1,3] := input.LA(3);

                if ( (synpred1_JavaAnnotations()) ) then 
                begin
                  _alt[1]:=1;
                end

                ;

              end

              ;

            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // JavaAnnotations.g:0:0: annotation
        	    begin
        	    pushFollow(FOLLOW_annotation_in_annotations22);
        	    annotation();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[1] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit;  
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(1, input);
                end;
            end;
            _cnt[1]:=_cnt[1]+1;
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
          memoize(input, 166, annotations_StartIndex);
        end;
    end;
end;// $ANTLR start "annotation"
// JavaAnnotations.g:10:1: annotation : ''@'' annotationName ( ''('' ( elementValuePairs )? '')'' )? ;
function TJava_JavaAnnotations.annotation():Integer;
var
  _alt:array [0..255] of Integer;
  annotation_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotation_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 167) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:11:2: ( ''@'' annotationName ( ''('' ( elementValuePairs )? '')'' )? )
        // JavaAnnotations.g:11:4: ''@'' annotationName ( ''('' ( elementValuePairs )? '')'' )?
        begin
        match(input,68,FOLLOW_68_in_annotation34); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_annotationName_in_annotation36);
        annotationName();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaAnnotations.g:11:23: ( ''('' ( elementValuePairs )? '')'' )?
        _alt[3]:=2;
        _LA[3,0] := input.LA(1);

        if ( ((_LA[3,0]=65)) ) then 
        begin
          _alt[3]:=1;
        end
        ;
        case (_alt[3]) of
             1 :
                begin
                // JavaAnnotations.g:11:24: ''('' ( elementValuePairs )? '')''
                begin
                match(input,65,FOLLOW_65_in_annotation39); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaAnnotations.g:11:28: ( elementValuePairs )?
                _alt[2]:=2;
                _LA[2,0] := input.LA(1);

                if ( ((_LA[2,0]=Identifier) or ((_LA[2,0]>=FloatingPointLiteral) and 
                ( _LA[2,0]<=DecimalLiteral)) or (_LA[2,0]=33) or (_LA[2,0]=37) or (_LA[2,0]=40) or ((_LA[2,0]>=55) and 
                ( _LA[2,0]<=62)) or ((_LA[2,0]>=64) and 
                ( _LA[2,0]<=65)) or (_LA[2,0]=68) or ((_LA[2,0]>=86) and 
                ( _LA[2,0]<=87)) or ((_LA[2,0]>=90) and 
                ( _LA[2,0]<=98))) ) then 
                begin
                  _alt[2]:=1;
                end
                ;
                case (_alt[2]) of
                     1 :
                        begin
                        // JavaAnnotations.g:0:0: elementValuePairs
                        begin
                        pushFollow(FOLLOW_elementValuePairs_in_annotation41);
                        elementValuePairs();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,66,FOLLOW_66_in_annotation44); 
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
          memoize(input, 167, annotation_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationName"
// JavaAnnotations.g:14:1: annotationName : Identifier ( ''.'' Identifier )* ;
function TJava_JavaAnnotations.annotationName():Integer;
var
  _alt:array [0..255] of Integer;
  annotationName_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationName_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 168) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:15:2: ( Identifier ( ''.'' Identifier )* )
        // JavaAnnotations.g:15:4: Identifier ( ''.'' Identifier )*
        begin
        match(input,Identifier,FOLLOW_Identifier_in_annotationName58); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaAnnotations.g:15:15: ( ''.'' Identifier )*
        repeat 
            _alt[4]:=2;
            _LA[4,0] := input.LA(1);

            if ( ((_LA[4,0]=28)) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            case (_alt[4]) of
        	 1 :
        	    begin
        	    // JavaAnnotations.g:15:16: ''.'' Identifier
        	    begin
        	    match(input,28,FOLLOW_28_in_annotationName61); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,Identifier,FOLLOW_Identifier_in_annotationName63); 
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
          memoize(input, 168, annotationName_StartIndex);
        end;
    end;
end;// $ANTLR start "elementValuePairs"
// JavaAnnotations.g:18:1: elementValuePairs : elementValuePair ( '','' elementValuePair )* ;
function TJava_JavaAnnotations.elementValuePairs():Integer;
var
  _alt:array [0..255] of Integer;
  elementValuePairs_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    elementValuePairs_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 169) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:19:2: ( elementValuePair ( '','' elementValuePair )* )
        // JavaAnnotations.g:19:4: elementValuePair ( '','' elementValuePair )*
        begin
        pushFollow(FOLLOW_elementValuePair_in_elementValuePairs77);
        elementValuePair();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:JavaAnnotations.g:19:21: ( '','' elementValuePair )*
        repeat 
            _alt[5]:=2;
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=34)) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            case (_alt[5]) of
        	 1 :
        	    begin
        	    // JavaAnnotations.g:19:22: '','' elementValuePair
        	    begin
        	    match(input,34,FOLLOW_34_in_elementValuePairs80); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_elementValuePair_in_elementValuePairs82);
        	    elementValuePair();

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
          memoize(input, 169, elementValuePairs_StartIndex);
        end;
    end;
end;// $ANTLR start "elementValuePair"
// JavaAnnotations.g:22:1: elementValuePair : ( Identifier ''='' )? elementValue ;
function TJava_JavaAnnotations.elementValuePair():Integer;
var
  _alt:array [0..255] of Integer;
  elementValuePair_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    elementValuePair_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 170) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:23:2: ( ( Identifier ''='' )? elementValue )
        // JavaAnnotations.g:23:4: ( Identifier ''='' )? elementValue
        begin
        // block:JavaAnnotations.g:23:4: ( Identifier ''='' )?
        _alt[6]:=2;
        _LA[6,0] := input.LA(1);

        if ( ((_LA[6,0]=Identifier)) ) then 
        begin
          _LA[6,1] := input.LA(2);

          if ( ((_LA[6,1]=44)) ) then 
          begin
            _alt[6]:=1;
          end
          ;
        end
        ;
        case (_alt[6]) of
             1 :
                begin
                // JavaAnnotations.g:23:5: Identifier ''=''
                begin
                match(input,Identifier,FOLLOW_Identifier_in_elementValuePair97); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_elementValuePair99); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_elementValue_in_elementValuePair103);
        elementValue();

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
          memoize(input, 170, elementValuePair_StartIndex);
        end;
    end;
end;// $ANTLR start "elementValue"
// JavaAnnotations.g:26:1: elementValue : ( conditionalExpression | annotation | elementValueArrayInitializer );
function TJava_JavaAnnotations.elementValue():Integer;
var
  _alt:array [0..255] of Integer;
  elementValue_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    elementValue_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 171) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaAnnotations.g:27:2: ( conditionalExpression | annotation | elementValueArrayInitializer )
        _alt[7]:=3;

        case input.LA(1) of
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
         86 , 
         87 , 
         90 , 
         91 , 
         92 , 
         93 , 
         94 , 
         95 , 
         96 , 
         97 , 
         98: 
            begin
            _alt[7]:=1;
            end;
         68: 
            begin
            _alt[7]:=2;
            end;
         37: 
            begin
            _alt[7]:=3;
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
            , 7, 0, input);

        end;
        end;

        case (_alt[7]) of 
             1 :
                begin
                // JavaAnnotations.g:27:4: conditionalExpression
                begin
                pushFollow(FOLLOW_conditionalExpression_in_elementValue115);
                TJavaParser(gJava).conditionalExpression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaAnnotations.g:28:6: annotation
                begin
                pushFollow(FOLLOW_annotation_in_elementValue122);
                annotation();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // JavaAnnotations.g:29:6: elementValueArrayInitializer
                begin
                pushFollow(FOLLOW_elementValueArrayInitializer_in_elementValue129);
                elementValueArrayInitializer();

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
          memoize(input, 171, elementValue_StartIndex);
        end;
    end;
end;// $ANTLR start "elementValueArrayInitializer"
// JavaAnnotations.g:32:1: elementValueArrayInitializer : ''{'' ( elementValue ( '','' elementValue )* )? ''}'' ;
function TJava_JavaAnnotations.elementValueArrayInitializer():Integer;
var
  _alt:array [0..255] of Integer;
  elementValueArrayInitializer_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    elementValueArrayInitializer_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 172) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:33:2: ( ''{'' ( elementValue ( '','' elementValue )* )? ''}'' )
        // JavaAnnotations.g:33:4: ''{'' ( elementValue ( '','' elementValue )* )? ''}''
        begin
        match(input,37,FOLLOW_37_in_elementValueArrayInitializer141); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaAnnotations.g:33:8: ( elementValue ( '','' elementValue )* )?
        _alt[9]:=2;
        _LA[9,0] := input.LA(1);

        if ( ((_LA[9,0]=Identifier) or ((_LA[9,0]>=FloatingPointLiteral) and 
        ( _LA[9,0]<=DecimalLiteral)) or (_LA[9,0]=33) or (_LA[9,0]=37) or (_LA[9,0]=40) or ((_LA[9,0]>=55) and 
        ( _LA[9,0]<=62)) or ((_LA[9,0]>=64) and 
        ( _LA[9,0]<=65)) or (_LA[9,0]=68) or ((_LA[9,0]>=86) and 
        ( _LA[9,0]<=87)) or ((_LA[9,0]>=90) and 
        ( _LA[9,0]<=98))) ) then 
        begin
          _alt[9]:=1;
        end
        ;
        case (_alt[9]) of
             1 :
                begin
                // JavaAnnotations.g:33:9: elementValue ( '','' elementValue )*
                begin
                pushFollow(FOLLOW_elementValue_in_elementValueArrayInitializer144);
                elementValue();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // closureBlock:JavaAnnotations.g:33:22: ( '','' elementValue )*
                repeat 
                    _alt[8]:=2;
                    _LA[8,0] := input.LA(1);

                    if ( ((_LA[8,0]=34)) ) then 
                    begin
                      _alt[8]:=1;
                    end

                    ;

                    case (_alt[8]) of
                	 1 :
                	    begin
                	    // JavaAnnotations.g:33:23: '','' elementValue
                	    begin
                	    match(input,34,FOLLOW_34_in_elementValueArrayInitializer147); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    pushFollow(FOLLOW_elementValue_in_elementValueArrayInitializer149);
                	    elementValue();

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
                end;

        end;

        match(input,38,FOLLOW_38_in_elementValueArrayInitializer156); 
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
          memoize(input, 172, elementValueArrayInitializer_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationTypeDeclaration"
// JavaAnnotations.g:36:1: annotationTypeDeclaration : ''@'' ''interface'' Identifier annotationTypeBody ;
function TJava_JavaAnnotations.annotationTypeDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  annotationTypeDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationTypeDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 173) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:37:2: ( ''@'' ''interface'' Identifier annotationTypeBody )
        // JavaAnnotations.g:37:4: ''@'' ''interface'' Identifier annotationTypeBody
        begin
        match(input,68,FOLLOW_68_in_annotationTypeDeclaration168); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,39,FOLLOW_39_in_annotationTypeDeclaration170); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,Identifier,FOLLOW_Identifier_in_annotationTypeDeclaration172); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_annotationTypeBody_in_annotationTypeDeclaration174);
        annotationTypeBody();

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
          memoize(input, 173, annotationTypeDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationTypeBody"
// JavaAnnotations.g:40:1: annotationTypeBody : ''{'' ( annotationTypeElementDeclarations )? ''}'' ;
function TJava_JavaAnnotations.annotationTypeBody():Integer;
var
  _alt:array [0..255] of Integer;
  annotationTypeBody_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationTypeBody_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 174) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:41:2: ( ''{'' ( annotationTypeElementDeclarations )? ''}'' )
        // JavaAnnotations.g:41:4: ''{'' ( annotationTypeElementDeclarations )? ''}''
        begin
        match(input,37,FOLLOW_37_in_annotationTypeBody186); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaAnnotations.g:41:8: ( annotationTypeElementDeclarations )?
        _alt[10]:=2;
        _LA[10,0] := input.LA(1);

        if ( (((_LA[10,0]>=Identifier) and 
        ( _LA[10,0]<=ENUM)) or (_LA[10,0]=27) or (_LA[10,0]=30) or (_LA[10,0]=39) or ((_LA[10,0]>=45) and 
        ( _LA[10,0]<=62)) or (_LA[10,0]=68)) ) then 
        begin
          _alt[10]:=1;
        end
        ;
        case (_alt[10]) of
             1 :
                begin
                // JavaAnnotations.g:41:9: annotationTypeElementDeclarations
                begin
                pushFollow(FOLLOW_annotationTypeElementDeclarations_in_annotationTypeBody189);
                annotationTypeElementDeclarations();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,38,FOLLOW_38_in_annotationTypeBody193); 
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
          memoize(input, 174, annotationTypeBody_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationTypeElementDeclarations"
// JavaAnnotations.g:44:1: annotationTypeElementDeclarations : ( annotationTypeElementDeclaration ) ( annotationTypeElementDeclaration )* ;
function TJava_JavaAnnotations.annotationTypeElementDeclarations():Integer;
var
  _alt:array [0..255] of Integer;
  annotationTypeElementDeclarations_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationTypeElementDeclarations_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 175) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:45:2: ( ( annotationTypeElementDeclaration ) ( annotationTypeElementDeclaration )* )
        // JavaAnnotations.g:45:4: ( annotationTypeElementDeclaration ) ( annotationTypeElementDeclaration )*
        begin
        // blockSingleAlt:JavaAnnotations.g:45:4: ( annotationTypeElementDeclaration )
        // JavaAnnotations.g:45:5: annotationTypeElementDeclaration
        begin
        pushFollow(FOLLOW_annotationTypeElementDeclaration_in_annotationTypeElementDeclarations206);
        annotationTypeElementDeclaration();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        // closureBlock:JavaAnnotations.g:45:39: ( annotationTypeElementDeclaration )*
        repeat 
            _alt[11]:=2;
            _LA[11,0] := input.LA(1);

            if ( (((_LA[11,0]>=Identifier) and 
            ( _LA[11,0]<=ENUM)) or (_LA[11,0]=27) or (_LA[11,0]=30) or (_LA[11,0]=39) or ((_LA[11,0]>=45) and 
            ( _LA[11,0]<=62)) or (_LA[11,0]=68)) ) then 
            begin
              _alt[11]:=1;
            end

            ;

            case (_alt[11]) of
        	 1 :
        	    begin
        	    // JavaAnnotations.g:45:40: annotationTypeElementDeclaration
        	    begin
        	    pushFollow(FOLLOW_annotationTypeElementDeclaration_in_annotationTypeElementDeclarations210);
        	    annotationTypeElementDeclaration();

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
          memoize(input, 175, annotationTypeElementDeclarations_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationTypeElementDeclaration"
// JavaAnnotations.g:48:1: annotationTypeElementDeclaration : ( modifier )* annotationTypeElementRest ;
function TJava_JavaAnnotations.annotationTypeElementDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  annotationTypeElementDeclaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationTypeElementDeclaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 176) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:49:2: ( ( modifier )* annotationTypeElementRest )
        // JavaAnnotations.g:49:4: ( modifier )* annotationTypeElementRest
        begin
        // closureBlock:JavaAnnotations.g:49:4: ( modifier )*
        repeat 
            _alt[12]:=2;
            _LA[12,0] := input.LA(1);

            if ( ((_LA[12,0]=68)) ) then 
            begin
              _LA[12,2] := input.LA(2);

              if ( ((_LA[12,2]=Identifier)) ) then 
              begin
                _alt[12]:=1;
              end

              ;

            end
            else if ( ((_LA[12,0]=27) or ((_LA[12,0]>=45) and 
            ( _LA[12,0]<=54))) ) then 
            begin
              _alt[12]:=1;
            end

            ;

            case (_alt[12]) of
        	 1 :
        	    begin
        	    // JavaAnnotations.g:49:5: modifier
        	    begin
        	    pushFollow(FOLLOW_modifier_in_annotationTypeElementDeclaration225);
        	    TJavaParser(gJava).modifier();

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

        pushFollow(FOLLOW_annotationTypeElementRest_in_annotationTypeElementDeclaration229);
        annotationTypeElementRest();

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
          memoize(input, 176, annotationTypeElementDeclaration_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationTypeElementRest"
// JavaAnnotations.g:52:1: annotationTypeElementRest : ( dtype annotationMethodOrConstantRest '';'' | classDeclaration ( '';'' )? | interfaceDeclaration ( '';'' )? | enumDeclaration ( '';'' )? | annotationTypeDeclaration ( '';'' )? );
function TJava_JavaAnnotations.annotationTypeElementRest():Integer;
var
  _alt:array [0..255] of Integer;
  annotationTypeElementRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationTypeElementRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 177) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaAnnotations.g:53:2: ( dtype annotationMethodOrConstantRest '';'' | classDeclaration ( '';'' )? | interfaceDeclaration ( '';'' )? | enumDeclaration ( '';'' )? | annotationTypeDeclaration ( '';'' )? )
        _alt[17]:=5;

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
            _alt[17]:=1;
            end;
         30: 
            begin
            _alt[17]:=2;
            end;
         ENUM: 
            begin
            _LA[17,4] := input.LA(2);

            if ( (synpred16_JavaAnnotations()) ) then 
            begin
              _alt[17]:=2;
            end
            else if ( (synpred20_JavaAnnotations()) ) then 
            begin
              _alt[17]:=4;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit;  
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 17, 4, input);    

            end;
            end;
         39: 
            begin
            _alt[17]:=3;
            end;
         68: 
            begin
            _LA[17,6] := input.LA(2);

            if ( (synpred18_JavaAnnotations()) ) then 
            begin
              _alt[17]:=3;
            end
            else if ( (true) ) then 
            begin
              _alt[17]:=5;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit;  
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 17, 6, input);    

            end;
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
            , 17, 0, input);

        end;
        end;

        case (_alt[17]) of 
             1 :
                begin
                // JavaAnnotations.g:53:4: dtype annotationMethodOrConstantRest '';''
                begin
                pushFollow(FOLLOW_dtype_in_annotationTypeElementRest241);
                TJavaParser(gJava).dtype();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_annotationMethodOrConstantRest_in_annotationTypeElementRest243);
                annotationMethodOrConstantRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,25,FOLLOW_25_in_annotationTypeElementRest245); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaAnnotations.g:54:6: classDeclaration ( '';'' )?
                begin
                pushFollow(FOLLOW_classDeclaration_in_annotationTypeElementRest252);
                TJavaParser(gJava).classDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaAnnotations.g:54:23: ( '';'' )?
                _alt[13]:=2;
                _LA[13,0] := input.LA(1);

                if ( ((_LA[13,0]=25)) ) then 
                begin
                  _alt[13]:=1;
                end
                ;
                case (_alt[13]) of
                     1 :
                        begin
                        // JavaAnnotations.g:0:0: '';''
                        begin
                        match(input,25,FOLLOW_25_in_annotationTypeElementRest254); 
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
                // JavaAnnotations.g:55:6: interfaceDeclaration ( '';'' )?
                begin
                pushFollow(FOLLOW_interfaceDeclaration_in_annotationTypeElementRest262);
                TJavaParser(gJava).interfaceDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaAnnotations.g:55:27: ( '';'' )?
                _alt[14]:=2;
                _LA[14,0] := input.LA(1);

                if ( ((_LA[14,0]=25)) ) then 
                begin
                  _alt[14]:=1;
                end
                ;
                case (_alt[14]) of
                     1 :
                        begin
                        // JavaAnnotations.g:0:0: '';''
                        begin
                        match(input,25,FOLLOW_25_in_annotationTypeElementRest264); 
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
                // JavaAnnotations.g:56:6: enumDeclaration ( '';'' )?
                begin
                pushFollow(FOLLOW_enumDeclaration_in_annotationTypeElementRest272);
                TJavaParser(gJava).enumDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaAnnotations.g:56:22: ( '';'' )?
                _alt[15]:=2;
                _LA[15,0] := input.LA(1);

                if ( ((_LA[15,0]=25)) ) then 
                begin
                  _alt[15]:=1;
                end
                ;
                case (_alt[15]) of
                     1 :
                        begin
                        // JavaAnnotations.g:0:0: '';''
                        begin
                        match(input,25,FOLLOW_25_in_annotationTypeElementRest274); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             5 :
                begin
                // JavaAnnotations.g:57:6: annotationTypeDeclaration ( '';'' )?
                begin
                pushFollow(FOLLOW_annotationTypeDeclaration_in_annotationTypeElementRest282);
                annotationTypeDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:JavaAnnotations.g:57:32: ( '';'' )?
                _alt[16]:=2;
                _LA[16,0] := input.LA(1);

                if ( ((_LA[16,0]=25)) ) then 
                begin
                  _alt[16]:=1;
                end
                ;
                case (_alt[16]) of
                     1 :
                        begin
                        // JavaAnnotations.g:0:0: '';''
                        begin
                        match(input,25,FOLLOW_25_in_annotationTypeElementRest284); 
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
          memoize(input, 177, annotationTypeElementRest_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationMethodOrConstantRest"
// JavaAnnotations.g:60:1: annotationMethodOrConstantRest : ( annotationMethodRest | annotationConstantRest );
function TJava_JavaAnnotations.annotationMethodOrConstantRest():Integer;
var
  _alt:array [0..255] of Integer;
  annotationMethodOrConstantRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationMethodOrConstantRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 178) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:JavaAnnotations.g:61:2: ( annotationMethodRest | annotationConstantRest )
        _alt[18]:=2;
        _LA[18,0] := input.LA(1);

        if ( ((_LA[18,0]=Identifier)) ) then 
        begin
          _LA[18,1] := input.LA(2);

          if ( ((_LA[18,1]=65)) ) then 
          begin
            _alt[18]:=1;
          end
          else if ( ((_LA[18,1]=25) or (_LA[18,1]=34) or (_LA[18,1]=41) or (_LA[18,1]=44)) ) then 
          begin
            _alt[18]:=2;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit;  
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 18, 1, input);    

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
            , 18, 0, input);    

        end;
        case (_alt[18]) of 
             1 :
                begin
                // JavaAnnotations.g:61:4: annotationMethodRest
                begin
                pushFollow(FOLLOW_annotationMethodRest_in_annotationMethodOrConstantRest297);
                annotationMethodRest();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // JavaAnnotations.g:62:6: annotationConstantRest
                begin
                pushFollow(FOLLOW_annotationConstantRest_in_annotationMethodOrConstantRest304);
                annotationConstantRest();

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
          memoize(input, 178, annotationMethodOrConstantRest_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationMethodRest"
// JavaAnnotations.g:65:1: annotationMethodRest : Identifier ''('' '')'' ( defaultValue )? ;
function TJava_JavaAnnotations.annotationMethodRest():Integer;
var
  _alt:array [0..255] of Integer;
  annotationMethodRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationMethodRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 179) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:66:3: ( Identifier ''('' '')'' ( defaultValue )? )
        // JavaAnnotations.g:66:5: Identifier ''('' '')'' ( defaultValue )?
        begin
        match(input,Identifier,FOLLOW_Identifier_in_annotationMethodRest317); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,65,FOLLOW_65_in_annotationMethodRest319); 
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,66,FOLLOW_66_in_annotationMethodRest321); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:JavaAnnotations.g:66:24: ( defaultValue )?
        _alt[19]:=2;
        _LA[19,0] := input.LA(1);

        if ( ((_LA[19,0]=69)) ) then 
        begin
          _alt[19]:=1;
        end
        ;
        case (_alt[19]) of
             1 :
                begin
                // JavaAnnotations.g:66:25: defaultValue
                begin
                pushFollow(FOLLOW_defaultValue_in_annotationMethodRest324);
                defaultValue();

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
          memoize(input, 179, annotationMethodRest_StartIndex);
        end;
    end;
end;// $ANTLR start "annotationConstantRest"
// JavaAnnotations.g:69:1: annotationConstantRest : variableDeclarators ;
function TJava_JavaAnnotations.annotationConstantRest():Integer;
var
  _alt:array [0..255] of Integer;
  annotationConstantRest_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    annotationConstantRest_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 180) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:70:3: ( variableDeclarators )
        // JavaAnnotations.g:70:5: variableDeclarators
        begin
        pushFollow(FOLLOW_variableDeclarators_in_annotationConstantRest341);
        TJavaParser(gJava).variableDeclarators();

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
          memoize(input, 180, annotationConstantRest_StartIndex);
        end;
    end;
end;// $ANTLR start "defaultValue"
// JavaAnnotations.g:73:1: defaultValue : ''default'' elementValue ;
function TJava_JavaAnnotations.defaultValue():Integer;
var
  _alt:array [0..255] of Integer;
  defaultValue_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    defaultValue_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 181) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:JavaAnnotations.g:74:3: ( ''default'' elementValue )
        // JavaAnnotations.g:74:5: ''default'' elementValue
        begin
        match(input,69,FOLLOW_69_in_defaultValue356); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_elementValue_in_defaultValue358);
        elementValue();

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
          memoize(input, 181, defaultValue_StartIndex);
        end;
    end;
end;// $ANTLR start "synpred1_JavaAnnotations"
function TJava_JavaAnnotations.synpred1_JavaAnnotations_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaAnnotations.g:7:4: ( annotation )
    // JavaAnnotations.g:7:4: annotation
    begin
    pushFollow(FOLLOW_annotation_in_synpred1_JavaAnnotations22);
    annotation();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred1_JavaAnnotations// $ANTLR start "synpred16_JavaAnnotations"
function TJava_JavaAnnotations.synpred16_JavaAnnotations_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaAnnotations.g:54:6: ( classDeclaration ( '';'' )? )
    // JavaAnnotations.g:54:6: classDeclaration ( '';'' )?
    begin
    pushFollow(FOLLOW_classDeclaration_in_synpred16_JavaAnnotations252);
    TJavaParser(gJava).classDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    // block:JavaAnnotations.g:54:23: ( '';'' )?
    _alt[22]:=2;
    _LA[22,0] := input.LA(1);

    if ( ((_LA[22,0]=25)) ) then 
    begin
      _alt[22]:=1;
    end
    ;
    case (_alt[22]) of
         1 :
            begin
            // JavaAnnotations.g:0:0: '';''
            begin
            match(input,25,FOLLOW_25_in_synpred16_JavaAnnotations254); 
            if (state.failed) then
            begin
              Exit;
            end;

            end;
            end;

    end;


    end;
end;
// $ANTLR end synpred16_JavaAnnotations// $ANTLR start "synpred18_JavaAnnotations"
function TJava_JavaAnnotations.synpred18_JavaAnnotations_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaAnnotations.g:55:6: ( interfaceDeclaration ( '';'' )? )
    // JavaAnnotations.g:55:6: interfaceDeclaration ( '';'' )?
    begin
    pushFollow(FOLLOW_interfaceDeclaration_in_synpred18_JavaAnnotations262);
    TJavaParser(gJava).interfaceDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    // block:JavaAnnotations.g:55:27: ( '';'' )?
    _alt[23]:=2;
    _LA[23,0] := input.LA(1);

    if ( ((_LA[23,0]=25)) ) then 
    begin
      _alt[23]:=1;
    end
    ;
    case (_alt[23]) of
         1 :
            begin
            // JavaAnnotations.g:0:0: '';''
            begin
            match(input,25,FOLLOW_25_in_synpred18_JavaAnnotations264); 
            if (state.failed) then
            begin
              Exit;
            end;

            end;
            end;

    end;


    end;
end;
// $ANTLR end synpred18_JavaAnnotations// $ANTLR start "synpred20_JavaAnnotations"
function TJava_JavaAnnotations.synpred20_JavaAnnotations_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:JavaAnnotations.g:56:6: ( enumDeclaration ( '';'' )? )
    // JavaAnnotations.g:56:6: enumDeclaration ( '';'' )?
    begin
    pushFollow(FOLLOW_enumDeclaration_in_synpred20_JavaAnnotations272);
    TJavaParser(gJava).enumDeclaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    // block:JavaAnnotations.g:56:22: ( '';'' )?
    _alt[24]:=2;
    _LA[24,0] := input.LA(1);

    if ( ((_LA[24,0]=25)) ) then 
    begin
      _alt[24]:=1;
    end
    ;
    case (_alt[24]) of
         1 :
            begin
            // JavaAnnotations.g:0:0: '';''
            begin
            match(input,25,FOLLOW_25_in_synpred20_JavaAnnotations274); 
            if (state.failed) then
            begin
              Exit;
            end;

            end;
            end;

    end;


    end;
end;
// $ANTLR end synpred20_JavaAnnotations

function TJava_JavaAnnotations.synpred16_JavaAnnotations():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred16_JavaAnnotations_fragment(); // can never throw exception
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
function TJava_JavaAnnotations.synpred20_JavaAnnotations():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred20_JavaAnnotations_fragment(); // can never throw exception
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
function TJava_JavaAnnotations.synpred18_JavaAnnotations():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred18_JavaAnnotations_fragment(); // can never throw exception
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
function TJava_JavaAnnotations.synpred1_JavaAnnotations():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred1_JavaAnnotations_fragment(); // can never throw exception
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