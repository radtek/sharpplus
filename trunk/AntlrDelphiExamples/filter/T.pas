// $ANTLR 3.2 10 03, 2009 16:05:49 T.g 2009-10-03 16:56:38
unit T;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TT = class(TAntlrLexer)
    public
      const WS=13;
      const STRING_LITERAL=9;
      const BR=5;
      const LINE_COMMENT=15;
      const IntegerTypeSuffix=11;
      const LETTER=6;
      const IDENTIFIER=7;
      const CHARACTER_LITERAL=8;
      const HEX_LITERAL=12;
      const P=4;
      const COMMENT=14;
      const EOF=-1;
      const HexDigit=10;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "P"
    procedure mP();
    // $ANTLR end P

    // $ANTLR start "BR"
    procedure mBR();
    // $ANTLR end BR

    // $ANTLR start "IDENTIFIER"
    procedure mIDENTIFIER();
    // $ANTLR end IDENTIFIER

    // $ANTLR start "LETTER"
    procedure mLETTER();
    // $ANTLR end LETTER

    // $ANTLR start "CHARACTER_LITERAL"
    procedure mCHARACTER_LITERAL();
    // $ANTLR end CHARACTER_LITERAL

    // $ANTLR start "STRING_LITERAL"
    procedure mSTRING_LITERAL();
    // $ANTLR end STRING_LITERAL

    // $ANTLR start "HEX_LITERAL"
    procedure mHEX_LITERAL();
    // $ANTLR end HEX_LITERAL

    // $ANTLR start "HexDigit"
    procedure mHexDigit();
    // $ANTLR end HexDigit

    // $ANTLR start "IntegerTypeSuffix"
    procedure mIntegerTypeSuffix();
    // $ANTLR end IntegerTypeSuffix

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    // $ANTLR start "COMMENT"
    procedure mCOMMENT();
    // $ANTLR end COMMENT

    // $ANTLR start "LINE_COMMENT"
    procedure mLINE_COMMENT();
    // $ANTLR end LINE_COMMENT

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

constructor TT.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TT.Destroy;
begin
 inherited;
end;

function TT.GetGrammarFileName():String;
begin
  Result:='T.g';
end;

// $ANTLR start "P"
procedure TT.mP();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := P;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:7:3: ( ''<p>'' )
        // T.g:7:5: ''<p>''
        begin
        match('<p>');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end P// $ANTLR start "BR"
procedure TT.mBR();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := BR;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:8:3: ( ''<br>'' )
        // T.g:8:5: ''<br>''
        begin
        match('<br>');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end BR// $ANTLR start "IDENTIFIER"
