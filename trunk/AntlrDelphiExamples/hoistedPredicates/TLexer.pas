// $ANTLR 3.1.2 T.g 2009-07-23 21:41:48
unit TLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TTLexer = class(TAntlrLexer)
    public
      const WS=6;
      const INT=5;
      const ID=4;
      const EOF=-1;
      const T__7=7;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__7"
    procedure mT__7();
    // $ANTLR end T__7

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

constructor TTLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TTLexer.Destroy;
begin
 inherited;
end;

function TTLexer.GetGrammarFileName():String;
begin
  Result:='T.g';
end;

// $ANTLR start "T__7"
procedure TTLexer.mT__7();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__7;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:7:6: ( ''enum'' )
        // T.g:7:8: ''enum''
        begin
        match('enum');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__7// $ANTLR start "ID"
procedure TTLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:26:5: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )* )
        // T.g:26:9: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )*
        begin
        if ( ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // closureBlock:T.g:26:33: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''0'' .. ''9'' | ''_'' )*
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
        	    // T.g:
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
procedure TTLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:29:5: ( ( ''0'' .. ''9'' )+ )
        // T.g:29:7: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:T.g:29:7: ( ''0'' .. ''9'' )+
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
        	    // T.g:29:8: ''0'' .. ''9''
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
procedure TTLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:32:5: ( ( '' '' | ''\t'' | ''\r'' | ''\n'' )+ )
        // T.g:32:9: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        begin
        // positiveClosureBlock:T.g:32:9: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
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
        	    // T.g:
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
procedure TTLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:T.g:1:8: ( T__7 | ID | INT | WS )
        _alt[4]:=4;

        case input.LA(1) of
         $0065: 
            begin
            _LA[4,1] := input.LA(2);

            if ( ((_LA[4,1]=$006E)) ) then 
            begin
              _LA[4,5] := input.LA(3);

              if ( ((_LA[4,5]=$0075)) ) then 
              begin
                _LA[4,6] := input.LA(4);

                if ( ((_LA[4,6]=$006D)) ) then 
                begin
                  _LA[4,7] := input.LA(5);

                  if ( (((_LA[4,7]>=$0030) and 
                  ( _LA[4,7]<=$0039)) or ((_LA[4,7]>=$0041) and 
                  ( _LA[4,7]<=$005A)) or (_LA[4,7]=$005F) or ((_LA[4,7]>=$0061) and 
                  ( _LA[4,7]<=$007A))) ) then 
                  begin
                    _alt[4]:=2;
                  end
                  else begin
                      _alt[4]:=1;end;
                end
                else begin
                    _alt[4]:=2;end;
              end
              else begin
                  _alt[4]:=2;end;
            end
            else begin
                _alt[4]:=2;end;
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
         $005F , 
         $0061 , 
         $0062 , 
         $0063 , 
         $0064 , 
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
            _alt[4]:=2;
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
            _alt[4]:=3;
            end;
         $0009 , 
         $000A , 
         $000D , 
         $0020: 
            begin
            _alt[4]:=4;
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
                // T.g:1:10: T__7
                begin
                mT__7(); 


                end;
                end;
             2 :
                begin
                // T.g:1:15: ID
                begin
                mID(); 


                end;
                end;
             3 :
                begin
                // T.g:1:18: INT
                begin
                mINT(); 


                end;
                end;
             4 :
                begin
                // T.g:1:22: WS
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