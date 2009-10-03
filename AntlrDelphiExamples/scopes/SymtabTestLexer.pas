// $ANTLR 3.1.2 SymtabTest.g 2009-07-23 21:45:19
unit SymtabTestLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TSymtabTestLexer = class(TAntlrLexer)
    public
      const WS=6;
      const T__12=12;
      const T__11=11;
      const T__14=14;
      const T__13=13;
      const T__10=10;
      const INT=5;
      const ID=4;
      const EOF=-1;
      const T__9=9;
      const T__8=8;
      const T__7=7;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__7"
    procedure mT__7();
    // $ANTLR end T__7

    // $ANTLR start "T__8"
    procedure mT__8();
    // $ANTLR end T__8

    // $ANTLR start "T__9"
    procedure mT__9();
    // $ANTLR end T__9

    // $ANTLR start "T__10"
    procedure mT__10();
    // $ANTLR end T__10

    // $ANTLR start "T__11"
    procedure mT__11();
    // $ANTLR end T__11

    // $ANTLR start "T__12"
    procedure mT__12();
    // $ANTLR end T__12

    // $ANTLR start "T__13"
    procedure mT__13();
    // $ANTLR end T__13

    // $ANTLR start "T__14"
    procedure mT__14();
    // $ANTLR end T__14

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "INT"
    procedure mINT();
    // $ANTLR end INT

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    procedure mTokens();override;

    protected

     
          type TAntlrDFA4=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa4:IDFA;
        protected
          dfa4:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TSymtabTestLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TSymtabTestLexer.Destroy;
begin
 inherited;
end;

function TSymtabTestLexer.GetGrammarFileName():String;
begin
  Result:='SymtabTest.g';
end;

// $ANTLR start "T__7"
procedure TSymtabTestLexer.mT__7();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__7;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:7:6: ( ''method'' )
        // SymtabTest.g:7:8: ''method''
        begin
        match('method');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__7// $ANTLR start "T__8"
procedure TSymtabTestLexer.mT__8();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__8;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:8:6: ( ''('' )
        // SymtabTest.g:8:8: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__8// $ANTLR start "T__9"
procedure TSymtabTestLexer.mT__9();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__9;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:9:6: ( '')'' )
        // SymtabTest.g:9:8: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__9// $ANTLR start "T__10"
