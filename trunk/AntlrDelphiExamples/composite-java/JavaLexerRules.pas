// $ANTLR 3.2 10 03, 2009 16:05:49 JavaLexerRules.g 2009-10-03 16:52:12
unit JavaLexerRules;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TJavaLexerRules = class(TAntlrLexer)
    public
      const HexLiteral=6;
      const LINE_COMMENT=23;
      const FloatTypeSuffix=10;
      const IntegerTypeSuffix=5;
      const OctalLiteral=8;
      const CharacterLiteral=13;
      const Exponent=9;
      const DecimalLiteral=7;
      const EOF=-1;
      const HexDigit=4;
      const Identifier=20;
      const StringLiteral=14;
      const WS=21;
      const ENUM=17;
      const UnicodeEscape=15;
      const FloatingPointLiteral=11;
      const JavaIDDigit=19;
      const COMMENT=22;
      const EscapeSequence=12;
      const OctalEscape=16;
      const Letter=18;

      protected const enumIsKeyword:Boolean = true;

    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "HexLiteral"
    procedure mHexLiteral();
    // $ANTLR end HexLiteral

    // $ANTLR start "DecimalLiteral"
    procedure mDecimalLiteral();
    // $ANTLR end DecimalLiteral

    // $ANTLR start "OctalLiteral"
    procedure mOctalLiteral();
    // $ANTLR end OctalLiteral

    // $ANTLR start "HexDigit"
    procedure mHexDigit();
    // $ANTLR end HexDigit

    // $ANTLR start "IntegerTypeSuffix"
    procedure mIntegerTypeSuffix();
    // $ANTLR end IntegerTypeSuffix

    // $ANTLR start "FloatingPointLiteral"
    procedure mFloatingPointLiteral();
    // $ANTLR end FloatingPointLiteral

    // $ANTLR start "Exponent"
    procedure mExponent();
    // $ANTLR end Exponent

    // $ANTLR start "FloatTypeSuffix"
    procedure mFloatTypeSuffix();
    // $ANTLR end FloatTypeSuffix

    // $ANTLR start "CharacterLiteral"
    procedure mCharacterLiteral();
    // $ANTLR end CharacterLiteral

    // $ANTLR start "StringLiteral"
    procedure mStringLiteral();
    // $ANTLR end StringLiteral

    // $ANTLR start "EscapeSequence"
    procedure mEscapeSequence();
    // $ANTLR end EscapeSequence

    // $ANTLR start "OctalEscape"
    procedure mOctalEscape();
    // $ANTLR end OctalEscape

    // $ANTLR start "UnicodeEscape"
    procedure mUnicodeEscape();
    // $ANTLR end UnicodeEscape

    // $ANTLR start "ENUM"
    procedure mENUM();
    // $ANTLR end ENUM

    // $ANTLR start "Identifier"
    procedure mIdentifier();
    // $ANTLR end Identifier

    // $ANTLR start "Letter"
    procedure mLetter();
    // $ANTLR end Letter

    // $ANTLR start "JavaIDDigit"
    procedure mJavaIDDigit();
    // $ANTLR end JavaIDDigit

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

     
          type TAntlrDFA19=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa19:IDFA;
        protected
          dfa19:IDFA;

     
          type TAntlrDFA30=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa30:IDFA;
        protected
          dfa30:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TJavaLexerRules.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TJavaLexerRules.Destroy;
begin
 inherited;
end;

function TJavaLexerRules.GetGrammarFileName():String;
begin
  Result:='JavaLexerRules.g';
end;

