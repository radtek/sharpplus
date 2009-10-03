// $ANTLR 3.2 10 03, 2009 17:07:46 SimpleC.g 2009-10-03 17:12:47
unit SimpleCParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const T__20=20;
    const INT=5;
    const ID=4;
    const EOF=-1;
    const T__9=9;
    const T__8=8;
    const T__7=7;
    const T__19=19;
    const WS=6;
    const T__16=16;
    const T__15=15;
    const T__18=18;
    const T__17=17;
    const T__12=12;
    const T__11=11;
    const T__14=14;
    const T__13=13;
    const T__10=10;              
type
  TSimpleCParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_declaration_in_prog28:IBitSet;
    FOLLOW_variable_in_declaration48:IBitSet;
    FOLLOW_functionHeader_in_declaration58:IBitSet;
    FOLLOW_7_in_declaration60:IBitSet;
    FOLLOW_functionHeader_in_declaration73:IBitSet;
    FOLLOW_block_in_declaration75:IBitSet;
    FOLLOW_dtype_in_variable97:IBitSet;
    FOLLOW_declarator_in_variable99:IBitSet;
    FOLLOW_7_in_variable101:IBitSet;
    FOLLOW_ID_in_declarator120:IBitSet;
    FOLLOW_dtype_in_functionHeader144:IBitSet;
    FOLLOW_ID_in_functionHeader146:IBitSet;
    FOLLOW_8_in_functionHeader148:IBitSet;
    FOLLOW_formalParameter_in_functionHeader152:IBitSet;
    FOLLOW_9_in_functionHeader156:IBitSet;
    FOLLOW_formalParameter_in_functionHeader158:IBitSet;
    FOLLOW_10_in_functionHeader166:IBitSet;
    FOLLOW_dtype_in_formalParameter188:IBitSet;
    FOLLOW_declarator_in_formalParameter190:IBitSet;
    FOLLOW_set_in_dtype0:IBitSet;
    FOLLOW_14_in_block279:IBitSet;
    FOLLOW_variable_in_block293:IBitSet;
    FOLLOW_stat_in_block308:IBitSet;
    FOLLOW_15_in_block319:IBitSet;
    FOLLOW_forStat_in_stat331:IBitSet;
    FOLLOW_expr_in_stat339:IBitSet;
    FOLLOW_7_in_stat341:IBitSet;
    FOLLOW_block_in_stat355:IBitSet;
    FOLLOW_assignStat_in_stat363:IBitSet;
    FOLLOW_7_in_stat365:IBitSet;
    FOLLOW_7_in_stat373:IBitSet;
    FOLLOW_16_in_forStat392:IBitSet;
    FOLLOW_8_in_forStat394:IBitSet;
    FOLLOW_assignStat_in_forStat396:IBitSet;
    FOLLOW_7_in_forStat398:IBitSet;
    FOLLOW_expr_in_forStat400:IBitSet;
    FOLLOW_7_in_forStat402:IBitSet;
    FOLLOW_assignStat_in_forStat404:IBitSet;
    FOLLOW_10_in_forStat406:IBitSet;
    FOLLOW_block_in_forStat408:IBitSet;
    FOLLOW_ID_in_assignStat435:IBitSet;
    FOLLOW_17_in_assignStat437:IBitSet;
    FOLLOW_expr_in_assignStat439:IBitSet;
    FOLLOW_condExpr_in_expr461:IBitSet;
    FOLLOW_aexpr_in_condExpr480:IBitSet;
    FOLLOW_set_in_condExpr484:IBitSet;
    FOLLOW_aexpr_in_condExpr492:IBitSet;
    FOLLOW_atom_in_aexpr514:IBitSet;
    FOLLOW_20_in_aexpr518:IBitSet;
    FOLLOW_atom_in_aexpr520:IBitSet;
    FOLLOW_ID_in_atom540:IBitSet;
    FOLLOW_INT_in_atom554:IBitSet;
    FOLLOW_8_in_atom568:IBitSet;
    FOLLOW_expr_in_atom570:IBitSet;
    FOLLOW_10_in_atom572:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "prog"
    // SimpleC.g:7:1: prog : ( declaration )+ ;
    function prog():Integer;
    // $ANTLR end prog


    // $ANTLR start "declaration"
    // SimpleC.g:11:1: declaration : ( variable | functionHeader '';'' | functionHeader block );
    function declaration():Integer;
    // $ANTLR end declaration


    // $ANTLR start "variable"
    // SimpleC.g:19:1: variable : dtype declarator '';'' ;
    function variable():Integer;
    // $ANTLR end variable


    // $ANTLR start "declarator"
    // SimpleC.g:23:1: declarator : ID ;
    function declarator():Integer;
    // $ANTLR end declarator


    // $ANTLR start "functionHeader"
    // SimpleC.g:27:1: functionHeader returns [String name] : dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')'' ;
    function functionHeader():String;
    // $ANTLR end functionHeader


    // $ANTLR start "formalParameter"
    // SimpleC.g:32:1: formalParameter : dtype declarator ;
    function formalParameter():Integer;
    // $ANTLR end formalParameter


    // $ANTLR start "dtype"
    // SimpleC.g:36:1: dtype : ( ''int'' | ''char'' | ''void'' | ID );
    function dtype():Integer;
    // $ANTLR end dtype


    // $ANTLR start "block"
    // SimpleC.g:43:1: block : ''{'' ( variable )* ( stat )* ''}'' ;
    function block():Integer;
    // $ANTLR end block


    // $ANTLR start "stat"
    // SimpleC.g:50:1: stat : ( forStat | expr '';'' | block | assignStat '';'' | '';'' );
    function stat():Integer;
    // $ANTLR end stat


    // $ANTLR start "forStat"
    // SimpleC.g:57:1: forStat : ''for'' ''('' assignStat '';'' expr '';'' assignStat '')'' block ;
    function forStat():Integer;
    // $ANTLR end forStat


    // $ANTLR start "assignStat"
    // SimpleC.g:61:1: assignStat : ID ''='' expr ;
    function assignStat():Integer;
    // $ANTLR end assignStat


    // $ANTLR start "expr"
    // SimpleC.g:65:1: expr : condExpr ;
    function expr():Integer;
    // $ANTLR end expr


    // $ANTLR start "condExpr"
    // SimpleC.g:68:1: condExpr : aexpr ( ( ''=='' | ''<'' ) aexpr )? ;
    function condExpr():Integer;
    // $ANTLR end condExpr


    // $ANTLR start "aexpr"
    // SimpleC.g:72:1: aexpr : atom ( ''+'' atom )* ;
    function aexpr():Integer;
    // $ANTLR end aexpr


    // $ANTLR start "atom"
    // SimpleC.g:76:1: atom : ( ID | INT | ''('' expr '')'' );
    function atom():Integer;
    // $ANTLR end atom

    // Delegated rules

  protected

     
          type TAntlrDFA2=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa2:IDFA;
        protected
          dfa2:IDFA;
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TSimpleCParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSimpleCParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"ID"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'',''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"''int''"');
  tokenNames.Add('"''char''"');
  tokenNames.Add('"''void''"');
  tokenNames.Add('"''{''"');
  tokenNames.Add('"''}''"');
  tokenNames.Add('"''for''"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"''==''"');
  tokenNames.Add('"''<''"');
  tokenNames.Add('"''+''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TSimpleCParser.InitBitsets;
begin
  FOLLOW_declaration_in_prog28 := TAntlrBitSet.CreateWithBits([$0000000000003812]);
  FOLLOW_variable_in_declaration48 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_functionHeader_in_declaration58 := TAntlrBitSet.CreateWithBits([$0000000000000080]);
  FOLLOW_7_in_declaration60 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_functionHeader_in_declaration73 := TAntlrBitSet.CreateWithBits([$0000000000004000]);
  FOLLOW_block_in_declaration75 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_variable97 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_declarator_in_variable99 := TAntlrBitSet.CreateWithBits([$0000000000000080]);
  FOLLOW_7_in_variable101 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_declarator120 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_functionHeader144 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_functionHeader146 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_8_in_functionHeader148 := TAntlrBitSet.CreateWithBits([$0000000000003C10]);
  FOLLOW_formalParameter_in_functionHeader152 := TAntlrBitSet.CreateWithBits([$0000000000000600]);
  FOLLOW_9_in_functionHeader156 := TAntlrBitSet.CreateWithBits([$0000000000003810]);
  FOLLOW_formalParameter_in_functionHeader158 := TAntlrBitSet.CreateWithBits([$0000000000000600]);
  FOLLOW_10_in_functionHeader166 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_formalParameter188 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_declarator_in_formalParameter190 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_dtype0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_14_in_block279 := TAntlrBitSet.CreateWithBits([$000000000001F9B0]);
  FOLLOW_variable_in_block293 := TAntlrBitSet.CreateWithBits([$000000000001F9B0]);
  FOLLOW_stat_in_block308 := TAntlrBitSet.CreateWithBits([$000000000001C1B0]);
  FOLLOW_15_in_block319 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_forStat_in_stat331 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expr_in_stat339 := TAntlrBitSet.CreateWithBits([$0000000000000080]);
  FOLLOW_7_in_stat341 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_stat355 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_assignStat_in_stat363 := TAntlrBitSet.CreateWithBits([$0000000000000080]);
  FOLLOW_7_in_stat365 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_7_in_stat373 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_16_in_forStat392 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_8_in_forStat394 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_assignStat_in_forStat396 := TAntlrBitSet.CreateWithBits([$0000000000000080]);
  FOLLOW_7_in_forStat398 := TAntlrBitSet.CreateWithBits([$0000000000000130]);
  FOLLOW_expr_in_forStat400 := TAntlrBitSet.CreateWithBits([$0000000000000080]);
  FOLLOW_7_in_forStat402 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_assignStat_in_forStat404 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_10_in_forStat406 := TAntlrBitSet.CreateWithBits([$0000000000004000]);
  FOLLOW_block_in_forStat408 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_assignStat435 := TAntlrBitSet.CreateWithBits([$0000000000020000]);
  FOLLOW_17_in_assignStat437 := TAntlrBitSet.CreateWithBits([$0000000000000130]);
  FOLLOW_expr_in_assignStat439 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_condExpr_in_expr461 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_aexpr_in_condExpr480 := TAntlrBitSet.CreateWithBits([$00000000000C0002]);
  FOLLOW_set_in_condExpr484 := TAntlrBitSet.CreateWithBits([$0000000000000130]);
  FOLLOW_aexpr_in_condExpr492 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_atom_in_aexpr514 := TAntlrBitSet.CreateWithBits([$0000000000100002]);
  FOLLOW_20_in_aexpr518 := TAntlrBitSet.CreateWithBits([$0000000000000130]);
  FOLLOW_atom_in_aexpr520 := TAntlrBitSet.CreateWithBits([$0000000000100002]);
  FOLLOW_ID_in_atom540 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_INT_in_atom554 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_8_in_atom568 := TAntlrBitSet.CreateWithBits([$0000000000000130]);
  FOLLOW_expr_in_atom570 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_10_in_atom572 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TSimpleCParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSimpleCParser.GetGrammarFileName():String;
begin
  Result:='SimpleC.g'; 
end;

// $ANTLR start "prog"
// SimpleC.g:7:1: prog : ( declaration )+ ;
function TSimpleCParser.prog():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:8:5: ( ( declaration )+ )
        // SimpleC.g:8:9: ( declaration )+
        begin
        // positiveClosureBlock:SimpleC.g:8:9: ( declaration )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=ID) or ((_LA[1,0]>=11) and 
            ( _LA[1,0]<=13))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // SimpleC.g:8:9: declaration
        	    begin
        	    pushFollow(FOLLOW_declaration_in_prog28);
        	    declaration();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[1] >= 1 ) then
        	        break ;
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
    end;
