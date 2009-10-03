// $ANTLR 3.2 10 03, 2009 17:07:46 Simple.g 2009-10-03 17:10:19
unit SimpleParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const WS=12;
    const T__16=16;
    const T__15=15;
    const LINE_COMMENT=11;
    const T_STRING=9;
    const T__14=14;
    const ESC=7;
    const T__13=13;
    const CHAR=8;
    const FLOAT=6;
    const INT=5;
    const COMMENT=10;
    const ID=4;
    const EOF=-1;              
type
  TSimpleParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_13_in_t_file27:IBitSet;
    FOLLOW_ID_in_t_file29:IBitSet;
    FOLLOW_14_in_t_file31:IBitSet;
    FOLLOW_decl_in_t_file42:IBitSet;
    FOLLOW_15_in_decl57:IBitSet;
    FOLLOW_ID_in_decl59:IBitSet;
    FOLLOW_16_in_decl62:IBitSet;
    FOLLOW_expr_in_decl64:IBitSet;
    FOLLOW_14_in_decl68:IBitSet;
    FOLLOW_set_in_expr0:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "t_file"
    // Simple.g:9:1: t_file : ''program'' ID '';'' ( decl )+ ;
    function t_file():Integer;
    // $ANTLR end t_file


    // $ANTLR start "decl"
    // Simple.g:13:1: decl : ''var'' ID ( ''='' expr )? '';'' ;
    function decl():Integer;
    // $ANTLR end decl


    // $ANTLR start "expr"
    // Simple.g:17:1: expr : ( INT | FLOAT );
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
  tokenNames.Add('"ID"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"FLOAT"');
  tokenNames.Add('"ESC"');
  tokenNames.Add('"CHAR"');
  tokenNames.Add('"T_STRING"');
  tokenNames.Add('"COMMENT"');
  tokenNames.Add('"LINE_COMMENT"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"''program''"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''var''"');
  tokenNames.Add('"''=''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TSimpleParser.InitBitsets;
begin
  FOLLOW_13_in_t_file27 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_t_file29 := TAntlrBitSet.CreateWithBits([$0000000000004000]);
  FOLLOW_14_in_t_file31 := TAntlrBitSet.CreateWithBits([$0000000000008000]);
  FOLLOW_decl_in_t_file42 := TAntlrBitSet.CreateWithBits([$0000000000008002]);
  FOLLOW_15_in_decl57 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_decl59 := TAntlrBitSet.CreateWithBits([$0000000000014000]);
  FOLLOW_16_in_decl62 := TAntlrBitSet.CreateWithBits([$0000000000000060]);
  FOLLOW_expr_in_decl64 := TAntlrBitSet.CreateWithBits([$0000000000004000]);
  FOLLOW_14_in_decl68 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
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

// $ANTLR start "t_file"
// Simple.g:9:1: t_file : ''program'' ID '';'' ( decl )+ ;
function TSimpleParser.t_file():Integer;
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
        // ruleBlockSingleAlt:Simple.g:9:8: ( ''program'' ID '';'' ( decl )+ )
        // Simple.g:9:10: ''program'' ID '';'' ( decl )+
        begin
        match(input,13,FOLLOW_13_in_t_file27); 

        ID1:=match(input,ID,FOLLOW_ID_in_t_file29) as IToken; 

        match(input,14,FOLLOW_14_in_t_file31); 

        Writeln('found program '+(IIF(Assigned(ID1), ID1.getText(), '')));
        // positiveClosureBlock:Simple.g:10:8: ( decl )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=15)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // Simple.g:10:8: decl
        	    begin
        	    pushFollow(FOLLOW_decl_in_t_file42);
        	    decl();

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
end;// $ANTLR start "decl"
// Simple.g:13:1: decl : ''var'' ID ( ''='' expr )? '';'' ;
function TSimpleParser.decl():Integer;
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
        // ruleBlockSingleAlt:Simple.g:13:6: ( ''var'' ID ( ''='' expr )? '';'' )
        // Simple.g:13:8: ''var'' ID ( ''='' expr )? '';''
        begin
        match(input,15,FOLLOW_15_in_decl57); 

        ID2:=match(input,ID,FOLLOW_ID_in_decl59) as IToken; 

        // block:Simple.g:13:17: ( ''='' expr )?
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=16)) ) then 
        begin
          _alt[2]:=1;
        end
        ;
        case (_alt[2]) of
             1 :
                begin
                // Simple.g:13:18: ''='' expr
                begin
                match(input,16,FOLLOW_16_in_decl62); 

                pushFollow(FOLLOW_expr_in_decl64);
                expr();

                state._fsp:=state._fsp-1;


                end;
                end;

        end;

        match(input,14,FOLLOW_14_in_decl68); 

        Writeln('found var '+(IIF(Assigned(ID2), ID2.getText(), '')));

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
// Simple.g:17:1: expr : ( INT | FLOAT );
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
        // ruleBlockSingleAlt:Simple.g:17:6: ( INT | FLOAT )
        // Simple.g:
        begin
        if ( ((input.LA(1)>=INT) and (input.LA(1)<=FLOAT)) ) then
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