// $ANTLR 3.2 10 03, 2009 17:07:46 SimpleC.g 2009-10-03 17:18:19
unit SimpleCLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TSimpleCLexer = class(TAntlrLexer)
    public
      const LT=18;
      const T__26=26;
      const T__25=25;
      const T__24=24;
      const T__23=23;
      const T__22=22;
      const T__21=21;
      const CHAR=15;
      const TBLOCK=9;
      const FUNC_HDR=6;
      const INT=12;
      const FUNC_DEF=8;
      const INT_TYPE=14;
      const ID=10;
      const EOF=-1;
      const FUNC_DECL=7;
      const ARG_DEF=5;
      const WS=20;
      const DFOR=13;
      const PLUS=19;
      const VOID=16;
      const EQ=11;
      const VAR_DEF=4;
      const EQEQ=17;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

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

    // $ANTLR start "DFOR"
    procedure mDFOR();
    // $ANTLR end DFOR

    // $ANTLR start "INT_TYPE"
    procedure mINT_TYPE();
    // $ANTLR end INT_TYPE

    // $ANTLR start "CHAR"
    procedure mCHAR();
    // $ANTLR end CHAR

    // $ANTLR start "VOID"
    procedure mVOID();
    // $ANTLR end VOID

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "INT"
    procedure mINT();
    // $ANTLR end INT

    // $ANTLR start "EQ"
    procedure mEQ();
    // $ANTLR end EQ

    // $ANTLR start "EQEQ"
    procedure mEQEQ();
    // $ANTLR end EQEQ

    // $ANTLR start "LT"
    procedure mLT();
    // $ANTLR end LT

    // $ANTLR start "PLUS"
    procedure mPLUS();
    // $ANTLR end PLUS

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

// $ANTLR start "T__21"
procedure TSimpleCLexer.mT__21();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__21;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:7:7: ( '';'' )
        // SimpleC.g:7:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__21// $ANTLR start "T__22"