end;// $ANTLR start "declaration"
// SimpleC.g:11:1: declaration : ( variable | functionHeader '';'' | functionHeader block );
function TSimpleCParser.declaration():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  functionHeader1:String; 

  functionHeader2:String; 


begin
    try 
      try
        // ruleBlock:SimpleC.g:12:5: ( variable | functionHeader '';'' | functionHeader block )
        _alt[2]:=3;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SimpleCParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[2] := getDfa2.predict(input);
        case (_alt[2]) of 
             1 :
                begin
                // SimpleC.g:12:9: variable
                begin
                pushFollow(FOLLOW_variable_in_declaration48);
                variable();

                state._fsp:=state._fsp-1;


                end;
                end;
             2 :
                begin
                // SimpleC.g:13:9: functionHeader '';''
                begin
                pushFollow(FOLLOW_functionHeader_in_declaration58);
                functionHeader1:=functionHeader();

                state._fsp:=state._fsp-1;

                match(input,7,FOLLOW_7_in_declaration60); 

                Writeln(functionHeader1+' is a declaration');

                end;
                end;
             3 :
                begin
                // SimpleC.g:15:9: functionHeader block
                begin
                pushFollow(FOLLOW_functionHeader_in_declaration73);
                functionHeader2:=functionHeader();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_block_in_declaration75);
                block();

                state._fsp:=state._fsp-1;

                Writeln(functionHeader2+' is a definition');

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
    end;
