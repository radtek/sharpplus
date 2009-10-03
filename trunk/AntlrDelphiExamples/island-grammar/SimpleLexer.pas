// $ANTLR 3.2 10 03, 2009 17:07:46 Simple.g 2009-10-03 17:11:42
unit SimpleLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 

        JavadocParser, JavadocLexer,
 
     Antlr, AntlrTree;

type
    TSimpleLexer = class(TAntlrLexer)
    public
      const WS=7;
      const T__16=16;
      const T__15=15;
      const JAVADOC=9;
      const T__12=12;
      const T__11=11;
      const T__14=14;
      const T__13=13;
      const T__10=10;
      const RCURLY=4;
      const LCURLY=8;
      const INT=6;
      const ID=5;
      const EOF=-1;

      public
        const JAVADOC_CHANNEL = 1;
      public
        nesting:Integer;
        procedure ParseComment();

    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

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

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "INT"
    procedure mINT();
    // $ANTLR end INT

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    // $ANTLR start "LCURLY"
    procedure mLCURLY();
    // $ANTLR end LCURLY

    // $ANTLR start "RCURLY"
    procedure mRCURLY();
    // $ANTLR end RCURLY

    // $ANTLR start "JAVADOC"
    procedure mJAVADOC();
    // $ANTLR end JAVADOC

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

constructor TSimpleLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TSimpleLexer.Destroy;
begin
 inherited;
end;

function TSimpleLexer.GetGrammarFileName():String;
begin
  Result:='Simple.g';
end;

// $ANTLR start "T__10"
procedure TSimpleLexer.mT__10();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__10;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:33:7: ( ''int'' )
        // Simple.g:33:9: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__10// $ANTLR start "T__11"
procedure TSimpleLexer.mT__11();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__11;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:34:7: ( ''='' )
        // Simple.g:34:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__11// $ANTLR start "T__12"
procedure TSimpleLexer.mT__12();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__12;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:35:7: ( '';'' )
        // Simple.g:35:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__12// $ANTLR start "T__13"
procedure TSimpleLexer.mT__13();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__13;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:36:7: ( ''method'' )
        // Simple.g:36:9: ''method''
        begin
        match('method');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__13// $ANTLR start "T__14"
procedure TSimpleLexer.mT__14();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__14;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:37:7: ( ''('' )
        // Simple.g:37:9: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__14// $ANTLR start "T__15"
procedure TSimpleLexer.mT__15();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__15;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:38:7: ( '')'' )
        // Simple.g:38:9: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__15// $ANTLR start "T__16"
procedure TSimpleLexer.mT__16();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__16;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:39:7: ( ''return'' )
        // Simple.g:39:9: ''return''
        begin
        match('return');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__16// $ANTLR start "ID"