procedure TSymtabTestLexer.mT__10();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__10;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:10:7: ( ''{'' )
        // SymtabTest.g:10:9: ''{''
        begin
        match($007B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__10// $ANTLR start "T__11"
procedure TSymtabTestLexer.mT__11();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__11;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:11:7: ( ''}'' )
        // SymtabTest.g:11:9: ''}''
        begin
        match($007D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__11// $ANTLR start "T__12"
procedure TSymtabTestLexer.mT__12();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__12;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:12:7: ( ''='' )
        // SymtabTest.g:12:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__12// $ANTLR start "T__13"
procedure TSymtabTestLexer.mT__13();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__13;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:13:7: ( '';'' )
        // SymtabTest.g:13:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__13// $ANTLR start "T__14"
procedure TSymtabTestLexer.mT__14();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__14;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:14:7: ( ''int'' )
        // SymtabTest.g:14:9: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__14// $ANTLR start "ID"
procedure TSymtabTestLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:60:5: ( ( ''a'' .. ''z'' )+ )
        // SymtabTest.g:60:9: ( ''a'' .. ''z'' )+
        begin
        // positiveClosureBlock:SymtabTest.g:60:9: ( ''a'' .. ''z'' )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=$0061) and 
            ( _LA[1,0]<=$007A))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // SymtabTest.g:60:10: ''a'' .. ''z''
        	    begin
        	    matchRange($0061,$007A); 


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

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end ID// $ANTLR start "INT"
procedure TSymtabTestLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:63:5: ( ( ''0'' .. ''9'' )+ )
        // SymtabTest.g:63:9: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:SymtabTest.g:63:9: ( ''0'' .. ''9'' )+
        _cnt[2]:=0;
        repeat 
            _alt[2]:=2;
            //before decision
            _LA[2,0] := input.LA(1);

            if ( (((_LA[2,0]>=$0030) and 
            ( _LA[2,0]<=$0039))) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            //after decision
            case (_alt[2]) of 
        	 1 :
        	    begin
        	    // SymtabTest.g:63:10: ''0'' .. ''9''
        	    begin
        	    matchRange($0030,$0039); 


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

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end INT// $ANTLR start "WS"
procedure TSymtabTestLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:SymtabTest.g:66:5: ( ( '' '' | ''\n'' | ''\r'' )+ )
        // SymtabTest.g:66:9: ( '' '' | ''\n'' | ''\r'' )+
        begin
        // positiveClosureBlock:SymtabTest.g:66:9: ( '' '' | ''\n'' | ''\r'' )+
        _cnt[3]:=0;
        repeat 
            _alt[3]:=2;
            //before decision
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=$000A) or (_LA[3,0]=$000D) or (_LA[3,0]=$0020)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            //after decision
            case (_alt[3]) of 
        	 1 :
        	    begin
        	    // SymtabTest.g:
        	    begin
        	    if ( (input.LA(1)=$000A) or (input.LA(1)=$000D) or (input.LA(1)=$0020) ) then
        	    begin
        	        input.consume();

        	    end
        	    else 
        	    begin
        	        recover(EMismatchedSetException.CreateWithBitset(nil, input));
        	        raise EMismatchedSetException.CreateWithBitset(nil, input);end;


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[3] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(3, input);
                end;
            end;
            _cnt[3]:=_cnt[3]+1;
        until (false);

        _channel:=HIDDEN;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TSymtabTestLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:SymtabTest.g:1:8: ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | ID | INT | WS )
        _alt[4]:=11;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SymtabTestLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[4] := getDfa4.predict(input);
        case (_alt[4]) of 
             1 :
                begin
                // SymtabTest.g:1:10: T__7
                begin
                mT__7(); 


                end;
                end;
             2 :
                begin
                // SymtabTest.g:1:15: T__8
                begin
                mT__8(); 


                end;
                end;
             3 :
                begin
                // SymtabTest.g:1:20: T__9
                begin
                mT__9(); 


                end;
                end;
             4 :
                begin
                // SymtabTest.g:1:25: T__10
                begin
                mT__10(); 


                end;
                end;
             5 :
                begin
                // SymtabTest.g:1:31: T__11
                begin
                mT__11(); 


                end;
                end;
             6 :
                begin
                // SymtabTest.g:1:37: T__12
                begin
                mT__12(); 


                end;
                end;
             7 :
                begin
                // SymtabTest.g:1:43: T__13
                begin
                mT__13(); 


                end;
                end;
             8 :
                begin
                // SymtabTest.g:1:49: T__14
                begin
                mT__14(); 


                end;
                end;
             9 :
                begin
                // SymtabTest.g:1:55: ID
                begin
                mID(); 


                end;
                end;
             10 :
                begin
                // SymtabTest.g:1:58: INT
                begin
                mINT(); 


                end;
                end;
             11 :
                begin
                // SymtabTest.g:1:62: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TSymtabTestLexer.getDfa4:IDFA;
begin
  if not Assigned(dfa4) then
    dfa4:=TAntlrDFA4.Create(self);
  Result:=dfa4;  
end;

constructor TSymtabTestLexer.TAntlrDFA4.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=4;
  feot:=unpackEncodedString('\1\uffff\1\11\6\uffff\1\11\3\uffff\3\11\1\21'+
    '\1\11\1\uffff\1\11\1\24\1\uffff');
  feof:=unpackEncodedString('\25\uffff');

  FMinc:=unpackEncodedString('\1\12\1\145\6\uffff\1\156\3\uffff\2\164\1'+
    '\150\1\141\1\157\1\uffff\1\144\1\141\1\uffff');

  FMaxc:=unpackEncodedString('\1\175\1\145\6\uffff\1\156\3\uffff\2\164\1'+
    '\150\1\172\1\157\1\uffff\1\144\1\172\1\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\3\1\4\1\5\1\6\1\7\1\uffff'+
    '\1\11\1\12\1\13\5\uffff\1\10\2\uffff\1\1');
  fspecial:=unpackEncodedString('\25\uffff');
  AddTransition(unpackEncodedString('\1\13\2\uffff\1\13\22\uffff\1\13\7'+
  '\uffff\1\2\1\3\6\uffff\12\12\1\uffff\1\7\1\uffff\1\6\43\uffff\10\11\1'+
  '\10\3\11\1\1\15\11\1\4\1\uffff\1\5'));
  AddTransition(unpackEncodedString('\1\14'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\15'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\16'));
  AddTransition(unpackEncodedString('\1\17'));
  AddTransition(unpackEncodedString('\1\20'));
  AddTransition(unpackEncodedString('\32\11'));
  AddTransition(unpackEncodedString('\1\22'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\23'));
  AddTransition(unpackEncodedString('\32\11'));
  AddTransition(unpackEncodedString(''));
end;

function TSymtabTestLexer.TAntlrDFA4.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | ID '+
  '| INT | WS );';
end;



 


end.