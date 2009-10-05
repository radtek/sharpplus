// $ANTLR 3.2 10 04, 2009 23:19:32 Cymbol.g 2009-10-05 22:10:28
unit CymbolLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TCymbolLexer = class(TAntlrLexer)
    public
      const T_BLOCK=6;
      const T__27=27;
      const T__26=26;
      const T__25=25;
      const T__24=24;
      const LETTER=13;
      const T__23=23;
      const T__22=22;
      const T__21=21;
      const T__20=20;
      const ARG_DECL=5;
      const METHOD_DECL=4;
      const VAR_DECL=7;
      const INT=12;
      const ID=11;
      const EOF=-1;
      const T__19=19;
      const T__16=16;
      const EXPR=10;
      const WS=14;
      const T__18=18;
      const T__17=17;
      const ELIST=9;
      const SL_COMMENT=15;
      const CALL=8;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

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

    // $ANTLR start "T__21"
    procedure mT__21();
    // $ANTLR end T__21

    // $ANTLR start "T__22"
    procedure mT__22();
    // $ANTLR end T__22

    // $ANTLR start "T__23"
    procedure mT__23();
    // $ANTLR end T__23

    // $ANTLR start "T__24"
    procedure mT__24();
    // $ANTLR end T__24

    // $ANTLR start "T__25"
    procedure mT__25();
    // $ANTLR end T__25

    // $ANTLR start "T__26"
    procedure mT__26();
    // $ANTLR end T__26

    // $ANTLR start "T__27"
    procedure mT__27();
    // $ANTLR end T__27

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "LETTER"
    procedure mLETTER();
    // $ANTLR end LETTER

    // $ANTLR start "INT"
    procedure mINT();
    // $ANTLR end INT

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    // $ANTLR start "SL_COMMENT"
    procedure mSL_COMMENT();
    // $ANTLR end SL_COMMENT

    procedure mTokens();override;

    protected

     
          type TAntlrDFA5=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa5:IDFA;
        protected
          dfa5:IDFA;
    end;

implementation
uses  JclStacks,JclArrayLists,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TCymbolLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TCymbolLexer.Destroy;
begin
 inherited;
end;

function TCymbolLexer.GetGrammarFileName():String;
begin
  Result:='Cymbol.g';
end;

// $ANTLR start "T__16"
procedure TCymbolLexer.mT__16();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__16;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:7:7: ( ''('' )
        // Cymbol.g:7:9: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__16// $ANTLR start "T__17"
procedure TCymbolLexer.mT__17();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__17;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:8:7: ( '')'' )
        // Cymbol.g:8:9: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__17// $ANTLR start "T__18"