procedure TSimpleLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:63:9: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' )+ )
        // Simple.g:63:11: ( ''a'' .. ''z'' | ''A'' .. ''Z'' )+
        begin
        // positiveClosureBlock:Simple.g:63:11: ( ''a'' .. ''z'' | ''A'' .. ''Z'' )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=$0041) and 
            ( _LA[1,0]<=$005A)) or ((_LA[1,0]>=$0061) and 
            ( _LA[1,0]<=$007A))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // Simple.g:
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
procedure TSimpleLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:64:9: ( ( ''0'' .. ''9'' )+ )
        // Simple.g:64:11: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:Simple.g:64:11: ( ''0'' .. ''9'' )+
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
        	    // Simple.g:64:12: ''0'' .. ''9''
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
procedure TSimpleLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:65:9: ( ( '' '' | ''\t'' | ''\n'' | ''\r'' )+ )
        // Simple.g:65:11: ( '' '' | ''\t'' | ''\n'' | ''\r'' )+
        begin
        // positiveClosureBlock:Simple.g:65:11: ( '' '' | ''\t'' | ''\n'' | ''\r'' )+
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
        	    // Simple.g:
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
// $ANTLR end WS// $ANTLR start "LCURLY"
procedure TSimpleLexer.mLCURLY();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LCURLY;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:67:9: ( ''{'' )
        // Simple.g:67:11: ''{''
        begin
        match($007B);

        Inc(nesting);

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end LCURLY// $ANTLR start "RCURLY"
procedure TSimpleLexer.mRCURLY();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := RCURLY;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:73:9: ( ''}'' )
        // Simple.g:73:11: ''}''
        begin
        match($007D);


                  if ( nesting<=0 ) then
        	  begin
                        emit(EOF_TOKEN);
                        Writeln('exiting embedded simple');
                  end
                  else 
                        Dec(nesting);
                  

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end RCURLY// $ANTLR start "JAVADOC"
procedure TSimpleLexer.mJAVADOC();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := JAVADOC;
        _channel := 0;
        // ruleBlockSingleAlt:Simple.g:84:9: ( ''/**'' )
        // Simple.g:84:11: ''/**''
        begin
        match('/**');



                    // create a new javadoc lexer/parser duo that feeds
                    // off the current input stream
                    Writeln('enter javadoc');
        	    ParseComment();
                    // returns a JAVADOC token to the java parser but on a
                    // different channel than the normal token stream so it
                    // doesn't get in the way.
                    _channel := JAVADOC_CHANNEL;
                  

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end JAVADOC// $ANTLR start "Tokens"
procedure TSimpleLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Simple.g:1:8: ( T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | ID | INT | WS | LCURLY | RCURLY | JAVADOC )
        _alt[4]:=13;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SimpleLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[4] := getDfa4.predict(input);
        case (_alt[4]) of 
             1 :
                begin
                // Simple.g:1:10: T__10
                begin
                mT__10(); 


                end;
                end;
             2 :
                begin
                // Simple.g:1:16: T__11
                begin
                mT__11(); 


                end;
                end;
             3 :
                begin
                // Simple.g:1:22: T__12
                begin
                mT__12(); 


                end;
                end;
             4 :
                begin
                // Simple.g:1:28: T__13
                begin
                mT__13(); 


                end;
                end;
             5 :
                begin
                // Simple.g:1:34: T__14
                begin
                mT__14(); 


                end;
                end;
             6 :
                begin
                // Simple.g:1:40: T__15
                begin
                mT__15(); 


                end;
                end;
             7 :
                begin
                // Simple.g:1:46: T__16
                begin
                mT__16(); 


                end;
                end;
             8 :
                begin
                // Simple.g:1:52: ID
                begin
                mID(); 


                end;
                end;
             9 :
                begin
                // Simple.g:1:55: INT
                begin
                mINT(); 


                end;
                end;
             10 :
                begin
                // Simple.g:1:59: WS
                begin
                mWS(); 


                end;
                end;
             11 :
                begin
                // Simple.g:1:62: LCURLY
                begin
                mLCURLY(); 


                end;
                end;
             12 :
                begin
                // Simple.g:1:69: RCURLY
                begin
                mRCURLY(); 


                end;
                end;
             13 :
                begin
                // Simple.g:1:76: JAVADOC
                begin
                mJAVADOC(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TSimpleLexer.getDfa4:IDFA;
begin
  if not Assigned(dfa4) then
    dfa4:=TAntlrDFA4.Create(self);
  Result:=dfa4;  
end;

constructor TSimpleLexer.TAntlrDFA4.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=4;
  feot:=unpackEncodedString('\1\uffff\1\10\2\uffff\1\10\2\uffff\1\10\6\uffff'+
    '\3\10\1\24\2\10\1\uffff\4\10\1\33\1\34\2\uffff');
  feof:=unpackEncodedString('\35\uffff');

  FMinc:=unpackEncodedString('\1\11\1\156\2\uffff\1\145\2\uffff\1\145\6'+
    '\uffff\3\164\1\101\1\150\1\165\1\uffff\1\157\1\162\1\144\1\156\2\101'+
    '\2\uffff');

  FMaxc:=unpackEncodedString('\1\175\1\156\2\uffff\1\145\2\uffff\1\145\6'+
    '\uffff\3\164\1\172\1\150\1\165\1\uffff\1\157\1\162\1\144\1\156\2\172'+
    '\2\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\3\1\uffff\1\5\1\6\1\uffff'+
    '\1\10\1\11\1\12\1\13\1\14\1\15\6\uffff\1\1\6\uffff\1\4\1\7');
  fspecial:=unpackEncodedString('\35\uffff');
  AddTransition(unpackEncodedString('\2\12\2\uffff\1\12\22\uffff\1\12\7'+
  '\uffff\1\5\1\6\5\uffff\1\15\12\11\1\uffff\1\3\1\uffff\1\2\3\uffff\32\10'+
  '\6\uffff\10\10\1\1\3\10\1\4\4\10\1\7\10\10\1\13\1\uffff\1\14'));
  AddTransition(unpackEncodedString('\1\16'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\17'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\20'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\21'));
  AddTransition(unpackEncodedString('\1\22'));
  AddTransition(unpackEncodedString('\1\23'));
  AddTransition(unpackEncodedString('\32\10\6\uffff\32\10'));
  AddTransition(unpackEncodedString('\1\25'));
  AddTransition(unpackEncodedString('\1\26'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\27'));
  AddTransition(unpackEncodedString('\1\30'));
  AddTransition(unpackEncodedString('\1\31'));
  AddTransition(unpackEncodedString('\1\32'));
  AddTransition(unpackEncodedString('\32\10\6\uffff\32\10'));
  AddTransition(unpackEncodedString('\32\10\6\uffff\32\10'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TSimpleLexer.TAntlrDFA4.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | ID | INT'+
  ' | WS | LCURLY | RCURLY | JAVADOC );';
end;



 


procedure TSimpleLexer.ParseComment();
var
  j:ITokenSource;
  tokens:ITokenStream;
  p:TJavadocParser;
begin
    j := TJavadocLexer.CreateWithStream(input,nil);
    tokens := TAntlrCommonTokenStream.CreateWithSource(j);
    tokens.discardTokenType(TJavadocLexer.WS);
    p := TJavadocParser.Create(tokens,nil);
    p.comment();
    p.free;
end;


end.