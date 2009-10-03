// $ANTLR 3.2 10 03, 2009 17:07:46 CommonLexer.g 2009-10-03 17:10:20
unit CommonLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TCommonLexer = class(TAntlrLexer)
    public
      const WS=12;
      const LINE_COMMENT=11;
      const T_STRING=9;
      const ESC=7;
      const CHAR=8;
      const INT=5;
      const FLOAT=6;
      const COMMENT=10;
      const ID=4;
      const EOF=-1;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "INT"
    procedure mINT();
    // $ANTLR end INT

    // $ANTLR start "FLOAT"
    procedure mFLOAT();
    // $ANTLR end FLOAT

    // $ANTLR start "CHAR"
    procedure mCHAR();
    // $ANTLR end CHAR

    // $ANTLR start "T_STRING"
    procedure mT_STRING();
    // $ANTLR end T_STRING

    // $ANTLR start "ESC"
    procedure mESC();
    // $ANTLR end ESC

    // $ANTLR start "COMMENT"
    procedure mCOMMENT();
    // $ANTLR end COMMENT

    // $ANTLR start "LINE_COMMENT"
    procedure mLINE_COMMENT();
    // $ANTLR end LINE_COMMENT

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    procedure mTokens();override;

    protected

     
          type TAntlrDFA11=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa11:IDFA;
        protected
          dfa11:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TCommonLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TCommonLexer.Destroy;
begin
 inherited;
end;

function TCommonLexer.GetGrammarFileName():String;
begin
  Result:='CommonLexer.g';
end;

// $ANTLR start "ID"
procedure TCommonLexer.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ID;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:10:4: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' | ''0'' .. ''9'' )* )
        // CommonLexer.g:10:6: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' | ''0'' .. ''9'' )*
        begin
        if ( ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // closureBlock:CommonLexer.g:10:30: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' | ''0'' .. ''9'' )*
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
        	    // CommonLexer.g:
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
procedure TCommonLexer.mINT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := INT;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:12:5: ( ( ''0'' .. ''9'' )+ )
        // CommonLexer.g:12:7: ( ''0'' .. ''9'' )+
        begin
        // positiveClosureBlock:CommonLexer.g:12:7: ( ''0'' .. ''9'' )+
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
        	    // CommonLexer.g:12:7: ''0'' .. ''9''
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
// $ANTLR end INT// $ANTLR start "FLOAT"
procedure TCommonLexer.mFLOAT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := FLOAT;
        _channel := 0;
        // ruleBlock:CommonLexer.g:14:6: ( INT ''.'' ( INT )? | ''.'' INT )
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( (((_LA[4,0]>=$0030) and 
        ( _LA[4,0]<=$0039))) ) then 
        begin
          _alt[4]:=1;
        end
        else if ( ((_LA[4,0]=$002E)) ) then 
        begin
          _alt[4]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 4, 0, input);    

        end;
        case (_alt[4]) of 
             1 :
                begin
                // CommonLexer.g:14:8: INT ''.'' ( INT )?
                begin
                mINT(); 

                match($002E);

                // block:CommonLexer.g:14:16: ( INT )?
                _alt[3]:=2;
                _LA[3,0] := input.LA(1);

                if ( (((_LA[3,0]>=$0030) and 
                ( _LA[3,0]<=$0039))) ) then 
                begin
                  _alt[3]:=1;
                end
                ;
                case (_alt[3]) of
                     1 :
                        begin
                        // CommonLexer.g:14:16: INT
                        begin
                        mINT(); 


                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // CommonLexer.g:15:4: ''.'' INT
                begin
                match($002E);

                mINT(); 


                end;
                end;

        end;
        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end FLOAT// $ANTLR start "CHAR"
procedure TCommonLexer.mCHAR();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := CHAR;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:18:5: ( ''\'''' ( ESC | ~ ( ''\'''' | ''\\'' ) ) ''\'''' )
        // CommonLexer.g:18:9: ''\'''' ( ESC | ~ ( ''\'''' | ''\\'' ) ) ''\''''
        begin
        match($0027);

        // block:CommonLexer.g:18:14: ( ESC | ~ ( ''\'''' | ''\\'' ) )
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=$005C)) ) then 
        begin
          _alt[5]:=1;
        end
        else if ( (((_LA[5,0]>=$0000) and 
        ( _LA[5,0]<=$0026)) or ((_LA[5,0]>=$0028) and 
        ( _LA[5,0]<=$005B)) or ((_LA[5,0]>=$005D) and 
        ( _LA[5,0]<=$FFFF))) ) then 
        begin
          _alt[5]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 5, 0, input);    

        end;
        case (_alt[5]) of
             1 :
                begin
                // CommonLexer.g:18:16: ESC
                begin
                mESC(); 


                end;
                end;
             2 :
                begin
                // CommonLexer.g:18:22: ~ ( ''\'''' | ''\\'' )
                begin
                if ( ((input.LA(1)>=$0000) and (input.LA(1)<=$0026)) or ((input.LA(1)>=$0028) and (input.LA(1)<=$005B)) or ((input.LA(1)>=$005D) and (input.LA(1)<=$FFFF)) ) then
                begin
                    input.consume();

                end
                else 
                begin
                    recover(EMismatchedSetException.CreateWithBitset(nil, input));
                    raise EMismatchedSetException.CreateWithBitset(nil, input);end;


                end;
                end;

        end;

        match($0027);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end CHAR// $ANTLR start "T_STRING"