// $ANTLR start "HexLiteral"
procedure TJavaLexerRules.mHexLiteral();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := HexLiteral;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:12:12: ( ''0'' ( ''x'' | ''X'' ) ( HexDigit )+ ( IntegerTypeSuffix )? )
        // JavaLexerRules.g:12:14: ''0'' ( ''x'' | ''X'' ) ( HexDigit )+ ( IntegerTypeSuffix )?
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

        // positiveClosureBlock:JavaLexerRules.g:12:28: ( HexDigit )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=$0030) and 
            ( _LA[1,0]<=$0039)) or ((_LA[1,0]>=$0041) and 
            ( _LA[1,0]<=$0046)) or ((_LA[1,0]>=$0061) and 
            ( _LA[1,0]<=$0066))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // JavaLexerRules.g:12:28: HexDigit
        	    begin
        	    mHexDigit(); 


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

        // block:JavaLexerRules.g:12:38: ( IntegerTypeSuffix )?
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=$004C) or (_LA[2,0]=$006C)) ) then 
        begin
          _alt[2]:=1;
        end
        ;
        case (_alt[2]) of
             1 :
                begin
                // JavaLexerRules.g:12:38: IntegerTypeSuffix
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
// $ANTLR end HexLiteral// $ANTLR start "DecimalLiteral"
procedure TJavaLexerRules.mDecimalLiteral();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := DecimalLiteral;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:14:16: ( ( ''0'' | ''1'' .. ''9'' ( ''0'' .. ''9'' )* ) ( IntegerTypeSuffix )? )
        // JavaLexerRules.g:14:18: ( ''0'' | ''1'' .. ''9'' ( ''0'' .. ''9'' )* ) ( IntegerTypeSuffix )?
        begin
        // block:JavaLexerRules.g:14:18: ( ''0'' | ''1'' .. ''9'' ( ''0'' .. ''9'' )* )
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=$0030)) ) then 
        begin
          _alt[4]:=1;
        end
        else if ( (((_LA[4,0]>=$0031) and 
        ( _LA[4,0]<=$0039))) ) then 
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
                // JavaLexerRules.g:14:19: ''0''
                begin
                match($0030);


                end;
                end;
             2 :
                begin
                // JavaLexerRules.g:14:25: ''1'' .. ''9'' ( ''0'' .. ''9'' )*
                begin
                matchRange($0031,$0039); 

                // closureBlock:JavaLexerRules.g:14:34: ( ''0'' .. ''9'' )*
                repeat 
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
                	    // JavaLexerRules.g:14:34: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);


                end;
                end;

        end;

        // block:JavaLexerRules.g:14:45: ( IntegerTypeSuffix )?
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=$004C) or (_LA[5,0]=$006C)) ) then 
        begin
          _alt[5]:=1;
        end
        ;
        case (_alt[5]) of
             1 :
                begin
                // JavaLexerRules.g:14:45: IntegerTypeSuffix
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
// $ANTLR end DecimalLiteral// $ANTLR start "OctalLiteral"
procedure TJavaLexerRules.mOctalLiteral();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := OctalLiteral;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:16:14: ( ''0'' ( ''0'' .. ''7'' )+ ( IntegerTypeSuffix )? )
        // JavaLexerRules.g:16:16: ''0'' ( ''0'' .. ''7'' )+ ( IntegerTypeSuffix )?
        begin
        match($0030);

        // positiveClosureBlock:JavaLexerRules.g:16:20: ( ''0'' .. ''7'' )+
        _cnt[6]:=0;
        repeat 
            _alt[6]:=2;
            //before decision
            _LA[6,0] := input.LA(1);

            if ( (((_LA[6,0]>=$0030) and 
            ( _LA[6,0]<=$0037))) ) then 
            begin
              _alt[6]:=1;
            end

            ;

            //after decision
            case (_alt[6]) of 
        	 1 :
        	    begin
        	    // JavaLexerRules.g:16:21: ''0'' .. ''7''
        	    begin
        	    matchRange($0030,$0037); 


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[6] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(6, input);
                end;
            end;
            _cnt[6]:=_cnt[6]+1;
        until (false);

        // block:JavaLexerRules.g:16:32: ( IntegerTypeSuffix )?
        _alt[7]:=2;
        _LA[7,0] := input.LA(1);

        if ( ((_LA[7,0]=$004C) or (_LA[7,0]=$006C)) ) then 
        begin
          _alt[7]:=1;
        end
        ;
        case (_alt[7]) of
             1 :
                begin
                // JavaLexerRules.g:16:32: IntegerTypeSuffix
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
// $ANTLR end OctalLiteral// $ANTLR start "HexDigit"
procedure TJavaLexerRules.mHexDigit();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:19:10: ( ( ''0'' .. ''9'' | ''a'' .. ''f'' | ''A'' .. ''F'' ) )
        // JavaLexerRules.g:19:12: ( ''0'' .. ''9'' | ''a'' .. ''f'' | ''A'' .. ''F'' )
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
procedure TJavaLexerRules.mIntegerTypeSuffix();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:22:19: ( ( ''l'' | ''L'' ) )
        // JavaLexerRules.g:22:21: ( ''l'' | ''L'' )
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

    finally 
    end;
