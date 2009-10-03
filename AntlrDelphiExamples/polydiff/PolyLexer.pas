// $ANTLR 3.1.2 Poly.g 2009-07-23 21:44:30
unit PolyLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TPolyLexer = class(TAntlrLexer)
    public
      const WS=7;
      const INT=5;
      const MULT=4;
      const ID=6;
      const EOF=-1;
      const T__9=9;
      const T__8=8;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__8"
    procedure mT__8();
    // $ANTLR end T__8

    // $ANTLR start "T__9"
    procedure mT__9();
    // $ANTLR end T__9

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
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TPolyLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TPolyLexer.Destroy;
begin
 inherited;
end;

function TPolyLexer.GetGrammarFileName():String;
begin
  Result:='Poly.g';
end;

// $ANTLR start "T__8"
procedure TPolyLexer.mT__8();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__8;
        _channel := 0;
        // ruleBlockSingleAlt:Poly.g:7:6: ( ''+'' )
        // Poly.g:7:8: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__8// $ANTLR start "T__9"
procedure TPolyLexer.mT__9();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__9;
        _channel := 0;
        // ruleBlockSingleAlt:Poly.g:8:6: ( ''^'' )
        // Poly.g:8:8: ''^''
        begin
        match($005E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__9// $ANTLR start "ID"
procedure TPolyLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:Poly.g:20:4: ( ( ''a'' .. ''z'' )+ )
        // Poly.g:20:6: ( ''a'' .. ''z'' )+
        begin
        // positiveClosureBlock:Poly.g:20:6: ( ''a'' .. ''z'' )+
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
        	    // Poly.g:20:6: ''a'' .. ''z''
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
procedure TPolyLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:Poly.g:22:5: ( ( ''0'' .. ''9'' )+ )
        // Poly.g:22:7: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:Poly.g:22:7: ( ''0'' .. ''9'' )+
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
        	    // Poly.g:22:7: ''0'' .. ''9''
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
procedure TPolyLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:Poly.g:24:4: ( ( '' '' | ''\t'' | ''\r'' | ''\n'' )+ )
        // Poly.g:24:6: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        begin
        // positiveClosureBlock:Poly.g:24:6: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
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
        	    // Poly.g:
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

        skip();

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TPolyLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Poly.g:1:8: ( T__8 | T__9 | ID | INT | WS )
        _alt[4]:=5;

        case input.LA(1) of
         $002B: 
            begin
            _alt[4]:=1;
            end;
         $005E: 
            begin
            _alt[4]:=2;
            end;
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
            _alt[4]:=3;
            end;
         $0030 , 
         $0031 , 
         $0032 , 
         $0033 , 
         $0034 , 
         $0035 , 
         $0036 , 
         $0037 , 
         $0038 , 
         $0039: 
            begin
            _alt[4]:=4;
            end;
         $0009 , 
         $000A , 
         $000D , 
         $0020: 
            begin
            _alt[4]:=5;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 4, 0, input);

        end;
        end;

        case (_alt[4]) of 
             1 :
                begin
                // Poly.g:1:10: T__8
                begin
                mT__8(); 


                end;
                end;
             2 :
                begin
                // Poly.g:1:15: T__9
                begin
                mT__9(); 


                end;
                end;
             3 :
                begin
                // Poly.g:1:20: ID
                begin
                mID(); 


                end;
                end;
             4 :
                begin
                // Poly.g:1:23: INT
                begin
                mINT(); 


                end;
                end;
             5 :
                begin
                // Poly.g:1:27: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens


 


end.