procedure TT.mIDENTIFIER();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := IDENTIFIER;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:10:2: ( LETTER ( LETTER | ''0'' .. ''9'' )* )
        // T.g:10:4: LETTER ( LETTER | ''0'' .. ''9'' )*
        begin
        mLETTER(); 

        // closureBlock:T.g:10:11: ( LETTER | ''0'' .. ''9'' )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=$0024) or ((_LA[1,0]>=$0030) and 
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
        	    if ( (input.LA(1)=$0024) or ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
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
// $ANTLR end IDENTIFIER// $ANTLR start "LETTER"
procedure TT.mLETTER();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:T.g:15:2: ( ''$'' | ''A'' .. ''Z'' | ''a'' .. ''z'' | ''_'' )
        // T.g:
        begin
        if ( (input.LA(1)=$0024) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
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
// $ANTLR end LETTER// $ANTLR start "CHARACTER_LITERAL"
procedure TT.mCHARACTER_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := CHARACTER_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:22:5: ( ''\'''' (~ ( ''\'''' | ''\\'' ) ) ''\'''' )
        // T.g:22:9: ''\'''' (~ ( ''\'''' | ''\\'' ) ) ''\''''
        begin
        match($0027);

        // blockSingleAlt:T.g:22:14: (~ ( ''\'''' | ''\\'' ) )
        // T.g:22:16: ~ ( ''\'''' | ''\\'' )
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

        match($0027);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end CHARACTER_LITERAL// $ANTLR start "STRING_LITERAL"
procedure TT.mSTRING_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := STRING_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:26:5: ( ''"'' (~ ( ''\\'' | ''"'' ) )* ''"'' )
        // T.g:26:8: ''"'' (~ ( ''\\'' | ''"'' ) )* ''"''
        begin
        match($0022);

        // closureBlock:T.g:26:12: (~ ( ''\\'' | ''"'' ) )*
        repeat 
            _alt[2]:=2;
            _LA[2,0] := input.LA(1);

            if ( (((_LA[2,0]>=$0000) and 
            ( _LA[2,0]<=$0021)) or ((_LA[2,0]>=$0023) and 
            ( _LA[2,0]<=$005B)) or ((_LA[2,0]>=$005D) and 
            ( _LA[2,0]<=$FFFF))) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            case (_alt[2]) of
        	 1 :
        	    begin
        	    // T.g:26:13: ~ ( ''\\'' | ''"'' )
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
// $ANTLR end STRING_LITERAL// $ANTLR start "HEX_LITERAL"
procedure TT.mHEX_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := HEX_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:29:13: ( ''0'' ( ''x'' | ''X'' ) ( HexDigit )+ ( IntegerTypeSuffix )? )
        // T.g:29:15: ''0'' ( ''x'' | ''X'' ) ( HexDigit )+ ( IntegerTypeSuffix )?
        begin
        match($0030);

        if ( (input.LA(1)=$0058) or (input.LA(1)=$0078) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // positiveClosureBlock:T.g:29:29: ( HexDigit )+
        _cnt[3]:=0;
        repeat 
            _alt[3]:=2;
            //before decision
            _LA[3,0] := input.LA(1);

            if ( (((_LA[3,0]>=$0030) and 
            ( _LA[3,0]<=$0039)) or ((_LA[3,0]>=$0041) and 
            ( _LA[3,0]<=$0046)) or ((_LA[3,0]>=$0061) and 
            ( _LA[3,0]<=$0066))) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            //after decision
            case (_alt[3]) of 
        	 1 :
        	    begin
        	    // T.g:29:29: HexDigit
        	    begin
        	    mHexDigit(); 


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

        // block:T.g:29:39: ( IntegerTypeSuffix )?
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=$004C) or (_LA[4,0]=$0055) or (_LA[4,0]=$006C) or (_LA[4,0]=$0075)) ) then 
        begin
          _alt[4]:=1;
        end
        ;
        case (_alt[4]) of
             1 :
                begin
                // T.g:29:39: IntegerTypeSuffix
                begin
                mIntegerTypeSuffix(); 


                end;
                end;

        end;


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end HEX_LITERAL// $ANTLR start "HexDigit"
procedure TT.mHexDigit();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:T.g:31:10: ( ( ''0'' .. ''9'' | ''a'' .. ''f'' | ''A'' .. ''F'' ) )
        // T.g:31:12: ( ''0'' .. ''9'' | ''a'' .. ''f'' | ''A'' .. ''F'' )
        begin
        if ( ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0041) and (input.LA(1)<=$0046)) or ((input.LA(1)>=$0061) and (input.LA(1)<=$0066)) ) then
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
// $ANTLR end HexDigit// $ANTLR start "IntegerTypeSuffix"
procedure TT.mIntegerTypeSuffix();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:T.g:35:2: ( ( ''u'' | ''U'' )? ( ''l'' | ''L'' ) | ( ''u'' | ''U'' ) ( ''l'' | ''L'' )? )
        _alt[7]:=2;
        _LA[7,0] := input.LA(1);

        if ( ((_LA[7,0]=$0055) or (_LA[7,0]=$0075)) ) then 
        begin
          _LA[7,1] := input.LA(2);

          if ( ((_LA[7,1]=$004C) or (_LA[7,1]=$006C)) ) then 
          begin
            _alt[7]:=1;
          end
          else begin
              _alt[7]:=2;end;
        end
        else if ( ((_LA[7,0]=$004C) or (_LA[7,0]=$006C)) ) then 
        begin
          _alt[7]:=1;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 7, 0, input);    

        end;
        case (_alt[7]) of 
             1 :
                begin
                // T.g:35:4: ( ''u'' | ''U'' )? ( ''l'' | ''L'' )
                begin
                // block:T.g:35:4: ( ''u'' | ''U'' )?
                _alt[5]:=2;
                _LA[5,0] := input.LA(1);

                if ( ((_LA[5,0]=$0055) or (_LA[5,0]=$0075)) ) then 
                begin
                  _alt[5]:=1;
                end
                ;
                case (_alt[5]) of
                     1 :
                        begin
                        // T.g:
                        begin
                        if ( (input.LA(1)=$0055) or (input.LA(1)=$0075) ) then
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

                if ( (input.LA(1)=$004C) or (input.LA(1)=$006C) ) then
                begin
                    input.consume();

                end
                else 
                begin
                    recover(EMismatchedSetException.CreateWithBitset(nil, input));
                    raise EMismatchedSetException.CreateWithBitset(nil, input);end;


                end;
                end;
             2 :
                begin
                // T.g:36:4: ( ''u'' | ''U'' ) ( ''l'' | ''L'' )?
                begin
                if ( (input.LA(1)=$0055) or (input.LA(1)=$0075) ) then
                begin
                    input.consume();

                end
                else 
                begin
                    recover(EMismatchedSetException.CreateWithBitset(nil, input));
                    raise EMismatchedSetException.CreateWithBitset(nil, input);end;

                // block:T.g:36:15: ( ''l'' | ''L'' )?
                _alt[6]:=2;
                _LA[6,0] := input.LA(1);

                if ( ((_LA[6,0]=$004C) or (_LA[6,0]=$006C)) ) then 
                begin
                  _alt[6]:=1;
                end
                ;
                case (_alt[6]) of
                     1 :
                        begin
                        // T.g:
                        begin
                        if ( (input.LA(1)=$004C) or (input.LA(1)=$006C) ) then
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


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end IntegerTypeSuffix// $ANTLR start "WS"
procedure TT.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:39:5: ( ( '' '' | ''\r'' | ''\t'' | ''\n'' ) )
        // T.g:39:8: ( '' '' | ''\r'' | ''\t'' | ''\n'' )
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
// $ANTLR end WS// $ANTLR start "COMMENT"
procedure TT.mCOMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:43:5: ( ''/*'' ( options {greedy=false; } : . )* ''*/'' )
        // T.g:43:9: ''/*'' ( options {greedy=false; } : . )* ''*/''
        begin
        match('/*');


        // closureBlock:T.g:43:14: ( options {greedy=false; } : . )*
        repeat 
            _alt[8]:=2;
            _LA[8,0] := input.LA(1);

            if ( ((_LA[8,0]=$002A)) ) then 
            begin
              _LA[8,1] := input.LA(2);

              if ( ((_LA[8,1]=$002F)) ) then 
              begin
                _alt[8]:=2;
              end
              else if ( (((_LA[8,1]>=$0000) and 
              ( _LA[8,1]<=$002E)) or ((_LA[8,1]>=$0030) and 
              ( _LA[8,1]<=$FFFF))) ) then 
              begin
                _alt[8]:=1;
              end

              ;

            end
            else if ( (((_LA[8,0]>=$0000) and 
            ( _LA[8,0]<=$0029)) or ((_LA[8,0]>=$002B) and 
            ( _LA[8,0]<=$FFFF))) ) then 
            begin
              _alt[8]:=1;
            end

            ;

            case (_alt[8]) of
        	 1 :
        	    begin
        	    // T.g:43:42: .
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
procedure TT.mLINE_COMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LINE_COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:T.g:47:5: ( ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n'' )
        // T.g:47:7: ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n''
        begin
        match('//');


        // closureBlock:T.g:47:12: (~ ( ''\n'' | ''\r'' ) )*
        repeat 
            _alt[9]:=2;
            _LA[9,0] := input.LA(1);

            if ( (((_LA[9,0]>=$0000) and 
            ( _LA[9,0]<=$0009)) or ((_LA[9,0]>=$000B) and 
            ( _LA[9,0]<=$000C)) or ((_LA[9,0]>=$000E) and 
            ( _LA[9,0]<=$FFFF))) ) then 
            begin
              _alt[9]:=1;
            end

            ;

            case (_alt[9]) of
        	 1 :
        	    begin
        	    // T.g:47:12: ~ ( ''\n'' | ''\r'' )
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

        // block:T.g:47:26: ( ''\r'' )?
        _alt[10]:=2;
        _LA[10,0] := input.LA(1);

        if ( ((_LA[10,0]=$000D)) ) then 
        begin
          _alt[10]:=1;
        end
        ;
        case (_alt[10]) of
             1 :
                begin
                // T.g:47:26: ''\r''
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
// $ANTLR end LINE_COMMENT// $ANTLR start "Tokens"
procedure TT.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:T.g:1:8: ( P | BR | IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | WS | COMMENT | LINE_COMMENT )
        _alt[11]:=9;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The T attribute is inherited via the parser, lexer, ...
         *}
        _alt[11] := getDfa11.predict(input);
        case (_alt[11]) of 
             1 :
                begin
                // T.g:1:10: P
                begin
                mP(); 


                end;
                end;
             2 :
                begin
                // T.g:1:12: BR
                begin
                mBR(); 


                end;
                end;
             3 :
                begin
                // T.g:1:15: IDENTIFIER
                begin
                mIDENTIFIER(); 


                end;
                end;
             4 :
                begin
                // T.g:1:26: CHARACTER_LITERAL
                begin
                mCHARACTER_LITERAL(); 


                end;
                end;
             5 :
                begin
                // T.g:1:44: STRING_LITERAL
                begin
                mSTRING_LITERAL(); 


                end;
                end;
             6 :
                begin
                // T.g:1:59: HEX_LITERAL
                begin
                mHEX_LITERAL(); 


                end;
                end;
             7 :
                begin
                // T.g:1:71: WS
                begin
                mWS(); 


                end;
                end;
             8 :
                begin
                // T.g:1:74: COMMENT
                begin
                mCOMMENT(); 


                end;
                end;
             9 :
                begin
                // T.g:1:82: LINE_COMMENT
                begin
                mLINE_COMMENT(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TT.getDfa11:IDFA;
begin
  if not Assigned(dfa11) then
    dfa11:=TAntlrDFA11.Create(self);
  Result:=dfa11;  
end;

constructor TT.TAntlrDFA11.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=11;
  feot:=unpackEncodedString('\14\uffff');
  feof:=unpackEncodedString('\14\uffff');

  FMinc:=unpackEncodedString('\1\11\1\142\5\uffff\1\52\4\uffff');

  FMaxc:=unpackEncodedString('\1\172\1\160\5\uffff\1\57\4\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\3\1\4\1\5\1\6\1\7\1\uffff\1\1'+
    '\1\2\1\10\1\11');
  fspecial:=unpackEncodedString('\14\uffff');
  AddTransition(unpackEncodedString('\2\6\2\uffff\1\6\22\uffff\1\6\1\uffff'+
  '\1\4\1\uffff\1\2\2\uffff\1\3\7\uffff\1\7\1\5\13\uffff\1\1\4\uffff\32\2'+
  '\4\uffff\1\2\1\uffff\32\2'));
  AddTransition(unpackEncodedString('\1\11\15\uffff\1\10'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\12\4\uffff\1\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TT.TAntlrDFA11.getDescription():string;
begin
  Result:='1:1: Tokens : ( P | BR | IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_L'+
  'ITERAL | WS | COMMENT | LINE_COMMENT );';
end;



 


end.