end;
// $ANTLR end IntegerTypeSuffix// $ANTLR start "FloatingPointLiteral"
procedure TJavaLexerRules.mFloatingPointLiteral();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := FloatingPointLiteral;
        _channel := 0;
        // ruleBlock:JavaLexerRules.g:25:5: ( ( ''0'' .. ''9'' )+ ''.'' ( ''0'' .. ''9'' )* ( Exponent )? ( FloatTypeSuffix )? | ''.'' ( ''0'' .. ''9'' )+ ( Exponent )? ( FloatTypeSuffix )? | ( ''0'' .. ''9'' )+ Exponent ( FloatTypeSuffix )? | ( ''0'' .. ''9'' )+ ( Exponent )? FloatTypeSuffix )
        _alt[19]:=4;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The JavaLexerRules attribute is inherited via the parser, lexer, ...
         *}
        _alt[19] := getDfa19.predict(input);
        case (_alt[19]) of 
             1 :
                begin
                // JavaLexerRules.g:25:9: ( ''0'' .. ''9'' )+ ''.'' ( ''0'' .. ''9'' )* ( Exponent )? ( FloatTypeSuffix )?
                begin
                // positiveClosureBlock:JavaLexerRules.g:25:9: ( ''0'' .. ''9'' )+
                _cnt[8]:=0;
                repeat 
                    _alt[8]:=2;
                    //before decision
                    _LA[8,0] := input.LA(1);

                    if ( (((_LA[8,0]>=$0030) and 
                    ( _LA[8,0]<=$0039))) ) then 
                    begin
                      _alt[8]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[8]) of 
                	 1 :
                	    begin
                	    // JavaLexerRules.g:25:10: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[8] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(8, input);
                        end;
                    end;
                    _cnt[8]:=_cnt[8]+1;
                until (false);

                match($002E);

                // closureBlock:JavaLexerRules.g:25:25: ( ''0'' .. ''9'' )*
                repeat 
                    _alt[9]:=2;
                    _LA[9,0] := input.LA(1);

                    if ( (((_LA[9,0]>=$0030) and 
                    ( _LA[9,0]<=$0039))) ) then 
                    begin
                      _alt[9]:=1;
                    end

                    ;

                    case (_alt[9]) of
                	 1 :
                	    begin
                	    // JavaLexerRules.g:25:26: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);

                // block:JavaLexerRules.g:25:37: ( Exponent )?
                _alt[10]:=2;
                _LA[10,0] := input.LA(1);

                if ( ((_LA[10,0]=$0045) or (_LA[10,0]=$0065)) ) then 
                begin
                  _alt[10]:=1;
                end
                ;
                case (_alt[10]) of
                     1 :
                        begin
                        // JavaLexerRules.g:25:37: Exponent
                        begin
                        mExponent(); 


                        end;
                        end;

                end;

                // block:JavaLexerRules.g:25:47: ( FloatTypeSuffix )?
                _alt[11]:=2;
                _LA[11,0] := input.LA(1);

                if ( ((_LA[11,0]=$0044) or (_LA[11,0]=$0046) or (_LA[11,0]=$0064) or (_LA[11,0]=$0066)) ) then 
                begin
                  _alt[11]:=1;
                end
                ;
                case (_alt[11]) of
                     1 :
                        begin
                        // JavaLexerRules.g:25:47: FloatTypeSuffix
                        begin
                        mFloatTypeSuffix(); 


                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // JavaLexerRules.g:26:9: ''.'' ( ''0'' .. ''9'' )+ ( Exponent )? ( FloatTypeSuffix )?
                begin
                match($002E);

                // positiveClosureBlock:JavaLexerRules.g:26:13: ( ''0'' .. ''9'' )+
                _cnt[12]:=0;
                repeat 
                    _alt[12]:=2;
                    //before decision
                    _LA[12,0] := input.LA(1);

                    if ( (((_LA[12,0]>=$0030) and 
                    ( _LA[12,0]<=$0039))) ) then 
                    begin
                      _alt[12]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[12]) of 
                	 1 :
                	    begin
                	    // JavaLexerRules.g:26:14: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[12] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(12, input);
                        end;
                    end;
                    _cnt[12]:=_cnt[12]+1;
                until (false);

                // block:JavaLexerRules.g:26:25: ( Exponent )?
                _alt[13]:=2;
                _LA[13,0] := input.LA(1);

                if ( ((_LA[13,0]=$0045) or (_LA[13,0]=$0065)) ) then 
                begin
                  _alt[13]:=1;
                end
                ;
                case (_alt[13]) of
                     1 :
                        begin
                        // JavaLexerRules.g:26:25: Exponent
                        begin
                        mExponent(); 


                        end;
                        end;

                end;

                // block:JavaLexerRules.g:26:35: ( FloatTypeSuffix )?
                _alt[14]:=2;
                _LA[14,0] := input.LA(1);

                if ( ((_LA[14,0]=$0044) or (_LA[14,0]=$0046) or (_LA[14,0]=$0064) or (_LA[14,0]=$0066)) ) then 
                begin
                  _alt[14]:=1;
                end
                ;
                case (_alt[14]) of
                     1 :
                        begin
                        // JavaLexerRules.g:26:35: FloatTypeSuffix
                        begin
                        mFloatTypeSuffix(); 


                        end;
                        end;

                end;


                end;
                end;
             3 :
                begin
                // JavaLexerRules.g:27:9: ( ''0'' .. ''9'' )+ Exponent ( FloatTypeSuffix )?
                begin
                // positiveClosureBlock:JavaLexerRules.g:27:9: ( ''0'' .. ''9'' )+
                _cnt[15]:=0;
                repeat 
                    _alt[15]:=2;
                    //before decision
                    _LA[15,0] := input.LA(1);

                    if ( (((_LA[15,0]>=$0030) and 
                    ( _LA[15,0]<=$0039))) ) then 
                    begin
                      _alt[15]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[15]) of 
                	 1 :
                	    begin
                	    // JavaLexerRules.g:27:10: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[15] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(15, input);
                        end;
                    end;
                    _cnt[15]:=_cnt[15]+1;
                until (false);

                mExponent(); 

                // block:JavaLexerRules.g:27:30: ( FloatTypeSuffix )?
                _alt[16]:=2;
                _LA[16,0] := input.LA(1);

                if ( ((_LA[16,0]=$0044) or (_LA[16,0]=$0046) or (_LA[16,0]=$0064) or (_LA[16,0]=$0066)) ) then 
                begin
                  _alt[16]:=1;
                end
                ;
                case (_alt[16]) of
                     1 :
                        begin
                        // JavaLexerRules.g:27:30: FloatTypeSuffix
                        begin
                        mFloatTypeSuffix(); 


                        end;
                        end;

                end;


                end;
                end;
             4 :
                begin
                // JavaLexerRules.g:28:9: ( ''0'' .. ''9'' )+ ( Exponent )? FloatTypeSuffix
                begin
                // positiveClosureBlock:JavaLexerRules.g:28:9: ( ''0'' .. ''9'' )+
                _cnt[17]:=0;
                repeat 
                    _alt[17]:=2;
                    //before decision
                    _LA[17,0] := input.LA(1);

                    if ( (((_LA[17,0]>=$0030) and 
                    ( _LA[17,0]<=$0039))) ) then 
                    begin
                      _alt[17]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[17]) of 
                	 1 :
                	    begin
                	    // JavaLexerRules.g:28:10: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[17] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(17, input);
                        end;
                    end;
                    _cnt[17]:=_cnt[17]+1;
                until (false);

                // block:JavaLexerRules.g:28:21: ( Exponent )?
                _alt[18]:=2;
                _LA[18,0] := input.LA(1);

                if ( ((_LA[18,0]=$0045) or (_LA[18,0]=$0065)) ) then 
                begin
                  _alt[18]:=1;
                end
                ;
                case (_alt[18]) of
                     1 :
                        begin
                        // JavaLexerRules.g:28:21: Exponent
                        begin
                        mExponent(); 


                        end;
                        end;

                end;

                mFloatTypeSuffix(); 


                end;
                end;

        end;
        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end FloatingPointLiteral// $ANTLR start "Exponent"