procedure TCommonLexer.mT_STRING();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T_STRING;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:22:5: ( ''"'' ( ESC | ~ ( ''\\'' | ''"'' ) )* ''"'' )
        // CommonLexer.g:22:8: ''"'' ( ESC | ~ ( ''\\'' | ''"'' ) )* ''"''
        begin
        match($0022);

        // closureBlock:CommonLexer.g:22:12: ( ESC | ~ ( ''\\'' | ''"'' ) )*
        repeat 
            _alt[6]:=3;
            _LA[6,0] := input.LA(1);

            if ( ((_LA[6,0]=$005C)) ) then 
            begin
              _alt[6]:=1;
            end
            else if ( (((_LA[6,0]>=$0000) and 
            ( _LA[6,0]<=$0021)) or ((_LA[6,0]>=$0023) and 
            ( _LA[6,0]<=$005B)) or ((_LA[6,0]>=$005D) and 
            ( _LA[6,0]<=$FFFF))) ) then 
            begin
              _alt[6]:=2;
            end

            ;

            case (_alt[6]) of
        	 1 :
        	    begin
        	    // CommonLexer.g:22:14: ESC
        	    begin
        	    mESC(); 


        	    end;
        	    end;
        	 2 :
        	    begin
        	    // CommonLexer.g:22:20: ~ ( ''\\'' | ''"'' )
        	    begin
        	    if ( ((input.LA(1)>=$0000) and (input.LA(1)<=$0021)) or ((input.LA(1)>=$0023) and (input.LA(1)<=$005B)) or ((input.LA(1)>=$005D) and (input.LA(1)<=$FFFF)) ) then
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

        match($0022);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T_STRING// $ANTLR start "ESC"