end;// $ANTLR start "variable"
// SimpleC.g:19:1: variable : dtype declarator '';'' ;
function TSimpleCParser.variable():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:20:5: ( dtype declarator '';'' )
        // SimpleC.g:20:9: dtype declarator '';''
        begin
        pushFollow(FOLLOW_dtype_in_variable97);
        dtype();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_declarator_in_variable99);
        declarator();

        state._fsp:=state._fsp-1;

        match(input,7,FOLLOW_7_in_variable101); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "declarator"
// SimpleC.g:23:1: declarator : ID ;
function TSimpleCParser.declarator():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:24:5: ( ID )
        // SimpleC.g:24:9: ID
        begin
        match(input,ID,FOLLOW_ID_in_declarator120); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "functionHeader"
// SimpleC.g:27:1: functionHeader returns [String name] : dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')'' ;
function TSimpleCParser.functionHeader():String;
var
  _alt:array [0..255] of Integer;
  name:String;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID3:IToken;

begin
    name := '';

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:28:5: ( dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')'' )
        // SimpleC.g:28:9: dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')''
        begin
        pushFollow(FOLLOW_dtype_in_functionHeader144);
        dtype();

        state._fsp:=state._fsp-1;

        ID3:=match(input,ID,FOLLOW_ID_in_functionHeader146) as IToken; 

        match(input,8,FOLLOW_8_in_functionHeader148); 

        // block:SimpleC.g:28:22: ( formalParameter ( '','' formalParameter )* )?
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=ID) or ((_LA[4,0]>=11) and 
        ( _LA[4,0]<=13))) ) then 
        begin
          _alt[4]:=1;
        end
        ;
        case (_alt[4]) of
             1 :
                begin
                // SimpleC.g:28:24: formalParameter ( '','' formalParameter )*
                begin
                pushFollow(FOLLOW_formalParameter_in_functionHeader152);
                formalParameter();

                state._fsp:=state._fsp-1;

                // closureBlock:SimpleC.g:28:40: ( '','' formalParameter )*
                repeat 
                    _alt[3]:=2;
                    _LA[3,0] := input.LA(1);

                    if ( ((_LA[3,0]=9)) ) then 
                    begin
                      _alt[3]:=1;
                    end

                    ;

                    case (_alt[3]) of
                	 1 :
                	    begin
                	    // SimpleC.g:28:42: '','' formalParameter
                	    begin
                	    match(input,9,FOLLOW_9_in_functionHeader156); 

                	    pushFollow(FOLLOW_formalParameter_in_functionHeader158);
                	    formalParameter();

                	    state._fsp:=state._fsp-1;


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);


                end;
                end;

        end;

        match(input,10,FOLLOW_10_in_functionHeader166); 

        name := (IIF(Assigned(ID3), ID3.getText(), ''));

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=name;
end;// $ANTLR start "formalParameter"
// SimpleC.g:32:1: formalParameter : dtype declarator ;
function TSimpleCParser.formalParameter():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:33:5: ( dtype declarator )
        // SimpleC.g:33:9: dtype declarator
        begin
        pushFollow(FOLLOW_dtype_in_formalParameter188);
        dtype();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_declarator_in_formalParameter190);
        declarator();

        state._fsp:=state._fsp-1;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "dtype"
