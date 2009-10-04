// $ANTLR 3.2 10 04, 2009 23:19:32 VecMath.g 2009-10-04 23:19:41
unit VecMathLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TVecMathLexer = class(TAntlrLexer)
    public
      const VEC=6;
      const WS=9;
      const T__16=16;
      const T__15=15;
      const T__18=18;
      const T__17=17;
      const T__12=12;
      const T__11=11;
      const T__14=14;
      const T__13=13;
      const T__10=10;
      const SHIFT=5;
      const INT=8;
      const MULT=4;
      const ID=7;
      const EOF=-1;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "MULT"
    procedure mMULT();
    // $ANTLR end MULT

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
uses  JclStacks,JclArrayLists,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TVecMathLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TVecMathLexer.Destroy;
begin
 inherited;
end;

function TVecMathLexer.GetGrammarFileName():String;
begin
  Result:='VecMath.g';
end;

// $ANTLR start "MULT"
procedure TVecMathLexer.mMULT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := MULT;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:7:6: ( ''*'' )
        // VecMath.g:7:8: ''*''
        begin
        match($002A);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end MULT// $ANTLR start "T__10"
procedure TVecMathLexer.mT__10();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__10;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:8:7: ( ''='' )
        // VecMath.g:8:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__10// $ANTLR start "T__11"
procedure TVecMathLexer.mT__11();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__11;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:9:7: ( ''print'' )
        // VecMath.g:9:9: ''print''
        begin
        match('print');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__11// $ANTLR start "T__12"
procedure TVecMathLexer.mT__12();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__12;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:10:7: ( ''+'' )
        // VecMath.g:10:9: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__12// $ANTLR start "T__13"
procedure TVecMathLexer.mT__13();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__13;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:11:7: ( ''.'' )
        // VecMath.g:11:9: ''.''
        begin
        match($002E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__13// $ANTLR start "T__14"
procedure TVecMathLexer.mT__14();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__14;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:12:7: ( ''['' )
        // VecMath.g:12:9: ''[''
        begin
        match($005B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__14// $ANTLR start "T__15"
procedure TVecMathLexer.mT__15();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__15;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:13:7: ( '','' )
        // VecMath.g:13:9: '',''
        begin
        match($002C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__15// $ANTLR start "T__16"
procedure TVecMathLexer.mT__16();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__16;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:14:7: ( '']'' )
        // VecMath.g:14:9: '']''
        begin
        match($005D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__16// $ANTLR start "T__17"
procedure TVecMathLexer.mT__17();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__17;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:15:7: ( ''('' )
        // VecMath.g:15:9: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__17// $ANTLR start "T__18"
procedure TVecMathLexer.mT__18();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__18;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:16:7: ( '')'' )
        // VecMath.g:16:9: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__18// $ANTLR start "ID"
procedure TVecMathLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:36:5: ( ( ''a'' .. ''z'' )+ )
        // VecMath.g:36:9: ( ''a'' .. ''z'' )+
        begin
        // positiveClosureBlock:VecMath.g:36:9: ( ''a'' .. ''z'' )+
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
        	    // VecMath.g:36:9: ''a'' .. ''z''
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
procedure TVecMathLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:37:5: ( ( ''0'' .. ''9'' )+ )
        // VecMath.g:37:9: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:VecMath.g:37:9: ( ''0'' .. ''9'' )+
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
        	    // VecMath.g:37:9: ''0'' .. ''9''
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
procedure TVecMathLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:VecMath.g:38:5: ( ( '' '' | ''\r'' | ''\n'' )+ )
        // VecMath.g:38:9: ( '' '' | ''\r'' | ''\n'' )+
        begin
        // positiveClosureBlock:VecMath.g:38:9: ( '' '' | ''\r'' | ''\n'' )+
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
        	    // VecMath.g:
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

        skip();

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TVecMathLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:VecMath.g:1:8: ( MULT | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | ID | INT | WS )
        _alt[4]:=13;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The VecMathLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[4] := getDfa4.predict(input);
        case (_alt[4]) of 
             1 :
                begin
                // VecMath.g:1:10: MULT
                begin
                mMULT(); 


                end;
                end;
             2 :
                begin
                // VecMath.g:1:15: T__10
                begin
                mT__10(); 


                end;
                end;
             3 :
                begin
                // VecMath.g:1:21: T__11
                begin
                mT__11(); 


                end;
                end;
             4 :
                begin
                // VecMath.g:1:27: T__12
                begin
                mT__12(); 


                end;
                end;
             5 :
                begin
                // VecMath.g:1:33: T__13
                begin
                mT__13(); 


                end;
                end;
             6 :
                begin
                // VecMath.g:1:39: T__14
                begin
                mT__14(); 


                end;
                end;
             7 :
                begin
                // VecMath.g:1:45: T__15
                begin
                mT__15(); 


                end;
                end;
             8 :
                begin
                // VecMath.g:1:51: T__16
                begin
                mT__16(); 


                end;
                end;
             9 :
                begin
                // VecMath.g:1:57: T__17
                begin
                mT__17(); 


                end;
                end;
             10 :
                begin
                // VecMath.g:1:63: T__18
                begin
                mT__18(); 


                end;
                end;
             11 :
                begin
                // VecMath.g:1:69: ID
                begin
                mID(); 


                end;
                end;
             12 :
                begin
                // VecMath.g:1:72: INT
                begin
                mINT(); 


                end;
                end;
             13 :
                begin
                // VecMath.g:1:76: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TVecMathLexer.getDfa4:IDFA;
begin
  if not Assigned(dfa4) then
    dfa4:=TAntlrDFA4.Create(self);
  Result:=dfa4;  
end;

constructor TVecMathLexer.TAntlrDFA4.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=4;
  feot:=unpackEncodedString('\3\uffff\1\13\12\uffff\3\13\1\22\1\uffff');
  feof:=unpackEncodedString('\23\uffff');

  FMinc:=unpackEncodedString('\1\12\2\uffff\1\162\12\uffff\1\151\1\156\1'+
    '\164\1\141\1\uffff');

  FMaxc:=unpackEncodedString('\1\172\2\uffff\1\162\12\uffff\1\151\1\156'+
    '\1\164\1\172\1\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\uffff\1\4\1\5\1\6\1\7'+
    '\1\10\1\11\1\12\1\13\1\14\1\15\4\uffff\1\3');
  fspecial:=unpackEncodedString('\23\uffff');
  AddTransition(unpackEncodedString('\1\15\2\uffff\1\15\22\uffff\1\15\7'+
  '\uffff\1\11\1\12\1\1\1\4\1\7\1\uffff\1\5\1\uffff\12\14\3\uffff\1\2\35'+
  '\uffff\1\6\1\uffff\1\10\3\uffff\17\13\1\3\12\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\16'));
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
  AddTransition(unpackEncodedString('\1\17'));
  AddTransition(unpackEncodedString('\1\20'));
  AddTransition(unpackEncodedString('\1\21'));
  AddTransition(unpackEncodedString('\32\13'));
  AddTransition(unpackEncodedString(''));
end;

function TVecMathLexer.TAntlrDFA4.getDescription():string;
begin
  Result:='1:1: Tokens : ( MULT | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T'+
  '__17 | T__18 | ID | INT | WS );';
end;



 


end.