procedure TCommonLexer.mESC();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:CommonLexer.g:26:5: ( ''\\'' ( ''b'' | ''t'' | ''n'' | ''f'' | ''r'' | ''\"'' | ''\'''' | ''\\'' ) )
        // CommonLexer.g:26:9: ''\\'' ( ''b'' | ''t'' | ''n'' | ''f'' | ''r'' | ''\"'' | ''\'''' | ''\\'' )
        begin
        match($005C);

        if ( (input.LA(1)=$0022) or (input.LA(1)=$0027) or (input.LA(1)=$005C) or (input.LA(1)=$0062) or (input.LA(1)=$0066) or (input.LA(1)=$006E) or (input.LA(1)=$0072) or (input.LA(1)=$0074) ) then
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
// $ANTLR end ESC// $ANTLR start "COMMENT"
procedure TCommonLexer.mCOMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:30:5: ( ''/*'' ( options {greedy=false; } : . )* ''*/'' )
        // CommonLexer.g:30:9: ''/*'' ( options {greedy=false; } : . )* ''*/''
        begin
        match('/*');


        // closureBlock:CommonLexer.g:30:14: ( options {greedy=false; } : . )*
        repeat 
            _alt[7]:=2;
            _LA[7,0] := input.LA(1);

            if ( ((_LA[7,0]=$002A)) ) then 
            begin
              _LA[7,1] := input.LA(2);

              if ( ((_LA[7,1]=$002F)) ) then 
              begin
                _alt[7]:=2;
              end
              else if ( (((_LA[7,1]>=$0000) and 
              ( _LA[7,1]<=$002E)) or ((_LA[7,1]>=$0030) and 
              ( _LA[7,1]<=$FFFF))) ) then 
              begin
                _alt[7]:=1;
              end

              ;

            end
            else if ( (((_LA[7,0]>=$0000) and 
            ( _LA[7,0]<=$0029)) or ((_LA[7,0]>=$002B) and 
            ( _LA[7,0]<=$FFFF))) ) then 
            begin
              _alt[7]:=1;
            end

            ;

            case (_alt[7]) of
        	 1 :
        	    begin
        	    // CommonLexer.g:30:42: .
        	    begin
        	    matchAny(); 


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match('*/');


        _channel:=HIDDEN;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end COMMENT// $ANTLR start "LINE_COMMENT"
procedure TCommonLexer.mLINE_COMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LINE_COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:34:5: ( ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n'' )
        // CommonLexer.g:34:7: ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n''
        begin
        match('//');


        // closureBlock:CommonLexer.g:34:12: (~ ( ''\n'' | ''\r'' ) )*
        repeat 
            _alt[8]:=2;
            _LA[8,0] := input.LA(1);

            if ( (((_LA[8,0]>=$0000) and 
            ( _LA[8,0]<=$0009)) or ((_LA[8,0]>=$000B) and 
            ( _LA[8,0]<=$000C)) or ((_LA[8,0]>=$000E) and 
            ( _LA[8,0]<=$FFFF))) ) then 
            begin
              _alt[8]:=1;
            end

            ;

            case (_alt[8]) of
        	 1 :
        	    begin
        	    // CommonLexer.g:34:12: ~ ( ''\n'' | ''\r'' )
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

        // block:CommonLexer.g:34:26: ( ''\r'' )?
        _alt[9]:=2;
        _LA[9,0] := input.LA(1);

        if ( ((_LA[9,0]=$000D)) ) then 
        begin
          _alt[9]:=1;
        end
        ;
        case (_alt[9]) of
             1 :
                begin
                // CommonLexer.g:34:26: ''\r''
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
// $ANTLR end LINE_COMMENT// $ANTLR start "WS"
procedure TCommonLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:CommonLexer.g:37:4: ( ( '' '' | ''\t'' | ''\r'' | ''\n'' )+ )
        // CommonLexer.g:37:6: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        begin
        // positiveClosureBlock:CommonLexer.g:37:6: ( '' '' | ''\t'' | ''\r'' | ''\n'' )+
        _cnt[10]:=0;
        repeat 
            _alt[10]:=2;
            //before decision
            _LA[10,0] := input.LA(1);

            if ( (((_LA[10,0]>=$0009) and 
            ( _LA[10,0]<=$000A)) or (_LA[10,0]=$000D) or (_LA[10,0]=$0020)) ) then 
            begin
              _alt[10]:=1;
            end

            ;

            //after decision
            case (_alt[10]) of 
        	 1 :
        	    begin
        	    // CommonLexer.g:
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
        	      if ( _cnt[10] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(10, input);
                end;
            end;
            _cnt[10]:=_cnt[10]+1;
        until (false);

        _channel:=HIDDEN;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TCommonLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:CommonLexer.g:1:8: ( ID | INT | FLOAT | CHAR | T_STRING | COMMENT | LINE_COMMENT | WS )
        _alt[11]:=8;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CommonLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[11] := getDfa11.predict(input);
        case (_alt[11]) of 
             1 :
                begin
                // CommonLexer.g:1:10: ID
                begin
                mID(); 


                end;
                end;
             2 :
                begin
                // CommonLexer.g:1:13: INT
                begin
                mINT(); 


                end;
                end;
             3 :
                begin
                // CommonLexer.g:1:17: FLOAT
                begin
                mFLOAT(); 


                end;
                end;
             4 :
                begin
                // CommonLexer.g:1:23: CHAR
                begin
                mCHAR(); 


                end;
                end;
             5 :
                begin
                // CommonLexer.g:1:28: T_STRING
                begin
                mT_STRING(); 


                end;
                end;
             6 :
                begin
                // CommonLexer.g:1:37: COMMENT
                begin
                mCOMMENT(); 


                end;
                end;
             7 :
                begin
                // CommonLexer.g:1:45: LINE_COMMENT
                begin
                mLINE_COMMENT(); 


                end;
                end;
             8 :
                begin
                // CommonLexer.g:1:58: WS
                begin
                mWS(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TCommonLexer.getDfa11:IDFA;
begin
  if not Assigned(dfa11) then
    dfa11:=TAntlrDFA11.Create(self);
  Result:=dfa11;  
end;

constructor TCommonLexer.TAntlrDFA11.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=11;
  feot:=unpackEncodedString('\2\uffff\1\10\10\uffff');
  feof:=unpackEncodedString('\13\uffff');

  FMinc:=unpackEncodedString('\1\11\1\uffff\1\56\3\uffff\1\52\4\uffff');

  FMaxc:=unpackEncodedString('\1\172\1\uffff\1\71\3\uffff\1\57\4\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\uffff\1\3\1\4\1\5\1\uffff'+
    '\1\10\1\2\1\6\1\7');
  fspecial:=unpackEncodedString('\13\uffff');
  AddTransition(unpackEncodedString('\2\7\2\uffff\1\7\22\uffff\1\7\1\uffff'+
  '\1\5\4\uffff\1\4\6\uffff\1\3\1\6\12\2\7\uffff\32\1\4\uffff\1\1\1\uffff'+
  '\32\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\3\1\uffff\12\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\11\4\uffff\1\12'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCommonLexer.TAntlrDFA11.getDescription():string;
begin
  Result:='1:1: Tokens : ( ID | INT | FLOAT | CHAR | T_STRING | COMMENT | LINE_COMMENT | WS'+
  ' );';
end;



 


end.