// SimpleC.g:36:1: dtype : ( ''int'' | ''char'' | ''void'' | ID );
function TSimpleCParser.dtype():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:37:5: ( ''int'' | ''char'' | ''void'' | ID )
        // SimpleC.g:
        begin
        if ( (input.LA(1)=ID) or ((input.LA(1)>=11) and (input.LA(1)<=13)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;
        end
        else 
        begin
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
    end;
end;// $ANTLR start "block"
// SimpleC.g:43:1: block : ''{'' ( variable )* ( stat )* ''}'' ;
function TSimpleCParser.block():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:44:5: ( ''{'' ( variable )* ( stat )* ''}'' )
        // SimpleC.g:44:9: ''{'' ( variable )* ( stat )* ''}''
        begin
        match(input,14,FOLLOW_14_in_block279); 

        // closureBlock:SimpleC.g:45:13: ( variable )*
        repeat 
            _alt[5]:=2;
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=ID)) ) then 
            begin
              _LA[5,2] := input.LA(2);

              if ( ((_LA[5,2]=ID)) ) then 
              begin
                _alt[5]:=1;
              end

              ;

            end
            else if ( (((_LA[5,0]>=11) and 
            ( _LA[5,0]<=13))) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            case (_alt[5]) of
        	 1 :
        	    begin
        	    // SimpleC.g:45:13: variable
        	    begin
        	    pushFollow(FOLLOW_variable_in_block293);
        	    variable();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // closureBlock:SimpleC.g:46:13: ( stat )*
        repeat 
            _alt[6]:=2;
            _LA[6,0] := input.LA(1);

            if ( (((_LA[6,0]>=ID) and 
            ( _LA[6,0]<=INT)) or ((_LA[6,0]>=7) and 
            ( _LA[6,0]<=8)) or (_LA[6,0]=14) or (_LA[6,0]=16)) ) then 
            begin
              _alt[6]:=1;
            end

            ;

            case (_alt[6]) of
        	 1 :
        	    begin
        	    // SimpleC.g:46:13: stat
        	    begin
        	    pushFollow(FOLLOW_stat_in_block308);
        	    stat();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match(input,15,FOLLOW_15_in_block319); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "stat"
// SimpleC.g:50:1: stat : ( forStat | expr '';'' | block | assignStat '';'' | '';'' );
function TSimpleCParser.stat():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlock:SimpleC.g:50:5: ( forStat | expr '';'' | block | assignStat '';'' | '';'' )
        _alt[7]:=5;

        case input.LA(1) of
         16: 
            begin
            _alt[7]:=1;
            end;
         ID: 
            begin
            _LA[7,2] := input.LA(2);

            if ( ((_LA[7,2]=17)) ) then 
            begin
              _alt[7]:=4;
            end
            else if ( ((_LA[7,2]=7) or ((_LA[7,2]>=18) and 
            ( _LA[7,2]<=20))) ) then 
            begin
              _alt[7]:=2;
            end
            else begin
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 7, 2, input);    

            end;
            end;
         INT , 
         8: 
            begin
            _alt[7]:=2;
            end;
         14: 
            begin
            _alt[7]:=3;
            end;
         7: 
            begin
            _alt[7]:=5;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 7, 0, input);

        end;
        end;

        case (_alt[7]) of 
             1 :
                begin
                // SimpleC.g:50:7: forStat
                begin
                pushFollow(FOLLOW_forStat_in_stat331);
                forStat();

                state._fsp:=state._fsp-1;


                end;
                end;
             2 :
                begin
                // SimpleC.g:51:7: expr '';''
                begin
                pushFollow(FOLLOW_expr_in_stat339);
                expr();

                state._fsp:=state._fsp-1;

                match(input,7,FOLLOW_7_in_stat341); 


                end;
                end;
             3 :
                begin
                // SimpleC.g:52:7: block
                begin
                pushFollow(FOLLOW_block_in_stat355);
                block();

                state._fsp:=state._fsp-1;


                end;
                end;
             4 :
                begin
                // SimpleC.g:53:7: assignStat '';''
                begin
                pushFollow(FOLLOW_assignStat_in_stat363);
                assignStat();

                state._fsp:=state._fsp-1;

                match(input,7,FOLLOW_7_in_stat365); 


                end;
                end;
             5 :
                begin
                // SimpleC.g:54:7: '';''
                begin
                match(input,7,FOLLOW_7_in_stat373); 


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
    end;
