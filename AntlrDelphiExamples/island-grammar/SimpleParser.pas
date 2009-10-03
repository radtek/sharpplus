// $ANTLR 3.2 10 03, 2009 17:07:46 Simple.g 2009-10-03 17:11:42
unit SimpleParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const WS=7;
    const T__16=16;
    const T__15=15;
    const JAVADOC=9;
    const T__12=12;
    const T__11=11;
    const T__14=14;
    const T__13=13;
    const RCURLY=4;
    const T__10=10;
    const LCURLY=8;
    const INT=6;
    const ID=5;
    const EOF=-1;              
type
  TSimpleParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_variable_in_prog57:IBitSet;
    FOLLOW_method_in_prog72:IBitSet;
    FOLLOW_10_in_variable89:IBitSet;
    FOLLOW_ID_in_variable91:IBitSet;
    FOLLOW_11_in_variable94:IBitSet;
    FOLLOW_expr_in_variable96:IBitSet;
    FOLLOW_12_in_variable100:IBitSet;
    FOLLOW_13_in_method117:IBitSet;
    FOLLOW_ID_in_method119:IBitSet;
    FOLLOW_14_in_method121:IBitSet;
    FOLLOW_15_in_method123:IBitSet;
    FOLLOW_block_in_method137:IBitSet;
    FOLLOW_LCURLY_in_block156:IBitSet;
    FOLLOW_variable_in_block171:IBitSet;
    FOLLOW_statement_in_block188:IBitSet;
    FOLLOW_RCURLY_in_block202:IBitSet;
    FOLLOW_ID_in_statement227:IBitSet;
    FOLLOW_11_in_statement229:IBitSet;
    FOLLOW_expr_in_statement231:IBitSet;
    FOLLOW_12_in_statement233:IBitSet;
    FOLLOW_16_in_statement247:IBitSet;
    FOLLOW_expr_in_statement249:IBitSet;
    FOLLOW_12_in_statement251:IBitSet;
    FOLLOW_block_in_statement263:IBitSet;
    FOLLOW_set_in_expr0:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "prog"
    // Simple.g:38:1: prog : ( variable )* ( method )+ ;
    function prog():Integer;
    // $ANTLR end prog


    // $ANTLR start "variable"
    // Simple.g:41:1: variable : ''int'' ID ( ''='' expr )? '';'' ;
    function variable():Integer;
    // $ANTLR end variable


    // $ANTLR start "method"
    // Simple.g:43:1: method : ''method'' ID ''('' '')'' block ;
    function method():Integer;
    // $ANTLR end method


    // $ANTLR start "block"
    // Simple.g:47:1: block : ''{'' ( variable )* ( statement )+ ''}'' ;
    function block():Integer;
    // $ANTLR end block


    // $ANTLR start "statement"
    // Simple.g:53:1: statement : ( ID ''='' expr '';'' | ''return'' expr '';'' | block );
    function statement():Integer;
    // $ANTLR end statement


    // $ANTLR start "expr"
    // Simple.g:59:1: expr : ( ID | INT );
    function expr():Integer;
    // $ANTLR end expr

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TSimpleParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSimpleParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"RCURLY"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"LCURLY"');
  tokenNames.Add('"JAVADOC"');
  tokenNames.Add('"''int''"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''method''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"''return''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TSimpleParser.InitBitsets;
begin
  FOLLOW_variable_in_prog57 := TAntlrBitSet.CreateWithBits([$0000000000002400]);
  FOLLOW_method_in_prog72 := TAntlrBitSet.CreateWithBits([$0000000000002002]);
  FOLLOW_10_in_variable89 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_ID_in_variable91 := TAntlrBitSet.CreateWithBits([$0000000000001800]);
  FOLLOW_11_in_variable94 := TAntlrBitSet.CreateWithBits([$0000000000000060]);
  FOLLOW_expr_in_variable96 := TAntlrBitSet.CreateWithBits([$0000000000001000]);
  FOLLOW_12_in_variable100 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_13_in_method117 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_ID_in_method119 := TAntlrBitSet.CreateWithBits([$0000000000004000]);
  FOLLOW_14_in_method121 := TAntlrBitSet.CreateWithBits([$0000000000008000]);
  FOLLOW_15_in_method123 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_block_in_method137 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_LCURLY_in_block156 := TAntlrBitSet.CreateWithBits([$0000000000012520]);
  FOLLOW_variable_in_block171 := TAntlrBitSet.CreateWithBits([$0000000000012520]);
  FOLLOW_statement_in_block188 := TAntlrBitSet.CreateWithBits([$0000000000012530]);
  FOLLOW_RCURLY_in_block202 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_statement227 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_11_in_statement229 := TAntlrBitSet.CreateWithBits([$0000000000000060]);
  FOLLOW_expr_in_statement231 := TAntlrBitSet.CreateWithBits([$0000000000001000]);
  FOLLOW_12_in_statement233 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_16_in_statement247 := TAntlrBitSet.CreateWithBits([$0000000000000060]);
  FOLLOW_expr_in_statement249 := TAntlrBitSet.CreateWithBits([$0000000000001000]);
  FOLLOW_12_in_statement251 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_statement263 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_expr0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TSimpleParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSimpleParser.GetGrammarFileName():String;
begin
  Result:='Simple.g'; 
end;

// $ANTLR start "prog"
// Simple.g:38:1: prog : ( variable )* ( method )+ ;
function TSimpleParser.prog():Integer;
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
        // ruleBlockSingleAlt:Simple.g:38:6: ( ( variable )* ( method )+ )
        // Simple.g:38:8: ( variable )* ( method )+
        begin
        // closureBlock:Simple.g:38:8: ( variable )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=10)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // Simple.g:38:9: variable
        	    begin
        	    pushFollow(FOLLOW_variable_in_prog57);
        	    variable();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // positiveClosureBlock:Simple.g:39:11: ( method )+
        _cnt[2]:=0;
        repeat 
            _alt[2]:=2;
            //before decision
            _LA[2,0] := input.LA(1);

            if ( ((_LA[2,0]=13)) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            //after decision
            case (_alt[2]) of 
        	 1 :
        	    begin
        	    // Simple.g:39:12: method
        	    begin
        	    pushFollow(FOLLOW_method_in_prog72);
        	    method();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[2] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(2, input);
                end;
            end;
            _cnt[2]:=_cnt[2]+1;
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
end;// $ANTLR start "variable"
// Simple.g:41:1: variable : ''int'' ID ( ''='' expr )? '';'' ;
function TSimpleParser.variable():Integer;
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
        // ruleBlockSingleAlt:Simple.g:41:9: ( ''int'' ID ( ''='' expr )? '';'' )
        // Simple.g:41:11: ''int'' ID ( ''='' expr )? '';''
        begin
        match(input,10,FOLLOW_10_in_variable89); 

        match(input,ID,FOLLOW_ID_in_variable91); 

        // block:Simple.g:41:20: ( ''='' expr )?
        _alt[3]:=2;
        _LA[3,0] := input.LA(1);

        if ( ((_LA[3,0]=11)) ) then 
        begin
          _alt[3]:=1;
        end
        ;
        case (_alt[3]) of
             1 :
                begin
                // Simple.g:41:21: ''='' expr
                begin
                match(input,11,FOLLOW_11_in_variable94); 

                pushFollow(FOLLOW_expr_in_variable96);
                expr();

                state._fsp:=state._fsp-1;


                end;
                end;

        end;

        match(input,12,FOLLOW_12_in_variable100); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "method"
// Simple.g:43:1: method : ''method'' ID ''('' '')'' block ;
function TSimpleParser.method():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID1:IToken;

begin
    try 
      try
        // ruleBlockSingleAlt:Simple.g:43:9: ( ''method'' ID ''('' '')'' block )
        // Simple.g:43:11: ''method'' ID ''('' '')'' block
        begin
        match(input,13,FOLLOW_13_in_method117); 

        ID1:=match(input,ID,FOLLOW_ID_in_method119) as IToken; 

        match(input,14,FOLLOW_14_in_method121); 

        match(input,15,FOLLOW_15_in_method123); 

        Writeln('enter method '+(IIF(Assigned(ID1), ID1.getText(), '')));
        pushFollow(FOLLOW_block_in_method137);
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
end;// $ANTLR start "block"
// Simple.g:47:1: block : ''{'' ( variable )* ( statement )+ ''}'' ;
function TSimpleParser.block():Integer;
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
        // ruleBlockSingleAlt:Simple.g:47:9: ( ''{'' ( variable )* ( statement )+ ''}'' )
        // Simple.g:47:11: ''{'' ( variable )* ( statement )+ ''}''
        begin
        match(input,LCURLY,FOLLOW_LCURLY_in_block156); 

        // closureBlock:Simple.g:48:13: ( variable )*
        repeat 
            _alt[4]:=2;
            _LA[4,0] := input.LA(1);

            if ( ((_LA[4,0]=10)) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            case (_alt[4]) of
        	 1 :
        	    begin
        	    // Simple.g:48:14: variable
        	    begin
        	    pushFollow(FOLLOW_variable_in_block171);
        	    variable();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // positiveClosureBlock:Simple.g:49:13: ( statement )+
        _cnt[5]:=0;
        repeat 
            _alt[5]:=2;
            //before decision
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=ID) or (_LA[5,0]=LCURLY) or (_LA[5,0]=16)) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            //after decision
            case (_alt[5]) of 
        	 1 :
        	    begin
        	    // Simple.g:49:14: statement
        	    begin
        	    pushFollow(FOLLOW_statement_in_block188);
        	    statement();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[5] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(5, input);
                end;
            end;
            _cnt[5]:=_cnt[5]+1;
        until (false);

        match(input,RCURLY,FOLLOW_RCURLY_in_block202); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "statement"
// Simple.g:53:1: statement : ( ID ''='' expr '';'' | ''return'' expr '';'' | block );
function TSimpleParser.statement():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID2:IToken;

begin
    try 
      try
        // ruleBlock:Simple.g:54:9: ( ID ''='' expr '';'' | ''return'' expr '';'' | block )
        _alt[6]:=3;

        case input.LA(1) of
         ID: 
            begin
            _alt[6]:=1;
            end;
         16: 
            begin
            _alt[6]:=2;
            end;
         LCURLY: 
            begin
            _alt[6]:=3;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 6, 0, input);

        end;
        end;

        case (_alt[6]) of 
             1 :
                begin
                // Simple.g:54:11: ID ''='' expr '';''
                begin
                ID2:=match(input,ID,FOLLOW_ID_in_statement227) as IToken; 

                match(input,11,FOLLOW_11_in_statement229); 

                pushFollow(FOLLOW_expr_in_statement231);
                expr();

                state._fsp:=state._fsp-1;

                match(input,12,FOLLOW_12_in_statement233); 

                Writeln('assignment to '+(IIF(Assigned(ID2), ID2.getText(), '')));

                end;
                end;
             2 :
                begin
                // Simple.g:55:11: ''return'' expr '';''
                begin
                match(input,16,FOLLOW_16_in_statement247); 

                pushFollow(FOLLOW_expr_in_statement249);
                expr();

                state._fsp:=state._fsp-1;

                match(input,12,FOLLOW_12_in_statement251); 


                end;
                end;
             3 :
                begin
                // Simple.g:56:11: block
                begin
                pushFollow(FOLLOW_block_in_statement263);
                block();

                state._fsp:=state._fsp-1;


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
end;// $ANTLR start "expr"
// Simple.g:59:1: expr : ( ID | INT );
function TSimpleParser.expr():Integer;
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
        // ruleBlockSingleAlt:Simple.g:59:9: ( ID | INT )
        // Simple.g:
        begin
        if ( ((input.LA(1)>=ID) and (input.LA(1)<=INT)) ) then
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
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.