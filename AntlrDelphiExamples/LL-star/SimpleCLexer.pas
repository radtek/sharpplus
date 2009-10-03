// $ANTLR 3.2 10 03, 2009 17:07:46 SimpleC.g 2009-10-03 17:12:47
unit SimpleCLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TSimpleCLexer = class(TAntlrLexer)
    public
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

    // $ANTLR start "T__15"
    procedure mT__15();
    // $ANTLR end T__15

    // $ANTLR start "T__16"
    procedure mT__16();
    // $ANTLR end T__16

    // $ANTLR start "T__17"
    procedure mT__17();
    // $ANTLR end T__17

    // $ANTLR start "T__18"
    procedure mT__18();
    // $ANTLR end T__18

    // $ANTLR start "T__19"
    procedure mT__19();
    // $ANTLR end T__19

    // $ANTLR start "T__20"
    procedure mT__20();
    // $ANTLR end T__20

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

constructor TSimpleCLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TSimpleCLexer.Destroy;
begin
 inherited;
end;

function TSimpleCLexer.GetGrammarFileName():String;
begin
  Result:='SimpleC.g';
end;

// $ANTLR start "T__7"
procedure TSimpleCLexer.mT__7();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__7;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:7:6: ( '';'' )
        // SimpleC.g:7:8: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__7// $ANTLR start "T__8"