end;// $ANTLR start "forStat"
// SimpleC.g:57:1: forStat : ''for'' ''('' assignStat '';'' expr '';'' assignStat '')'' block ;
function TSimpleCParser.forStat():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:58:5: ( ''for'' ''('' assignStat '';'' expr '';'' assignStat '')'' block )
        // SimpleC.g:58:9: ''for'' ''('' assignStat '';'' expr '';'' assignStat '')'' block
        begin
        match(input,16,FOLLOW_16_in_forStat392); 

        match(input,8,FOLLOW_8_in_forStat394); 

        pushFollow(FOLLOW_assignStat_in_forStat396);
        assignStat();

        state._fsp:=state._fsp-1;

        match(input,7,FOLLOW_7_in_forStat398); 

        pushFollow(FOLLOW_expr_in_forStat400);
        expr();

        state._fsp:=state._fsp-1;

        match(input,7,FOLLOW_7_in_forStat402); 

        pushFollow(FOLLOW_assignStat_in_forStat404);
        assignStat();

        state._fsp:=state._fsp-1;

        match(input,10,FOLLOW_10_in_forStat406); 

        pushFollow(FOLLOW_block_in_forStat408);
        block();

        state._fsp:=state._fsp-1;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "assignStat"
// SimpleC.g:61:1: assignStat : ID ''='' expr ;
function TSimpleCParser.assignStat():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:62:5: ( ID ''='' expr )
        // SimpleC.g:62:9: ID ''='' expr
        begin
        match(input,ID,FOLLOW_ID_in_assignStat435); 

        match(input,17,FOLLOW_17_in_assignStat437); 

        pushFollow(FOLLOW_expr_in_assignStat439);
        expr();

        state._fsp:=state._fsp-1;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "expr"