procedure TCymbolLexer.mT__18();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__18;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:9:7: ( '','' )
        // Cymbol.g:9:9: '',''
        begin
        match($002C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__18// $ANTLR start "T__19"
procedure TCymbolLexer.mT__19();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__19;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:10:7: ( ''float'' )
        // Cymbol.g:10:9: ''float''
        begin
        match('float');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__19// $ANTLR start "T__20"
procedure TCymbolLexer.mT__20();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__20;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:11:7: ( ''int'' )
        // Cymbol.g:11:9: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__20// $ANTLR start "T__21"
procedure TCymbolLexer.mT__21();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__21;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:12:7: ( ''void'' )
        // Cymbol.g:12:9: ''void''
        begin
        match('void');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__21// $ANTLR start "T__22"
procedure TCymbolLexer.mT__22();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__22;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:13:7: ( ''{'' )
        // Cymbol.g:13:9: ''{''
        begin
        match($007B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__22// $ANTLR start "T__23"
procedure TCymbolLexer.mT__23();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__23;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:14:7: ( ''}'' )
        // Cymbol.g:14:9: ''}''
        begin
        match($007D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__23// $ANTLR start "T__24"
procedure TCymbolLexer.mT__24();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__24;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:15:7: ( ''='' )
        // Cymbol.g:15:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__24// $ANTLR start "T__25"
procedure TCymbolLexer.mT__25();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__25;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:16:7: ( '';'' )
        // Cymbol.g:16:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__25// $ANTLR start "T__26"
procedure TCymbolLexer.mT__26();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__26;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:17:7: ( ''return'' )
        // Cymbol.g:17:9: ''return''
        begin
        match('return');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__26// $ANTLR start "T__27"
procedure TCymbolLexer.mT__27();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__27;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:18:7: ( ''+'' )
        // Cymbol.g:18:9: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__27// $ANTLR start "ID"
procedure TCymbolLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:88:5: ( LETTER ( LETTER | ''0'' .. ''9'' )* )
        // Cymbol.g:88:9: LETTER ( LETTER | ''0'' .. ''9'' )*
        begin
        mLETTER(); 

        // closureBlock:Cymbol.g:88:16: ( LETTER | ''0'' .. ''9'' )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=$0030) and 
            ( _LA[1,0]<=$0039)) or ((_LA[1,0]>=$0041) and 
            ( _LA[1,0]<=$005A)) or ((_LA[1,0]>=$0061) and 
            ( _LA[1,0]<=$007A))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // Cymbol.g:
        	    begin
        	    if ( ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
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
// $ANTLR end ID// $ANTLR start "LETTER"
procedure TCymbolLexer.mLETTER();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:Cymbol.g:92:9: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' ) )
        // Cymbol.g:92:13: ( ''a'' .. ''z'' | ''A'' .. ''Z'' )
        begin
        if ( ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;


        end;

    finally 
    end;
end;
// $ANTLR end LETTER// $ANTLR start "INT"
procedure TCymbolLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:95:5: ( ( ''0'' .. ''9'' )+ )
        // Cymbol.g:95:9: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:Cymbol.g:95:9: ( ''0'' .. ''9'' )+
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
        	    // Cymbol.g:95:9: ''0'' .. ''9''
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
procedure TCymbolLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:98:5: ( ( '' '' | ''\r'' | ''\t'' | ''\n'' ) )
        // Cymbol.g:98:9: ( '' '' | ''\r'' | ''\t'' | ''\n'' )
        begin
        if ( ((input.LA(1)>=$0009) and (input.LA(1)<=$000A)) or (input.LA(1)=$000D) or (input.LA(1)=$0020) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        _channel:=HIDDEN;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "SL_COMMENT"
procedure TCymbolLexer.mSL_COMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := SL_COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:Cymbol.g:102:5: ( ''//'' (~ ( ''\r'' | ''\n'' ) )* ( ''\r'' )? ''\n'' )
        // Cymbol.g:102:9: ''//'' (~ ( ''\r'' | ''\n'' ) )* ( ''\r'' )? ''\n''
        begin
        match('//');


        // closureBlock:Cymbol.g:102:14: (~ ( ''\r'' | ''\n'' ) )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( (((_LA[3,0]>=$0000) and 
            ( _LA[3,0]<=$0009)) or ((_LA[3,0]>=$000B) and 
            ( _LA[3,0]<=$000C)) or ((_LA[3,0]>=$000E) and 
            ( _LA[3,0]<=$FFFF))) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // Cymbol.g:102:14: ~ ( ''\r'' | ''\n'' )
        	    begin
        	    if ( ((input.LA(1)>=$0000) and (input.LA(1)<=$0009)) or ((input.LA(1)>=$000B) and (input.LA(1)<=$000C)) or ((input.LA(1)>=$000E) and (input.LA(1)<=$FFFF)) ) then
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

        // block:Cymbol.g:102:28: ( ''\r'' )?
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=$000D)) ) then 
        begin
          _alt[4]:=1;
        end
        ;
        case (_alt[4]) of
             1 :
                begin
                // Cymbol.g:102:28: ''\r''
                begin
                match($000D);


                end;
                end;

        end;

        match($000A);

        _channel:=HIDDEN;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end SL_COMMENT// $ANTLR start "Tokens"
procedure TCymbolLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Cymbol.g:1:8: ( T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | ID | INT | WS | SL_COMMENT )
        _alt[5]:=16;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CymbolLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[5] := getDfa5.predict(input);
        case (_alt[5]) of 
             1 :
                begin
                // Cymbol.g:1:10: T__16
                begin
                mT__16(); 


                end;
                end;
             2 :
                begin
                // Cymbol.g:1:16: T__17
                begin
                mT__17(); 


                end;
                end;
             3 :
                begin
                // Cymbol.g:1:22: T__18
                begin
                mT__18(); 


                end;
                end;
             4 :
                begin
                // Cymbol.g:1:28: T__19
                begin
                mT__19(); 


                end;
                end;
             5 :
                begin
                // Cymbol.g:1:34: T__20
                begin
                mT__20(); 


                end;
                end;
             6 :
                begin
                // Cymbol.g:1:40: T__21
                begin
                mT__21(); 


                end;
                end;
             7 :
                begin
                // Cymbol.g:1:46: T__22
                begin
                mT__22(); 


                end;
                end;
             8 :
                begin
                // Cymbol.g:1:52: T__23
                begin
                mT__23(); 


                end;
                end;
             9 :
                begin
                // Cymbol.g:1:58: T__24
                begin
                mT__24(); 


                end;
                end;
             10 :
                begin
                // Cymbol.g:1:64: T__25
                begin
                mT__25(); 


                end;
                end;
             11 :
                begin
                // Cymbol.g:1:70: T__26
                begin
                mT__26(); 


                end;
                end;
             12 :
                begin
                // Cymbol.g:1:76: T__27
                begin
                mT__27(); 


                end;
                end;
             13 :
                begin
                // Cymbol.g:1:82: ID
                begin
                mID(); 


                end;
                end;
             14 :
                begin
                // Cymbol.g:1:85: INT
                begin
                mINT(); 


                end;
                end;
             15 :
                begin
                // Cymbol.g:1:89: WS
                begin
                mWS(); 


                end;
                end;
             16 :
                begin
                // Cymbol.g:1:92: SL_COMMENT
                begin
                mSL_COMMENT(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TCymbolLexer.getDfa5:IDFA;
begin
  if not Assigned(dfa5) then
    dfa5:=TAntlrDFA5.Create(self);
  Result:=dfa5;  
end;

constructor TCymbolLexer.TAntlrDFA5.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=5;
  feot:=unpackEncodedString('\4\uffff\3\15\4\uffff\1\15\5\uffff\5\15\1\32'+
    '\3\15\1\uffff\1\36\1\15\1\40\1\uffff\1\15\1\uffff\1\42\1\uffff');
  feof:=unpackEncodedString('\43\uffff');

  FMinc:=unpackEncodedString('\1\11\3\uffff\1\154\1\156\1\157\4\uffff\1'+
    '\145\5\uffff\1\157\1\164\1\151\1\164\1\141\1\60\1\144\1\165\1\164\1'+
    '\uffff\1\60\1\162\1\60\1\uffff\1\156\1\uffff\1\60\1\uffff');

  FMaxc:=unpackEncodedString('\1\175\3\uffff\1\154\1\156\1\157\4\uffff\1'+
    '\145\5\uffff\1\157\1\164\1\151\1\164\1\141\1\172\1\144\1\165\1\164\1'+
    '\uffff\1\172\1\162\1\172\1\uffff\1\156\1\uffff\1\172\1\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\3\uffff\1\7\1\10\1'+
    '\11\1\12\1\uffff\1\14\1\15\1\16\1\17\1\20\11\uffff\1\5\3\uffff\1\6\1'+
    '\uffff\1\4\1\uffff\1\13');
  fspecial:=unpackEncodedString('\43\uffff');
  AddTransition(unpackEncodedString('\2\17\2\uffff\1\17\22\uffff\1\17\7'+
  '\uffff\1\1\1\2\1\uffff\1\14\1\3\2\uffff\1\20\12\16\1\uffff\1\12\1\uffff'+
  '\1\11\3\uffff\32\15\6\uffff\5\15\1\4\2\15\1\5\10\15\1\13\3\15\1\6\4\15'+
  '\1\7\1\uffff\1\10'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\21'));
  AddTransition(unpackEncodedString('\1\22'));
  AddTransition(unpackEncodedString('\1\23'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\24'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\25'));
  AddTransition(unpackEncodedString('\1\26'));
  AddTransition(unpackEncodedString('\1\27'));
  AddTransition(unpackEncodedString('\1\30'));
  AddTransition(unpackEncodedString('\1\31'));
  AddTransition(unpackEncodedString('\12\15\7\uffff\32\15\6\uffff\32\15'));
  AddTransition(unpackEncodedString('\1\33'));
  AddTransition(unpackEncodedString('\1\34'));
  AddTransition(unpackEncodedString('\1\35'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\15\7\uffff\32\15\6\uffff\32\15'));
  AddTransition(unpackEncodedString('\1\37'));
  AddTransition(unpackEncodedString('\12\15\7\uffff\32\15\6\uffff\32\15'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\41'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\15\7\uffff\32\15\6\uffff\32\15'));
  AddTransition(unpackEncodedString(''));
end;

function TCymbolLexer.TAntlrDFA5.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | '+
  'T__24 | T__25 | T__26 | T__27 | ID | INT | WS | SL_COMMENT );';
end;



 


end.