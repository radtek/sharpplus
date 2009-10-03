// $ANTLR 3.1.2 Lang.g 2009-07-23 21:46:38
unit LangLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TLangLexer = class(TAntlrLexer)
    public
      const WS=9;
      const FLOATTYPE=7;
      const T__10=10;
      const INT=8;
      const ID=5;
      const INTTYPE=6;
      const TDECL=4;
      const EOF=-1;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__10"
    procedure mT__10();
    // $ANTLR end T__10

    // $ANTLR start "INTTYPE"
    procedure mINTTYPE();
    // $ANTLR end INTTYPE

    // $ANTLR start "FLOATTYPE"
    procedure mFLOATTYPE();
    // $ANTLR end FLOATTYPE

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

     
          type TAntlrDFA3=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa3:IDFA;
        protected
          dfa3:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TLangLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TLangLexer.Destroy;
begin
 inherited;
end;

function TLangLexer.GetGrammarFileName():String;
begin
  Result:='Lang.g';
end;

// $ANTLR start "T__10"
procedure TLangLexer.mT__10();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__10;
        _channel := 0;
        // ruleBlockSingleAlt:Lang.g:7:7: ( '';'' )
        // Lang.g:7:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__10// $ANTLR start "INTTYPE"
procedure TLangLexer.mINTTYPE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INTTYPE;
        _channel := 0;
        // ruleBlockSingleAlt:Lang.g:18:9: ( ''int'' )
        // Lang.g:18:11: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end INTTYPE// $ANTLR start "FLOATTYPE"
procedure TLangLexer.mFLOATTYPE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := FLOATTYPE;
        _channel := 0;
        // ruleBlockSingleAlt:Lang.g:19:11: ( ''float'' )
        // Lang.g:19:13: ''float''
        begin
        match('float');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end FLOATTYPE// $ANTLR start "ID"
procedure TLangLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:Lang.g:20:4: ( ( ''a'' .. ''z'' )+ )
        // Lang.g:20:6: ( ''a'' .. ''z'' )+
        begin
        // positiveClosureBlock:Lang.g:20:6: ( ''a'' .. ''z'' )+
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
        	    // Lang.g:20:6: ''a'' .. ''z''
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
procedure TLangLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:Lang.g:21:5: ( ( ''0'' .. ''9'' )+ )
        // Lang.g:21:7: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:Lang.g:21:7: ( ''0'' .. ''9'' )+
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
        	    // Lang.g:21:7: ''0'' .. ''9''
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
procedure TLangLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:Lang.g:22:4: ( ( '' '' | ''\n'' | ''\r'' | ''\t'' ) )
        // Lang.g:22:6: ( '' '' | ''\n'' | ''\r'' | ''\t'' )
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
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TLangLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Lang.g:1:8: ( T__10 | INTTYPE | FLOATTYPE | ID | INT | WS )
        _alt[3]:=6;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The LangLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[3] := getDfa3.predict(input);
        case (_alt[3]) of 
             1 :
                begin
                // Lang.g:1:10: T__10
                begin
                mT__10(); 


                end;
                end;
             2 :
                begin
                // Lang.g:1:16: INTTYPE
                begin
                mINTTYPE(); 


                end;
                end;
             3 :
                begin
                // Lang.g:1:24: FLOATTYPE
                begin
                mFLOATTYPE(); 


                end;
                end;
             4 :
                begin
                // Lang.g:1:34: ID
                begin
                mID(); 


                end;
                end;
             5 :
                begin
                // Lang.g:1:37: INT
                begin
                mINT(); 


                end;
                end;
             6 :
                begin
                // Lang.g:1:41: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TLangLexer.getDfa3:IDFA;
begin
  if not Assigned(dfa3) then
    dfa3:=TAntlrDFA3.Create(self);
  Result:=dfa3;  
end;

constructor TLangLexer.TAntlrDFA3.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=3;
  feot:=unpackEncodedString('\2\uffff\2\4\3\uffff\2\4\1\13\1\4\1\uffff\1'+
    '\4\1\16\1\uffff');
  feof:=unpackEncodedString('\17\uffff');

  FMinc:=unpackEncodedString('\1\11\1\uffff\1\156\1\154\3\uffff\1\164\1'+
    '\157\2\141\1\uffff\1\164\1\141\1\uffff');

  FMaxc:=unpackEncodedString('\1\172\1\uffff\1\156\1\154\3\uffff\1\164\1'+
    '\157\1\172\1\141\1\uffff\1\164\1\172\1\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\2\uffff\1\4\1\5\1\6\4\uffff'+
    '\1\2\2\uffff\1\3');
  fspecial:=unpackEncodedString('\17\uffff');
  AddTransition(unpackEncodedString('\2\6\2\uffff\1\6\22\uffff\1\6\17\uffff'+
  '\12\5\1\uffff\1\1\45\uffff\5\4\1\3\2\4\1\2\21\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\7'));
  AddTransition(unpackEncodedString('\1\10'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\11'));
  AddTransition(unpackEncodedString('\1\12'));
  AddTransition(unpackEncodedString('\32\4'));
  AddTransition(unpackEncodedString('\1\14'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\15'));
  AddTransition(unpackEncodedString('\32\4'));
  AddTransition(unpackEncodedString(''));
end;

function TLangLexer.TAntlrDFA3.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__10 | INTTYPE | FLOATTYPE | ID | INT | WS );';
end;



 


end.