// SimpleC.g:65:1: expr : condExpr ;
function TSimpleCParser.expr():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:65:5: ( condExpr )
        // SimpleC.g:65:9: condExpr
        begin
        pushFollow(FOLLOW_condExpr_in_expr461);
        condExpr();

        state._fsp:=state._fsp-1;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "condExpr"
// SimpleC.g:68:1: condExpr : aexpr ( ( ''=='' | ''<'' ) aexpr )? ;
function TSimpleCParser.condExpr():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:69:5: ( aexpr ( ( ''=='' | ''<'' ) aexpr )? )
        // SimpleC.g:69:9: aexpr ( ( ''=='' | ''<'' ) aexpr )?
        begin
        pushFollow(FOLLOW_aexpr_in_condExpr480);
        aexpr();

        state._fsp:=state._fsp-1;

        // block:SimpleC.g:69:15: ( ( ''=='' | ''<'' ) aexpr )?
        _alt[8]:=2;
        _LA[8,0] := input.LA(1);

        if ( (((_LA[8,0]>=18) and 
        ( _LA[8,0]<=19))) ) then 
        begin
          _alt[8]:=1;
        end
        ;
        case (_alt[8]) of
             1 :
                begin
                // SimpleC.g:69:17: ( ''=='' | ''<'' ) aexpr
                begin
                if ( ((input.LA(1)>=18) and (input.LA(1)<=19)) ) then
                begin
                    input.consume();
                    state.errorRecovery:=false;
                end
                else 
                begin
                    raise EMismatchedSetException.CreateWithBitset(nil, input);
                end;

                pushFollow(FOLLOW_aexpr_in_condExpr492);
                aexpr();

                state._fsp:=state._fsp-1;


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
    end;