procedure TJavaLexerRules.mExponent();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:32:10: ( ( ''e'' | ''E'' ) ( ''+'' | ''-'' )? ( ''0'' .. ''9'' )+ )
        // JavaLexerRules.g:32:12: ( ''e'' | ''E'' ) ( ''+'' | ''-'' )? ( ''0'' .. ''9'' )+
        begin
        if ( (input.LA(1)=$0045) or (input.LA(1)=$0065) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // block:JavaLexerRules.g:32:22: ( ''+'' | ''-'' )?
        _alt[20]:=2;
        _LA[20,0] := input.LA(1);

        if ( ((_LA[20,0]=$002B) or (_LA[20,0]=$002D)) ) then 
        begin
          _alt[20]:=1;
        end
        ;
        case (_alt[20]) of
             1 :
                begin
                // JavaLexerRules.g:
                begin
                if ( (input.LA(1)=$002B) or (input.LA(1)=$002D) ) then
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

        // positiveClosureBlock:JavaLexerRules.g:32:33: ( ''0'' .. ''9'' )+
        _cnt[21]:=0;
        repeat 
            _alt[21]:=2;
            //before decision
            _LA[21,0] := input.LA(1);

            if ( (((_LA[21,0]>=$0030) and 
            ( _LA[21,0]<=$0039))) ) then 
            begin
              _alt[21]:=1;
            end

            ;

            //after decision
            case (_alt[21]) of 
        	 1 :
        	    begin
        	    // JavaLexerRules.g:32:34: ''0'' .. ''9''
        	    begin
        	    matchRange($0030,$0039); 


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[21] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(21, input);
                end;
            end;
            _cnt[21]:=_cnt[21]+1;
        until (false);


        end;

    finally 
    end;
end;
// $ANTLR end Exponent// $ANTLR start "FloatTypeSuffix"
procedure TJavaLexerRules.mFloatTypeSuffix();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:35:17: ( ( ''f'' | ''F'' | ''d'' | ''D'' ) )
        // JavaLexerRules.g:35:19: ( ''f'' | ''F'' | ''d'' | ''D'' )
        begin
        if ( (input.LA(1)=$0044) or (input.LA(1)=$0046) or (input.LA(1)=$0064) or (input.LA(1)=$0066) ) then
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
// $ANTLR end FloatTypeSuffix// $ANTLR start "CharacterLiteral"
procedure TJavaLexerRules.mCharacterLiteral();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := CharacterLiteral;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:38:5: ( ''\'''' ( EscapeSequence | ~ ( ''\'''' | ''\\'' ) ) ''\'''' )
        // JavaLexerRules.g:38:9: ''\'''' ( EscapeSequence | ~ ( ''\'''' | ''\\'' ) ) ''\''''
        begin
        match($0027);

        // block:JavaLexerRules.g:38:14: ( EscapeSequence | ~ ( ''\'''' | ''\\'' ) )
        _alt[22]:=2;
        _LA[22,0] := input.LA(1);

        if ( ((_LA[22,0]=$005C)) ) then 
        begin
          _alt[22]:=1;
        end
        else if ( (((_LA[22,0]>=$0000) and 
        ( _LA[22,0]<=$0026)) or ((_LA[22,0]>=$0028) and 
        ( _LA[22,0]<=$005B)) or ((_LA[22,0]>=$005D) and 
        ( _LA[22,0]<=$FFFF))) ) then 
        begin
          _alt[22]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 22, 0, input);    

        end;
        case (_alt[22]) of
             1 :
                begin
                // JavaLexerRules.g:38:16: EscapeSequence
                begin
                mEscapeSequence(); 


                end;
                end;
             2 :
                begin
                // JavaLexerRules.g:38:33: ~ ( ''\'''' | ''\\'' )
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
// $ANTLR end CharacterLiteral// $ANTLR start "StringLiteral"
procedure TJavaLexerRules.mStringLiteral();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := StringLiteral;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:42:5: ( ''"'' ( EscapeSequence | ~ ( ''\\'' | ''"'' ) )* ''"'' )
        // JavaLexerRules.g:42:8: ''"'' ( EscapeSequence | ~ ( ''\\'' | ''"'' ) )* ''"''
        begin
        match($0022);

        // closureBlock:JavaLexerRules.g:42:12: ( EscapeSequence | ~ ( ''\\'' | ''"'' ) )*
        repeat 
            _alt[23]:=3;
            _LA[23,0] := input.LA(1);

            if ( ((_LA[23,0]=$005C)) ) then 
            begin
              _alt[23]:=1;
            end
            else if ( (((_LA[23,0]>=$0000) and 
            ( _LA[23,0]<=$0021)) or ((_LA[23,0]>=$0023) and 
            ( _LA[23,0]<=$005B)) or ((_LA[23,0]>=$005D) and 
            ( _LA[23,0]<=$FFFF))) ) then 
            begin
              _alt[23]:=2;
            end

            ;

            case (_alt[23]) of
        	 1 :
        	    begin
        	    // JavaLexerRules.g:42:14: EscapeSequence
        	    begin
        	    mEscapeSequence(); 


        	    end;
        	    end;
        	 2 :
        	    begin
        	    // JavaLexerRules.g:42:31: ~ ( ''\\'' | ''"'' )
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
// $ANTLR end StringLiteral// $ANTLR start "EscapeSequence"
procedure TJavaLexerRules.mEscapeSequence();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:JavaLexerRules.g:47:5: ( ''\\'' ( ''b'' | ''t'' | ''n'' | ''f'' | ''r'' | ''\"'' | ''\'''' | ''\\'' ) | UnicodeEscape | OctalEscape )
        _alt[24]:=3;
        _LA[24,0] := input.LA(1);

        if ( ((_LA[24,0]=$005C)) ) then 
        begin

          case input.LA(2) of
           $0022 , 
           $0027 , 
           $005C , 
           $0062 , 
           $0066 , 
           $006E , 
           $0072 , 
           $0074: 
              begin
              _alt[24]:=1;
              end;
           $0075: 
              begin
              _alt[24]:=2;
              end;
           $0030 , 
           $0031 , 
           $0032 , 
           $0033 , 
           $0034 , 
           $0035 , 
           $0036 , 
           $0037: 
              begin
              _alt[24]:=3;
              end;
          else
          begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 24, 1, input);

          end;
          end;

        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 24, 0, input);    

        end;
        case (_alt[24]) of 
             1 :
                begin
                // JavaLexerRules.g:47:9: ''\\'' ( ''b'' | ''t'' | ''n'' | ''f'' | ''r'' | ''\"'' | ''\'''' | ''\\'' )
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
                end;
             2 :
                begin
                // JavaLexerRules.g:48:9: UnicodeEscape
                begin
                mUnicodeEscape(); 


                end;
                end;
             3 :
                begin
                // JavaLexerRules.g:49:9: OctalEscape
                begin
                mOctalEscape(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end EscapeSequence// $ANTLR start "OctalEscape"
procedure TJavaLexerRules.mOctalEscape();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:JavaLexerRules.g:54:5: ( ''\\'' ( ''0'' .. ''3'' ) ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' ) | ''\\'' ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' ) | ''\\'' ( ''0'' .. ''7'' ) )
        _alt[25]:=3;
        _LA[25,0] := input.LA(1);

        if ( ((_LA[25,0]=$005C)) ) then 
        begin
          _LA[25,1] := input.LA(2);

          if ( (((_LA[25,1]>=$0030) and 
          ( _LA[25,1]<=$0033))) ) then 
          begin
            _LA[25,2] := input.LA(3);

            if ( (((_LA[25,2]>=$0030) and 
            ( _LA[25,2]<=$0037))) ) then 
            begin
              _LA[25,4] := input.LA(4);

              if ( (((_LA[25,4]>=$0030) and 
              ( _LA[25,4]<=$0037))) ) then 
              begin
                _alt[25]:=1;
              end
              else begin
                  _alt[25]:=2;end;
            end
            else begin
                _alt[25]:=3;end;
          end
          else if ( (((_LA[25,1]>=$0034) and 
          ( _LA[25,1]<=$0037))) ) then 
          begin
            _LA[25,3] := input.LA(3);

            if ( (((_LA[25,3]>=$0030) and 
            ( _LA[25,3]<=$0037))) ) then 
            begin
              _alt[25]:=2;
            end
            else begin
                _alt[25]:=3;end;
          end
          else begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 25, 1, input);    

          end;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 25, 0, input);    

        end;
        case (_alt[25]) of 
             1 :
                begin
                // JavaLexerRules.g:54:9: ''\\'' ( ''0'' .. ''3'' ) ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' )
                begin
                match($005C);

                // blockSingleAlt:JavaLexerRules.g:54:14: ( ''0'' .. ''3'' )
                // JavaLexerRules.g:54:15: ''0'' .. ''3''
                begin
                matchRange($0030,$0033); 


                end;

                // blockSingleAlt:JavaLexerRules.g:54:25: ( ''0'' .. ''7'' )
                // JavaLexerRules.g:54:26: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;

                // blockSingleAlt:JavaLexerRules.g:54:36: ( ''0'' .. ''7'' )
                // JavaLexerRules.g:54:37: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;


                end;
                end;
             2 :
                begin
                // JavaLexerRules.g:55:9: ''\\'' ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' )
                begin
                match($005C);

                // blockSingleAlt:JavaLexerRules.g:55:14: ( ''0'' .. ''7'' )
                // JavaLexerRules.g:55:15: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;

                // blockSingleAlt:JavaLexerRules.g:55:25: ( ''0'' .. ''7'' )
                // JavaLexerRules.g:55:26: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;


                end;
                end;
             3 :
                begin
                // JavaLexerRules.g:56:9: ''\\'' ( ''0'' .. ''7'' )
                begin
                match($005C);

                // blockSingleAlt:JavaLexerRules.g:56:14: ( ''0'' .. ''7'' )
                // JavaLexerRules.g:56:15: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end OctalEscape// $ANTLR start "UnicodeEscape"
