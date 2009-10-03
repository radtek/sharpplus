// $ANTLR 3.1.2 Javadoc.g 2009-07-23 21:43:22
unit JavadocLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TJavadocLexer = class(TAntlrLexer)
    public
      const WS=7;
      const ID=4;
      const EOF=-1;
      const T__8=8;
      const TEND=6;
      const SIMPLE=5;

      public
        procedure ParseStatement();

    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__8"
    procedure mT__8();
    // $ANTLR end T__8

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "SIMPLE"
    procedure mSIMPLE();
    // $ANTLR end SIMPLE

    // $ANTLR start "TEND"
    procedure mTEND();
    // $ANTLR end TEND

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    procedure mTokens();override;

    protected
    end;

implementation
uses 
   SimpleParser, SimpleLexer,
 JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TJavadocLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TJavadocLexer.Destroy;
begin
 inherited;
end;

function TJavadocLexer.GetGrammarFileName():String;
begin
  Result:='Javadoc.g';
end;

// $ANTLR start "T__8"
procedure TJavadocLexer.mT__8();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__8;
        _channel := 0;
        // ruleBlockSingleAlt:Javadoc.g:30:6: ( ''@author'' )
        // Javadoc.g:30:8: ''@author''
        begin
        match('@author');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__8// $ANTLR start "ID"
procedure TJavadocLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:Javadoc.g:35:9: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' )+ )
        // Javadoc.g:35:11: ( ''a'' .. ''z'' | ''A'' .. ''Z'' )+
        begin
        // positiveClosureBlock:Javadoc.g:35:11: ( ''a'' .. ''z'' | ''A'' .. ''Z'' )+
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
        	    // Javadoc.g:
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
// $ANTLR end ID// $ANTLR start "SIMPLE"
procedure TJavadocLexer.mSIMPLE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := SIMPLE;
        _channel := 0;
        // ruleBlockSingleAlt:Javadoc.g:38:9: ( ''{'' )
        // Javadoc.g:38:13: ''{''
        begin
        match($007B);


                    Writeln('enter embedded Simple escape');
        	    ParseStatement();
        	    
        _channel:=HIDDEN;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end SIMPLE// $ANTLR start "TEND"
procedure TJavadocLexer.mTEND();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := TEND;
        _channel := 0;
        // ruleBlockSingleAlt:Javadoc.g:46:10: ( ''*/'' )
        // Javadoc.g:46:12: ''*/''
        begin
        match('*/');


        emit(EOF_TOKEN);
        Writeln('exit javadoc');

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end TEND// $ANTLR start "WS"
procedure TJavadocLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:Javadoc.g:50:9: ( ( '' '' | ''\t'' | ''\n'' | ''\r'' )+ )
        // Javadoc.g:50:11: ( '' '' | ''\t'' | ''\n'' | ''\r'' )+
        begin
        // positiveClosureBlock:Javadoc.g:50:11: ( '' '' | ''\t'' | ''\n'' | ''\r'' )+
        _cnt[2]:=0;
        repeat 
            _alt[2]:=2;
            //before decision
            _LA[2,0] := input.LA(1);

            if ( (((_LA[2,0]>=$0009) and 
            ( _LA[2,0]<=$000A)) or (_LA[2,0]=$000D) or (_LA[2,0]=$0020)) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            //after decision
            case (_alt[2]) of 
        	 1 :
        	    begin
        	    // Javadoc.g:
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
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TJavadocLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Javadoc.g:1:8: ( T__8 | ID | SIMPLE | TEND | WS )
        _alt[3]:=5;

        case input.LA(1) of
         $0040: 
            begin
            _alt[3]:=1;
            end;
         $0041 , 
         $0042 , 
         $0043 , 
         $0044 , 
         $0045 , 
         $0046 , 
         $0047 , 
         $0048 , 
         $0049 , 
         $004A , 
         $004B , 
         $004C , 
         $004D , 
         $004E , 
         $004F , 
         $0050 , 
         $0051 , 
         $0052 , 
         $0053 , 
         $0054 , 
         $0055 , 
         $0056 , 
         $0057 , 
         $0058 , 
         $0059 , 
         $005A , 
         $0061 , 
         $0062 , 
         $0063 , 
         $0064 , 
         $0065 , 
         $0066 , 
         $0067 , 
         $0068 , 
         $0069 , 
         $006A , 
         $006B , 
         $006C , 
         $006D , 
         $006E , 
         $006F , 
         $0070 , 
         $0071 , 
         $0072 , 
         $0073 , 
         $0074 , 
         $0075 , 
         $0076 , 
         $0077 , 
         $0078 , 
         $0079 , 
         $007A: 
            begin
            _alt[3]:=2;
            end;
         $007B: 
            begin
            _alt[3]:=3;
            end;
         $002A: 
            begin
            _alt[3]:=4;
            end;
         $0009 , 
         $000A , 
         $000D , 
         $0020: 
            begin
            _alt[3]:=5;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 3, 0, input);

        end;
        end;

        case (_alt[3]) of 
             1 :
                begin
                // Javadoc.g:1:10: T__8
                begin
                mT__8(); 


                end;
                end;
             2 :
                begin
                // Javadoc.g:1:15: ID
                begin
                mID(); 


                end;
                end;
             3 :
                begin
                // Javadoc.g:1:18: SIMPLE
                begin
                mSIMPLE(); 


                end;
                end;
             4 :
                begin
                // Javadoc.g:1:25: TEND
                begin
                mTEND(); 


                end;
                end;
             5 :
                begin
                // Javadoc.g:1:30: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens


 


procedure TJavadocLexer.ParseStatement();
var
  lex:ITokenSource;
  tokens:ITokenStream;
  p:TSimpleParser;
begin
    lex := TSimpleLexer.CreateWithStream(input,nil);
    tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
    //Writeln('tokens='+tokens.ToString);
    p := TSimpleParser.Create(tokens,nil);
    p.statement();
    p.free;
end;


end.