procedure TSimpleCLexer.mT__22();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__22;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:8:7: ( ''('' )
        // SimpleC.g:8:9: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__22// $ANTLR start "T__23"
procedure TSimpleCLexer.mT__23();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__23;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:9:7: ( '','' )
        // SimpleC.g:9:9: '',''
        begin
        match($002C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__23// $ANTLR start "T__24"
procedure TSimpleCLexer.mT__24();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__24;
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
// $ANTLR end T__24// $ANTLR start "T__25"
procedure TSimpleCLexer.mT__25();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__25;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:11:7: ( ''{'' )
        // SimpleC.g:11:9: ''{''
        begin
        match($007B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__25// $ANTLR start "T__26"
procedure TSimpleCLexer.mT__26();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__26;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:12:7: ( ''}'' )
        // SimpleC.g:12:9: ''}''
        begin
        match($007D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__26// $ANTLR start "DFOR"
procedure TSimpleCLexer.mDFOR();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := DFOR;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:91:6: ( ''for'' )
        // SimpleC.g:91:8: ''for''
        begin
        match('for');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end DFOR// $ANTLR start "INT_TYPE"
procedure TSimpleCLexer.mINT_TYPE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT_TYPE;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:92:10: ( ''int'' )
        // SimpleC.g:92:12: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end INT_TYPE// $ANTLR start "CHAR"
procedure TSimpleCLexer.mCHAR();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := CHAR;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:93:5: ( ''char'' )
        // SimpleC.g:93:7: ''char''
        begin
        match('char');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end CHAR// $ANTLR start "VOID"
procedure TSimpleCLexer.mVOID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := VOID;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:94:5: ( ''void'' )
        // SimpleC.g:94:7: ''void''
        begin
        match('void');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end VOID// $ANTLR start "ID"
procedure TSimpleCLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:96:5: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )* )
        // SimpleC.g:96:9: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )*
        begin
        if ( ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // closureBlock:SimpleC.g:96:33: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )*
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
        // ruleBlockSingleAlt:SimpleC.g:99:5: ( ( ''0'' .. ''9'' )+ )
        // SimpleC.g:99:7: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:SimpleC.g:99:7: ( ''0'' .. ''9'' )+
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
        	    // SimpleC.g:99:8: ''0'' .. ''9''
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
// $ANTLR end INT// $ANTLR start "EQ"
procedure TSimpleCLexer.mEQ();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := EQ;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:102:6: ( ''='' )
        // SimpleC.g:102:8: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end EQ// $ANTLR start "EQEQ"
procedure TSimpleCLexer.mEQEQ();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := EQEQ;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:103:6: ( ''=='' )
        // SimpleC.g:103:8: ''==''
        begin
        match('==');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end EQEQ// $ANTLR start "LT"
procedure TSimpleCLexer.mLT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LT;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:104:6: ( ''<'' )
        // SimpleC.g:104:8: ''<''
        begin
        match($003C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end LT// $ANTLR start "PLUS"
procedure TSimpleCLexer.mPLUS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := PLUS;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:105:6: ( ''+'' )
        // SimpleC.g:105:8: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end PLUS// $ANTLR start "WS"
procedure TSimpleCLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:SimpleC.g:107:5: ( ( '' '' | ''\t'' | ''\r'' | ''\n'' )+ )
        // SimpleC.g:107:9: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        begin
        // positiveClosureBlock:SimpleC.g:107:9: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
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
        // ruleBlock:SimpleC.g:1:8: ( T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | DFOR | INT_TYPE | CHAR | VOID | ID | INT | EQ | EQEQ | LT | PLUS | WS )
        _alt[4]:=17;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SimpleCLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[4] := getDfa4.predict(input);
        case (_alt[4]) of 
             1 :
                begin
                // SimpleC.g:1:10: T__21
                begin
                mT__21(); 


                end;
                end;
             2 :
                begin
                // SimpleC.g:1:16: T__22
                begin
                mT__22(); 


                end;
                end;
             3 :
                begin
                // SimpleC.g:1:22: T__23
                begin
                mT__23(); 


                end;
                end;
             4 :
                begin
                // SimpleC.g:1:28: T__24
                begin
                mT__24(); 


                end;
                end;
             5 :
                begin
                // SimpleC.g:1:34: T__25
                begin
                mT__25(); 


                end;
                end;
             6 :
                begin
                // SimpleC.g:1:40: T__26
                begin
                mT__26(); 


                end;
                end;
             7 :
                begin
                // SimpleC.g:1:46: DFOR
                begin
                mDFOR(); 


                end;
                end;
             8 :
                begin
                // SimpleC.g:1:51: INT_TYPE
                begin
                mINT_TYPE(); 


                end;
                end;
             9 :
                begin
                // SimpleC.g:1:60: CHAR
                begin
                mCHAR(); 


                end;
                end;
             10 :
                begin
                // SimpleC.g:1:65: VOID
                begin
                mVOID(); 


                end;
                end;
             11 :
                begin
                // SimpleC.g:1:70: ID
                begin
                mID(); 


                end;
                end;
             12 :
                begin
                // SimpleC.g:1:73: INT
                begin
                mINT(); 


                end;
                end;
             13 :
                begin
                // SimpleC.g:1:77: EQ
                begin
                mEQ(); 


                end;
                end;
             14 :
                begin
                // SimpleC.g:1:80: EQEQ
                begin
                mEQEQ(); 


                end;
                end;
             15 :
                begin
                // SimpleC.g:1:85: LT
                begin
                mLT(); 


                end;
                end;
             16 :
                begin
                // SimpleC.g:1:88: PLUS
                begin
                mPLUS(); 


                end;
                end;
             17 :
                begin
                // SimpleC.g:1:93: WS
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
  feot:=unpackEncodedString('\7\uffff\4\13\2\uffff\1\26\3\uffff\4\13\2\uffff'+
    '\1\33\1\34\2\13\2\uffff\1\37\1\40\2\uffff');
  feof:=unpackEncodedString('\41\uffff');

  FMinc:=unpackEncodedString('\1\11\6\uffff\1\157\1\156\1\150\1\157\2\uffff'+
    '\1\75\3\uffff\1\162\1\164\1\141\1\151\2\uffff\2\60\1\162\1\144\2\uffff'+
    '\2\60\2\uffff');

  FMaxc:=unpackEncodedString('\1\175\6\uffff\1\157\1\156\1\150\1\157\2\uffff'+
    '\1\75\3\uffff\1\162\1\164\1\141\1\151\2\uffff\2\172\1\162\1\144\2\uffff'+
    '\2\172\2\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\1\4\1\5\1\6\4\uffff'+
    '\1\13\1\14\1\uffff\1\17\1\20\1\21\4\uffff\1\16\1\15\4\uffff\1\7\1\10'+
    '\2\uffff\1\11\1\12');
  fspecial:=unpackEncodedString('\41\uffff');
  AddTransition(unpackEncodedString('\2\20\2\uffff\1\20\22\uffff\1\20\7'+
  '\uffff\1\2\1\4\1\uffff\1\17\1\3\3\uffff\12\14\1\uffff\1\1\1\16\1\15\3'+
  '\uffff\32\13\4\uffff\1\13\1\uffff\2\13\1\11\2\13\1\7\2\13\1\10\14\13\1'+
  '\12\4\13\1\5\1\uffff\1\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\21'));
  AddTransition(unpackEncodedString('\1\22'));
  AddTransition(unpackEncodedString('\1\23'));
  AddTransition(unpackEncodedString('\1\24'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\25'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\27'));
  AddTransition(unpackEncodedString('\1\30'));
  AddTransition(unpackEncodedString('\1\31'));
  AddTransition(unpackEncodedString('\1\32'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\13\7\uffff\32\13\4\uffff\1\13\1'+
  '\uffff\32\13'));
  AddTransition(unpackEncodedString('\12\13\7\uffff\32\13\4\uffff\1\13\1'+
  '\uffff\32\13'));
  AddTransition(unpackEncodedString('\1\35'));
  AddTransition(unpackEncodedString('\1\36'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\13\7\uffff\32\13\4\uffff\1\13\1'+
  '\uffff\32\13'));
  AddTransition(unpackEncodedString('\12\13\7\uffff\32\13\4\uffff\1\13\1'+
  '\uffff\32\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TSimpleCLexer.TAntlrDFA4.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | DFOR | INT_TYPE '+
  '| CHAR | VOID | ID | INT | EQ | EQEQ | LT | PLUS | WS );';
end;



 


end.