end;// $ANTLR start "aexpr"
// SimpleC.g:72:1: aexpr : atom ( ''+'' atom )* ;
function TSimpleCParser.aexpr():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:73:5: ( atom ( ''+'' atom )* )
        // SimpleC.g:73:9: atom ( ''+'' atom )*
        begin
        pushFollow(FOLLOW_atom_in_aexpr514);
        atom();

        state._fsp:=state._fsp-1;

        // closureBlock:SimpleC.g:73:14: ( ''+'' atom )*
        repeat 
            _alt[9]:=2;
            _LA[9,0] := input.LA(1);

            if ( ((_LA[9,0]=20)) ) then 
            begin
              _alt[9]:=1;
            end

            ;

            case (_alt[9]) of
        	 1 :
        	    begin
        	    // SimpleC.g:73:16: ''+'' atom
        	    begin
        	    match(input,20,FOLLOW_20_in_aexpr518); 

        	    pushFollow(FOLLOW_atom_in_aexpr520);
        	    atom();

        	    state._fsp:=state._fsp-1;


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
    end;
end;// $ANTLR start "atom"
// SimpleC.g:76:1: atom : ( ID | INT | ''('' expr '')'' );
function TSimpleCParser.atom():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlock:SimpleC.g:77:5: ( ID | INT | ''('' expr '')'' )
        _alt[10]:=3;

        case input.LA(1) of
         ID: 
            begin
            _alt[10]:=1;
            end;
         INT: 
            begin
            _alt[10]:=2;
            end;
         8: 
            begin
            _alt[10]:=3;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 10, 0, input);

        end;
        end;

        case (_alt[10]) of 
             1 :
                begin
                // SimpleC.g:77:7: ID
                begin
                match(input,ID,FOLLOW_ID_in_atom540); 


                end;
                end;
             2 :
                begin
                // SimpleC.g:78:7: INT
                begin
                match(input,INT,FOLLOW_INT_in_atom554); 


                end;
                end;
             3 :
                begin
                // SimpleC.g:79:7: ''('' expr '')''
                begin
                match(input,8,FOLLOW_8_in_atom568); 

                pushFollow(FOLLOW_expr_in_atom570);
                expr();

                state._fsp:=state._fsp-1;

                match(input,10,FOLLOW_10_in_atom572); 


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
    end;
end;



function TSimpleCParser.getDfa2:IDFA;
begin
  if not Assigned(dfa2) then
    dfa2:=TAntlrDFA2.Create(self);
  Result:=dfa2;  
end;

constructor TSimpleCParser.TAntlrDFA2.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=2;
  feot:=unpackEncodedString('\15\uffff');
  feof:=unpackEncodedString('\15\uffff');

  FMinc:=unpackEncodedString('\2\4\1\7\1\4\1\uffff\1\4\1\7\1\11\2\uffff'+
    '\2\4\1\11');

  FMaxc:=unpackEncodedString('\1\15\1\4\1\10\1\15\1\uffff\1\4\1\16\1\12'+
    '\2\uffff\1\15\1\4\1\12');
  faccept:=unpackEncodedString('\4\uffff\1\1\3\uffff\1\2\1\3\3\uffff');
  fspecial:=unpackEncodedString('\15\uffff');
  AddTransition(unpackEncodedString('\1\1\6\uffff\3\1'));
  AddTransition(unpackEncodedString('\1\2'));
  AddTransition(unpackEncodedString('\1\4\1\3'));
  AddTransition(unpackEncodedString('\1\5\5\uffff\1\6\3\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\7'));
  AddTransition(unpackEncodedString('\1\10\6\uffff\1\11'));
  AddTransition(unpackEncodedString('\1\12\1\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\13\6\uffff\3\13'));
  AddTransition(unpackEncodedString('\1\14'));
  AddTransition(unpackEncodedString('\1\12\1\6'));
end;

function TSimpleCParser.TAntlrDFA2.getDescription():string;
begin
  Result:='11:1: declaration : ( variable | functionHeader '';'' | functionHeader block );';
end;



 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.