procedure TSimpleCLexer.mT__8();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__8;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:8:6: ( ''('' )
        // SimpleC.g:8:8: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__8// $ANTLR start "T__9"
procedure TSimpleCLexer.mT__9();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__9;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:9:6: ( '','' )
        // SimpleC.g:9:8: '',''
        begin
        match($002C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__9// $ANTLR start "T__10"
procedure TSimpleCLexer.mT__10();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__10;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:10:7: ( '')'' )
        // SimpleC.g:10:9: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__10// $ANTLR start "T__11"
procedure TSimpleCLexer.mT__11();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__11;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:11:7: ( ''int'' )
        // SimpleC.g:11:9: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__11// $ANTLR start "T__12"
procedure TSimpleCLexer.mT__12();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__12;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:12:7: ( ''char'' )
        // SimpleC.g:12:9: ''char''
        begin
        match('char');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__12// $ANTLR start "T__13"
procedure TSimpleCLexer.mT__13();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__13;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:13:7: ( ''void'' )
        // SimpleC.g:13:9: ''void''
        begin
        match('void');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__13// $ANTLR start "T__14"
procedure TSimpleCLexer.mT__14();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__14;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:14:7: ( ''{'' )
        // SimpleC.g:14:9: ''{''
        begin
        match($007B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__14// $ANTLR start "T__15"
procedure TSimpleCLexer.mT__15();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__15;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:15:7: ( ''}'' )
        // SimpleC.g:15:9: ''}''
        begin
        match($007D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__15// $ANTLR start "T__16"
procedure TSimpleCLexer.mT__16();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__16;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:16:7: ( ''for'' )
        // SimpleC.g:16:9: ''for''
        begin
        match('for');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__16// $ANTLR start "T__17"
procedure TSimpleCLexer.mT__17();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__17;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:17:7: ( ''='' )
        // SimpleC.g:17:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__17// $ANTLR start "T__18"
procedure TSimpleCLexer.mT__18();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__18;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:18:7: ( ''=='' )
        // SimpleC.g:18:9: ''==''
        begin
        match('==');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__18// $ANTLR start "T__19"
procedure TSimpleCLexer.mT__19();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__19;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:19:7: ( ''<'' )
        // SimpleC.g:19:9: ''<''
        begin
        match($003C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__19// $ANTLR start "T__20"
procedure TSimpleCLexer.mT__20();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__20;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:20:7: ( ''+'' )
        // SimpleC.g:20:9: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__20// $ANTLR start "ID"
procedure TSimpleCLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:82:5: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )* )
        // SimpleC.g:82:9: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )*
        begin
        if ( ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // closureBlock:SimpleC.g:82:33: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=$0030) and 
            ( _LA[1,0]<=$0039)) or ((_LA[1,0]>=$0041) and 
            ( _LA[1,0]<=$005A)) or (_LA[1,0]=$005F) or ((_LA[1,0]>=$0061) and 
            ( _LA[1,0]<=$007A))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // SimpleC.g:
        	    begin
        	    if ( ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
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
        	    break;
            end;
         until (false);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end ID// $ANTLR start "INT"
procedure TSimpleCLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:85:5: ( ( ''0'' .. ''9'' )+ )
        // SimpleC.g:85:7: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:SimpleC.g:85:7: ( ''0'' .. ''9'' )+
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
        	    // SimpleC.g:85:8: ''0'' .. ''9''
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
procedure TSimpleCLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:88:5: ( ( '' '' | ''\t'' | ''\r'' | ''\n'' )+ )
        // SimpleC.g:88:9: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        begin
        // positiveClosureBlock:SimpleC.g:88:9: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        _cnt[3]:=0;
        repeat 
            _alt[3]:=2;
            //before decision
            _LA[3,0] := input.LA(1);

            if ( (((_LA[3,0]>=$0009) and 
            ( _LA[3,0]<=$000A)) or (_LA[3,0]=$000D) or (_LA[3,0]=$0020)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            //after decision
            case (_alt[3]) of 
        	 1 :
        	    begin
        	    // SimpleC.g:
        	    begin
        	    if ( ((input.LA(1)>=$0009) and (input.LA(1)<=$000A)) or (input.LA(1)=$000D) or (input.LA(1)=$0020) ) then
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
procedure TSimpleCLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:SimpleC.g:1:8: ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | ID | INT | WS )
        _alt[4]:=17;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SimpleCLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[4] := getDfa4.predict(input);
        case (_alt[4]) of 
             1 :
                begin
                // SimpleC.g:1:10: T__7
                begin
                mT__7(); 


                end;
                end;
             2 :
                begin
                // SimpleC.g:1:15: T__8
                begin
                mT__8(); 


                end;
                end;
             3 :
                begin
                // SimpleC.g:1:20: T__9
                begin
                mT__9(); 


                end;
                end;
             4 :
                begin
                // SimpleC.g:1:25: T__10
                begin
                mT__10(); 


                end;
                end;
             5 :
                begin
                // SimpleC.g:1:31: T__11
                begin
                mT__11(); 


                end;
                end;
             6 :
                begin
                // SimpleC.g:1:37: T__12
                begin
                mT__12(); 


                end;
                end;
             7 :
                begin
                // SimpleC.g:1:43: T__13
                begin
                mT__13(); 


                end;
                end;
             8 :
                begin
                // SimpleC.g:1:49: T__14
                begin
                mT__14(); 


                end;
                end;
             9 :
                begin
                // SimpleC.g:1:55: T__15
                begin
                mT__15(); 


                end;
                end;
             10 :
                begin
                // SimpleC.g:1:61: T__16
                begin
                mT__16(); 


                end;
                end;
             11 :
                begin
                // SimpleC.g:1:67: T__17
                begin
                mT__17(); 


                end;
                end;
             12 :
                begin
                // SimpleC.g:1:73: T__18
                begin
                mT__18(); 


                end;
                end;
             13 :
                begin
                // SimpleC.g:1:79: T__19
                begin
                mT__19(); 


                end;
                end;
             14 :
                begin
                // SimpleC.g:1:85: T__20
                begin
                mT__20(); 


                end;
                end;
             15 :
                begin
                // SimpleC.g:1:91: ID
                begin
                mID(); 


                end;
                end;
             16 :
                begin
                // SimpleC.g:1:94: INT
                begin
                mINT(); 


                end;
                end;
             17 :
                begin
                // SimpleC.g:1:98: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TSimpleCLexer.getDfa4:IDFA;
begin
  if not Assigned(dfa4) then
    dfa4:=TAntlrDFA4.Create(self);
  Result:=dfa4;  
end;

constructor TSimpleCLexer.TAntlrDFA4.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=4;
  feot:=unpackEncodedString('\5\uffff\3\16\2\uffff\1\16\1\26\5\uffff\4\16'+
    '\2\uffff\1\33\2\16\1\36\1\uffff\1\37\1\40\3\uffff');
  feof:=unpackEncodedString('\41\uffff');

  FMinc:=unpackEncodedString('\1\11\4\uffff\1\156\1\150\1\157\2\uffff\1'+
    '\157\1\75\5\uffff\1\164\1\141\1\151\1\162\2\uffff\1\60\1\162\1\144\1'+
    '\60\1\uffff\2\60\3\uffff');

  FMaxc:=unpackEncodedString('\1\175\4\uffff\1\156\1\150\1\157\2\uffff\1'+
    '\157\1\75\5\uffff\1\164\1\141\1\151\1\162\2\uffff\1\172\1\162\1\144'+
    '\1\172\1\uffff\2\172\3\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\1\4\3\uffff\1\10\1'+
    '\11\2\uffff\1\15\1\16\1\17\1\20\1\21\4\uffff\1\14\1\13\4\uffff\1\5\2'+
    '\uffff\1\12\1\6\1\7');
  fspecial:=unpackEncodedString('\41\uffff');
  AddTransition(unpackEncodedString('\2\20\2\uffff\1\20\22\uffff\1\20\7'+
  '\uffff\1\2\1\4\1\uffff\1\15\1\3\3\uffff\12\17\1\uffff\1\1\1\14\1\13\3'+
  '\uffff\32\16\4\uffff\1\16\1\uffff\2\16\1\6\2\16\1\12\2\16\1\5\14\16\1'+
  '\7\4\16\1\10\1\uffff\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\21'));
  AddTransition(unpackEncodedString('\1\22'));
  AddTransition(unpackEncodedString('\1\23'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\24'));
  AddTransition(unpackEncodedString('\1\25'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\27'));
  AddTransition(unpackEncodedString('\1\30'));
  AddTransition(unpackEncodedString('\1\31'));
  AddTransition(unpackEncodedString('\1\32'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\16\7\uffff\32\16\4\uffff\1\16\1'+
  '\uffff\32\16'));
  AddTransition(unpackEncodedString('\1\34'));
  AddTransition(unpackEncodedString('\1\35'));
  AddTransition(unpackEncodedString('\12\16\7\uffff\32\16\4\uffff\1\16\1'+
  '\uffff\32\16'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\16\7\uffff\32\16\4\uffff\1\16\1'+
  '\uffff\32\16'));
  AddTransition(unpackEncodedString('\12\16\7\uffff\32\16\4\uffff\1\16\1'+
  '\uffff\32\16'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TSimpleCLexer.TAntlrDFA4.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__'+
  '15 | T__16 | T__17 | T__18 | T__19 | T__20 | ID | INT | WS );';
end;



 


end.