procedure TJavaLexerRules.mUnicodeEscape();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:61:5: ( ''\\'' ''u'' HexDigit HexDigit HexDigit HexDigit )
        // JavaLexerRules.g:61:9: ''\\'' ''u'' HexDigit HexDigit HexDigit HexDigit
        begin
        match($005C);

        match($0075);

        mHexDigit(); 

        mHexDigit(); 

        mHexDigit(); 

        mHexDigit(); 


        end;

    finally 
    end;
end;
// $ANTLR end UnicodeEscape// $ANTLR start "ENUM"
procedure TJavaLexerRules.mENUM();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := ENUM;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:64:5: ( ''enum'' )
        // JavaLexerRules.g:64:7: ''enum''
        begin
        match('enum');


        if ( not enumIsKeyword ) then _type:=Identifier;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end ENUM// $ANTLR start "Identifier"
procedure TJavaLexerRules.mIdentifier();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := Identifier;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:68:5: ( Letter ( Letter | JavaIDDigit )* )
        // JavaLexerRules.g:68:9: Letter ( Letter | JavaIDDigit )*
        begin
        mLetter(); 

        // closureBlock:JavaLexerRules.g:68:16: ( Letter | JavaIDDigit )*
        repeat 
            _alt[26]:=2;
            _LA[26,0] := input.LA(1);

            if ( ((_LA[26,0]=$0024) or ((_LA[26,0]>=$0030) and 
            ( _LA[26,0]<=$0039)) or ((_LA[26,0]>=$0041) and 
            ( _LA[26,0]<=$005A)) or (_LA[26,0]=$005F) or ((_LA[26,0]>=$0061) and 
            ( _LA[26,0]<=$007A)) or ((_LA[26,0]>=$00C0) and 
            ( _LA[26,0]<=$00D6)) or ((_LA[26,0]>=$00D8) and 
            ( _LA[26,0]<=$00F6)) or ((_LA[26,0]>=$00F8) and 
            ( _LA[26,0]<=$1FFF)) or ((_LA[26,0]>=$3040) and 
            ( _LA[26,0]<=$318F)) or ((_LA[26,0]>=$3300) and 
            ( _LA[26,0]<=$337F)) or ((_LA[26,0]>=$3400) and 
            ( _LA[26,0]<=$3D2D)) or ((_LA[26,0]>=$4E00) and 
            ( _LA[26,0]<=$9FFF)) or ((_LA[26,0]>=$F900) and 
            ( _LA[26,0]<=$FAFF))) ) then 
            begin
              _alt[26]:=1;
            end

            ;

            case (_alt[26]) of
        	 1 :
        	    begin
        	    // JavaLexerRules.g:
        	    begin
        	    if ( (input.LA(1)=$0024) or ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) or ((input.LA(1)>=$00C0) and (input.LA(1)<=$00D6)) or ((input.LA(1)>=$00D8) and (input.LA(1)<=$00F6)) or ((input.LA(1)>=$00F8) and (input.LA(1)<=$1FFF)) or ((input.LA(1)>=$3040) and (input.LA(1)<=$318F)) or ((input.LA(1)>=$3300) and (input.LA(1)<=$337F)) or ((input.LA(1)>=$3400) and (input.LA(1)<=$3D2D)) or ((input.LA(1)>=$4E00) and (input.LA(1)<=$9FFF)) or ((input.LA(1)>=$F900) and (input.LA(1)<=$FAFF)) ) then
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
// $ANTLR end Identifier// $ANTLR start "Letter"
procedure TJavaLexerRules.mLetter();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:76:5: ( ''\u0024'' | ''\u0041'' .. ''\u005a'' | ''\u005f'' | ''\u0061'' .. ''\u007a'' | ''\u00c0'' .. ''\u00d6'' | ''\u00d8'' .. ''\u00f6'' | ''\u00f8'' .. ''\u00ff'' | ''\u0100'' .. ''\u1fff'' | ''\u3040'' .. ''\u318f'' | ''\u3300'' .. ''\u337f'' | ''\u3400'' .. ''\u3d2d'' | ''\u4e00'' .. ''\u9fff'' | ''\uf900'' .. ''\ufaff'' )
        // JavaLexerRules.g:
        begin
        if ( (input.LA(1)=$0024) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) or ((input.LA(1)>=$00C0) and (input.LA(1)<=$00D6)) or ((input.LA(1)>=$00D8) and (input.LA(1)<=$00F6)) or ((input.LA(1)>=$00F8) and (input.LA(1)<=$1FFF)) or ((input.LA(1)>=$3040) and (input.LA(1)<=$318F)) or ((input.LA(1)>=$3300) and (input.LA(1)<=$337F)) or ((input.LA(1)>=$3400) and (input.LA(1)<=$3D2D)) or ((input.LA(1)>=$4E00) and (input.LA(1)<=$9FFF)) or ((input.LA(1)>=$F900) and (input.LA(1)<=$FAFF)) ) then
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
// $ANTLR end Letter// $ANTLR start "JavaIDDigit"
procedure TJavaLexerRules.mJavaIDDigit();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:JavaLexerRules.g:93:5: ( ''\u0030'' .. ''\u0039'' | ''\u0660'' .. ''\u0669'' | ''\u06f0'' .. ''\u06f9'' | ''\u0966'' .. ''\u096f'' | ''\u09e6'' .. ''\u09ef'' | ''\u0a66'' .. ''\u0a6f'' | ''\u0ae6'' .. ''\u0aef'' | ''\u0b66'' .. ''\u0b6f'' | ''\u0be7'' .. ''\u0bef'' | ''\u0c66'' .. ''\u0c6f'' | ''\u0ce6'' .. ''\u0cef'' | ''\u0d66'' .. ''\u0d6f'' | ''\u0e50'' .. ''\u0e59'' | ''\u0ed0'' .. ''\u0ed9'' | ''\u1040'' .. ''\u1049'' )
        // JavaLexerRules.g:
        begin
        if ( ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0660) and (input.LA(1)<=$0669)) or ((input.LA(1)>=$06F0) and (input.LA(1)<=$06F9)) or ((input.LA(1)>=$0966) and (input.LA(1)<=$096F)) or ((input.LA(1)>=$09E6) and (input.LA(1)<=$09EF)) or ((input.LA(1)>=$0A66) and (input.LA(1)<=$0A6F)) or ((input.LA(1)>=$0AE6) and (input.LA(1)<=$0AEF)) or ((input.LA(1)>=$0B66) and (input.LA(1)<=$0B6F)) or ((input.LA(1)>=$0BE7) and (input.LA(1)<=$0BEF)) or ((input.LA(1)>=$0C66) and (input.LA(1)<=$0C6F)) or ((input.LA(1)>=$0CE6) and (input.LA(1)<=$0CEF)) or ((input.LA(1)>=$0D66) and (input.LA(1)<=$0D6F)) or ((input.LA(1)>=$0E50) and (input.LA(1)<=$0E59)) or ((input.LA(1)>=$0ED0) and (input.LA(1)<=$0ED9)) or ((input.LA(1)>=$1040) and (input.LA(1)<=$1049)) ) then
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
// $ANTLR end JavaIDDigit// $ANTLR start "WS"
procedure TJavaLexerRules.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:110:5: ( ( '' '' | ''\r'' | ''\t'' | ''\u000C'' | ''\n'' ) )
        // JavaLexerRules.g:110:8: ( '' '' | ''\r'' | ''\t'' | ''\u000C'' | ''\n'' )
        begin
        if ( ((input.LA(1)>=$0009) and (input.LA(1)<=$000A)) or ((input.LA(1)>=$000C) and (input.LA(1)<=$000D)) or (input.LA(1)=$0020) ) then
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
procedure TJavaLexerRules.mCOMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:114:5: ( ''/*'' ( options {greedy=false; } : . )* ''*/'' )
        // JavaLexerRules.g:114:9: ''/*'' ( options {greedy=false; } : . )* ''*/''
        begin
        match('/*');


        // closureBlock:JavaLexerRules.g:114:14: ( options {greedy=false; } : . )*
        repeat 
            _alt[27]:=2;
            _LA[27,0] := input.LA(1);

            if ( ((_LA[27,0]=$002A)) ) then 
            begin
              _LA[27,1] := input.LA(2);

              if ( ((_LA[27,1]=$002F)) ) then 
              begin
                _alt[27]:=2;
              end
              else if ( (((_LA[27,1]>=$0000) and 
              ( _LA[27,1]<=$002E)) or ((_LA[27,1]>=$0030) and 
              ( _LA[27,1]<=$FFFF))) ) then 
              begin
                _alt[27]:=1;
              end

              ;

            end
            else if ( (((_LA[27,0]>=$0000) and 
            ( _LA[27,0]<=$0029)) or ((_LA[27,0]>=$002B) and 
            ( _LA[27,0]<=$FFFF))) ) then 
            begin
              _alt[27]:=1;
            end

            ;

            case (_alt[27]) of
        	 1 :
        	    begin
        	    // JavaLexerRules.g:114:42: .
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
procedure TJavaLexerRules.mLINE_COMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LINE_COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:JavaLexerRules.g:118:5: ( ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n'' )
        // JavaLexerRules.g:118:7: ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n''
        begin
        match('//');


        // closureBlock:JavaLexerRules.g:118:12: (~ ( ''\n'' | ''\r'' ) )*
        repeat 
            _alt[28]:=2;
            _LA[28,0] := input.LA(1);

            if ( (((_LA[28,0]>=$0000) and 
            ( _LA[28,0]<=$0009)) or ((_LA[28,0]>=$000B) and 
            ( _LA[28,0]<=$000C)) or ((_LA[28,0]>=$000E) and 
            ( _LA[28,0]<=$FFFF))) ) then 
            begin
              _alt[28]:=1;
            end

            ;

            case (_alt[28]) of
        	 1 :
        	    begin
        	    // JavaLexerRules.g:118:12: ~ ( ''\n'' | ''\r'' )
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

        // block:JavaLexerRules.g:118:26: ( ''\r'' )?
        _alt[29]:=2;
        _LA[29,0] := input.LA(1);

        if ( ((_LA[29,0]=$000D)) ) then 
        begin
          _alt[29]:=1;
        end
        ;
        case (_alt[29]) of
             1 :
                begin
                // JavaLexerRules.g:118:26: ''\r''
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
procedure TJavaLexerRules.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:JavaLexerRules.g:1:8: ( HexLiteral | DecimalLiteral | OctalLiteral | FloatingPointLiteral | CharacterLiteral | StringLiteral | ENUM | Identifier | WS | COMMENT | LINE_COMMENT )
        _alt[30]:=11;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The JavaLexerRules attribute is inherited via the parser, lexer, ...
         *}
        _alt[30] := getDfa30.predict(input);
        case (_alt[30]) of 
             1 :
                begin
                // JavaLexerRules.g:1:10: HexLiteral
                begin
                mHexLiteral(); 


                end;
                end;
             2 :
                begin
                // JavaLexerRules.g:1:21: DecimalLiteral
                begin
                mDecimalLiteral(); 


                end;
                end;
             3 :
                begin
                // JavaLexerRules.g:1:36: OctalLiteral
                begin
                mOctalLiteral(); 


                end;
                end;
             4 :
                begin
                // JavaLexerRules.g:1:49: FloatingPointLiteral
                begin
                mFloatingPointLiteral(); 


                end;
                end;
             5 :
                begin
                // JavaLexerRules.g:1:70: CharacterLiteral
                begin
                mCharacterLiteral(); 


                end;
                end;
             6 :
                begin
                // JavaLexerRules.g:1:87: StringLiteral
                begin
                mStringLiteral(); 


                end;
                end;
             7 :
                begin
                // JavaLexerRules.g:1:101: ENUM
                begin
                mENUM(); 


                end;
                end;
             8 :
                begin
                // JavaLexerRules.g:1:106: Identifier
                begin
                mIdentifier(); 


                end;
                end;
             9 :
                begin
                // JavaLexerRules.g:1:117: WS
                begin
                mWS(); 


                end;
                end;
             10 :
                begin
                // JavaLexerRules.g:1:120: COMMENT
                begin
                mCOMMENT(); 


                end;
                end;
             11 :
                begin
                // JavaLexerRules.g:1:128: LINE_COMMENT
                begin
                mLINE_COMMENT(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TJavaLexerRules.getDfa19:IDFA;
begin
  if not Assigned(dfa19) then
    dfa19:=TAntlrDFA19.Create(self);
  Result:=dfa19;  
end;

constructor TJavaLexerRules.TAntlrDFA19.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=19;
  feot:=unpackEncodedString('\7\uffff\1\10\2\uffff');
  feof:=unpackEncodedString('\12\uffff');

  FMinc:=unpackEncodedString('\2\56\1\uffff\1\53\2\uffff\2\60\2\uffff');

  FMaxc:=unpackEncodedString('\1\71\1\146\1\uffff\1\71\2\uffff\1\71\1\146'+
    '\2\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\uffff\1\4\1\1\2\uffff\2\3');
  fspecial:=unpackEncodedString('\12\uffff');
  AddTransition(unpackEncodedString('\1\2\1\uffff\12\1'));
  AddTransition(unpackEncodedString('\1\5\1\uffff\12\1\12\uffff\1\4\1\3'+
  '\1\4\35\uffff\1\4\1\3\1\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\6\1\uffff\1\6\2\uffff\12\7'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\7'));
  AddTransition(unpackEncodedString('\12\7\12\uffff\1\11\1\uffff\1\11\35'+
  '\uffff\1\11\1\uffff\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TJavaLexerRules.TAntlrDFA19.getDescription():string;
begin
  Result:='24:1: FloatingPointLiteral : ( ( ''0'' .. ''9'' )+ ''.'' ( ''0'' .. ''9'' )* ( Exponent )?'+
  ' ( FloatTypeSuffix )? | ''.'' ( ''0'' .. ''9'' )+ ( Exponent )? ( FloatTypeSuffix )? |'+
  ' ( ''0'' .. ''9'' )+ Exponent ( FloatTypeSuffix )? | ( ''0'' .. ''9'' )+ ( Exponent )? F'+
  'loatTypeSuffix );';
end;




function TJavaLexerRules.getDfa30:IDFA;
begin
  if not Assigned(dfa30) then
    dfa30:=TAntlrDFA30.Create(self);
  Result:=dfa30;  
end;

constructor TJavaLexerRules.TAntlrDFA30.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=30;
  feot:=unpackEncodedString('\1\uffff\2\14\3\uffff\1\7\4\uffff\1\21\1\uffff'+
    '\1\14\1\7\3\uffff\1\7\1\24\1\uffff');
  feof:=unpackEncodedString('\25\uffff');

  FMinc:=unpackEncodedString('\1\11\2\56\3\uffff\1\156\2\uffff\1\52\1\uffff'+
    '\1\56\1\uffff\1\56\1\165\3\uffff\1\155\1\44\1\uffff');

  FMaxc:=unpackEncodedString('\1\ufaff\1\170\1\146\3\uffff\1\156\2\uffff'+
    '\1\57\1\uffff\1\146\1\uffff\1\146\1\165\3\uffff\1\155\1\ufaff\1\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\4\1\5\1\6\1\uffff\1\10\1\11\1'+
    '\uffff\1\1\1\uffff\1\2\2\uffff\1\12\1\13\1\3\2\uffff\1\7');
  fspecial:=unpackEncodedString('\25\uffff');
  AddTransition(unpackEncodedString('\2\10\1\uffff\2\10\22\uffff\1\10\1'+
  '\uffff\1\5\1\uffff\1\7\2\uffff\1\4\6\uffff\1\3\1\11\1\1\11\2\7\uffff\32'+
  '\7\4\uffff\1\7\1\uffff\4\7\1\6\25\7\105\uffff\27\7\1\uffff\37\7\1\uffff'+
  '\u1f08\7\u1040\uffff\u0150\7\u0170\uffff\u0080\7\u0080\uffff\u092e\7\u10d2'+
  '\uffff\u5200\7\u5900\uffff\u0200\7'));
  AddTransition(unpackEncodedString('\1\3\1\uffff\10\13\2\3\12\uffff\3\3'+
  '\21\uffff\1\12\13\uffff\3\3\21\uffff\1\12'));
  AddTransition(unpackEncodedString('\1\3\1\uffff\12\15\12\uffff\3\3\35'+
  '\uffff\3\3'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\16'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\17\4\uffff\1\20'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\3\1\uffff\10\13\2\3\12\uffff\3\3'+
  '\35\uffff\3\3'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\3\1\uffff\12\15\12\uffff\3\3\35'+
  '\uffff\3\3'));
  AddTransition(unpackEncodedString('\1\22'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\23'));
  AddTransition(unpackEncodedString('\1\7\13\uffff\12\7\7\uffff\32\7\4\uffff'+
  '\1\7\1\uffff\32\7\105\uffff\27\7\1\uffff\37\7\1\uffff\u1f08\7\u1040\uffff'+
  '\u0150\7\u0170\uffff\u0080\7\u0080\uffff\u092e\7\u10d2\uffff\u5200\7\u5900'+
  '\uffff\u0200\7'));
  AddTransition(unpackEncodedString(''));
end;

function TJavaLexerRules.TAntlrDFA30.getDescription():string;
begin
  Result:='1:1: Tokens : ( HexLiteral | DecimalLiteral | OctalLiteral | FloatingPointLitera'+
  'l | CharacterLiteral | StringLiteral | ENUM | Identifier | WS | COMMENT | LINE_C'+
  'OMMENT );';
end;



 


end.