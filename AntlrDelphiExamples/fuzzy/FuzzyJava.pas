// $ANTLR 3.1.2 FuzzyJava.g 2009-07-23 21:40:58
unit FuzzyJava;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TFuzzyJava = class(TAntlrLexer)
    public
      const STAT=15;
      const CLASS_RULE=10;
      const ESC=19;
      const CHAR=21;
      const TYPE_RULE=11;
      const ID=8;
      const EOF=-1;
      const QID=9;
      const IMPORT=6;
      const WS=4;
      const ARG=12;
      const QIDStar=5;
      const SL_COMMENT=18;
      const RETURN=7;
      const FIELD=14;
      const CALL=16;
      const COMMENT=17;
      const METHOD=13;
      const STRING_RULE=20;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    function nextToken():IToken;override;
    procedure memoize(input:IIntStream;ruleIndex,ruleStartIndex:Integer);override;
    function alreadyParsedRule(input:IIntStream;ruleIndex:Integer):Boolean;override;// $ANTLR start "IMPORT"
    procedure mIMPORT();
    // $ANTLR end IMPORT

    // $ANTLR start "RETURN"
    procedure mRETURN();
    // $ANTLR end RETURN

    // $ANTLR start "CLASS_RULE"
    procedure mCLASS_RULE();
    // $ANTLR end CLASS_RULE

    // $ANTLR start "METHOD"
    procedure mMETHOD();
    // $ANTLR end METHOD

    // $ANTLR start "FIELD"
    procedure mFIELD();
    // $ANTLR end FIELD

    // $ANTLR start "STAT"
    procedure mSTAT();
    // $ANTLR end STAT

    // $ANTLR start "CALL"
    procedure mCALL();
    // $ANTLR end CALL

    // $ANTLR start "COMMENT"
    procedure mCOMMENT();
    // $ANTLR end COMMENT

    // $ANTLR start "SL_COMMENT"
    procedure mSL_COMMENT();
    // $ANTLR end SL_COMMENT

    // $ANTLR start "STRING_RULE"
    procedure mSTRING_RULE();
    // $ANTLR end STRING_RULE

    // $ANTLR start "CHAR"
    procedure mCHAR();
    // $ANTLR end CHAR

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    // $ANTLR start "QID"
    procedure mQID();
    // $ANTLR end QID

    // $ANTLR start "QIDStar"
    procedure mQIDStar();
    // $ANTLR end QIDStar

    // $ANTLR start "TYPE_RULE"
    procedure mTYPE_RULE();
    // $ANTLR end TYPE_RULE

    // $ANTLR start "ARG"
    procedure mARG();
    // $ANTLR end ARG

    // $ANTLR start "ID"
    procedure mID();
    // $ANTLR end ID

    // $ANTLR start "ESC"
    procedure mESC();
    // $ANTLR end ESC

    procedure mTokens();override;

    // $ANTLR start "synpred1_FuzzyJava"
    function synpred1_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred1_FuzzyJava

    // $ANTLR start "synpred2_FuzzyJava"
    function synpred2_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred2_FuzzyJava

    // $ANTLR start "synpred3_FuzzyJava"
    function synpred3_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred3_FuzzyJava

    // $ANTLR start "synpred4_FuzzyJava"
    function synpred4_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred4_FuzzyJava

    // $ANTLR start "synpred5_FuzzyJava"
    function synpred5_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred5_FuzzyJava

    // $ANTLR start "synpred6_FuzzyJava"
    function synpred6_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred6_FuzzyJava

    // $ANTLR start "synpred7_FuzzyJava"
    function synpred7_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred7_FuzzyJava

    // $ANTLR start "synpred8_FuzzyJava"
    function synpred8_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred8_FuzzyJava

    // $ANTLR start "synpred9_FuzzyJava"
    function synpred9_FuzzyJava_fragment():Integer;
    // $ANTLR end synpred9_FuzzyJava
    function synpred5_FuzzyJava():Boolean;
    function synpred8_FuzzyJava():Boolean;
    function synpred9_FuzzyJava():Boolean;
    function synpred2_FuzzyJava():Boolean;
    function synpred1_FuzzyJava():Boolean;
    function synpred3_FuzzyJava():Boolean;
    function synpred7_FuzzyJava():Boolean;
    function synpred6_FuzzyJava():Boolean;
    function synpred4_FuzzyJava():Boolean;


    protected

     
          type TAntlrDFA38=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa38:IDFA;
        protected
          dfa38:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TFuzzyJava.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TFuzzyJava.Destroy;
begin
 inherited;
end;

function TFuzzyJava.GetGrammarFileName():String;
begin
  Result:='FuzzyJava.g';
end;

function TFuzzyJava.nextToken():IToken;
var
  m:Integer;
begin
    while (true) do
    begin
        if ( input.LA(1)=EOF ) then
        begin
          Result:=EOF_TOKEN;
          Exit;
        end;
        state.token := nil;
        state.channel := DEFAULT_CHANNEL;
        state.tokenStartCharIndex := input.index();
        state.tokenStartCharPositionInLine := input.getCharPositionInLine();
        state.tokenStartLine := input.getLine();
        state.text := '';
        try 
            m := input.mark();
            state.backtracking:=1; 
            state.failed:=false;
            mTokens();
            state.backtracking:=0;

            if ( state.failed ) then
            begin
                input.rewind(m);
                input.consume(); 
            end
            else begin
                emit();
                Result:=state.token;
                Exit;
            end;
        except on re:ERecognitionException do
          begin
            // shouldn't happen in backtracking mode, but...
            reportError(re);
            recover(re);
          end;
        end;
    end;
end;

procedure TFuzzyJava.memoize(input:IIntStream;ruleIndex,ruleStartIndex:Integer);
begin
  if ( state.backtracking>1 ) then
    Inherited memoize(input, ruleIndex, ruleStartIndex);
end;

function TFuzzyJava.alreadyParsedRule(input:IIntStream;ruleIndex:Integer):Boolean;
begin
  if ( state.backtracking>1 ) then
     Result:=Inherited alreadyParsedRule(input, ruleIndex);
  Result:=false;
end;
// $ANTLR start "IMPORT"
procedure TFuzzyJava.mIMPORT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        _type := IMPORT;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:8:2: ( ''import'' WS name= QIDStar ( WS )? '';'' )
        // FuzzyJava.g:8:4: ''import'' WS name= QIDStar ( WS )? '';''
        begin
        match('import');
        if (state.failed) then
        begin
          Exit;
        end;

        mWS(); 
        if (state.failed) then
        begin
          Exit;
        end;
        _Start['name33'] := getCharIndex();
        mQIDStar();
        if (state.failed) then
        begin
          Exit;
        end;
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name33'], getCharIndex()-1);
        // block:FuzzyJava.g:8:29: ( WS )?
        _alt[1]:=2;
        _LA[1,0] := input.LA(1);

        if ( (((_LA[1,0]>=$0009) and 
        ( _LA[1,0]<=$000A)) or (_LA[1,0]=$000D) or (_LA[1,0]=$0020)) ) then 
        begin
          _alt[1]:=1;
        end
        ;
        case (_alt[1]) of
             1 :
                begin
                // FuzzyJava.g:8:29: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match($003B);
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end IMPORT// $ANTLR start "RETURN"
procedure TFuzzyJava.mRETURN();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := RETURN;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:13:2: ( ''return'' ( options {greedy=false; } : . )* '';'' )
        // FuzzyJava.g:13:4: ''return'' ( options {greedy=false; } : . )* '';''
        begin
        match('return');
        if (state.failed) then
        begin
          Exit;
        end;

        // closureBlock:FuzzyJava.g:13:13: ( options {greedy=false; } : . )*
        repeat 
            _alt[2]:=2;
            _LA[2,0] := input.LA(1);

            if ( ((_LA[2,0]=$003B)) ) then 
            begin
              _alt[2]:=2;
            end
            else if ( (((_LA[2,0]>=$0000) and 
            ( _LA[2,0]<=$003A)) or ((_LA[2,0]>=$003C) and 
            ( _LA[2,0]<=$FFFF))) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            case (_alt[2]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:13:38: .
        	    begin
        	    matchAny(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match($003B);
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end RETURN// $ANTLR start "CLASS_RULE"
procedure TFuzzyJava.mCLASS_RULE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        _type := CLASS_RULE;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:17:2: ( ''class'' WS name= ID ( WS )? ( ''extends'' WS QID ( WS )? )? ( ''implements'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )* )? ''{'' )
        // FuzzyJava.g:17:4: ''class'' WS name= ID ( WS )? ( ''extends'' WS QID ( WS )? )? ( ''implements'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )* )? ''{''
        begin
        match('class');
        if (state.failed) then
        begin
          Exit;
        end;

        mWS(); 
        if (state.failed) then
        begin
          Exit;
        end;
        _Start['name83'] := getCharIndex();
        mID();
        if (state.failed) then
        begin
          Exit;
        end;
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name83'], getCharIndex()-1);
        // block:FuzzyJava.g:17:23: ( WS )?
        _alt[3]:=2;
        _LA[3,0] := input.LA(1);

        if ( (((_LA[3,0]>=$0009) and 
        ( _LA[3,0]<=$000A)) or (_LA[3,0]=$000D) or (_LA[3,0]=$0020)) ) then 
        begin
          _alt[3]:=1;
        end
        ;
        case (_alt[3]) of
             1 :
                begin
                // FuzzyJava.g:17:23: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:FuzzyJava.g:17:27: ( ''extends'' WS QID ( WS )? )?
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=$0065)) ) then 
        begin
          _alt[5]:=1;
        end
        ;
        case (_alt[5]) of
             1 :
                begin
                // FuzzyJava.g:17:28: ''extends'' WS QID ( WS )?
                begin
                match('extends');
                if (state.failed) then
                begin
                  Exit;
                end;

                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                mQID(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:FuzzyJava.g:17:45: ( WS )?
                _alt[4]:=2;
                _LA[4,0] := input.LA(1);

                if ( (((_LA[4,0]>=$0009) and 
                ( _LA[4,0]<=$000A)) or (_LA[4,0]=$000D) or (_LA[4,0]=$0020)) ) then 
                begin
                  _alt[4]:=1;
                end
                ;
                case (_alt[4]) of
                     1 :
                        begin
                        // FuzzyJava.g:17:45: WS
                        begin
                        mWS(); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;

        end;

        // block:FuzzyJava.g:18:3: ( ''implements'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )* )?
        _alt[10]:=2;
        _LA[10,0] := input.LA(1);

        if ( ((_LA[10,0]=$0069)) ) then 
        begin
          _alt[10]:=1;
        end
        ;
        case (_alt[10]) of
             1 :
                begin
                // FuzzyJava.g:18:4: ''implements'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )*
                begin
                match('implements');
                if (state.failed) then
                begin
                  Exit;
                end;

                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                mQID(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:FuzzyJava.g:18:24: ( WS )?
                _alt[6]:=2;
                _LA[6,0] := input.LA(1);

                if ( (((_LA[6,0]>=$0009) and 
                ( _LA[6,0]<=$000A)) or (_LA[6,0]=$000D) or (_LA[6,0]=$0020)) ) then 
                begin
                  _alt[6]:=1;
                end
                ;
                case (_alt[6]) of
                     1 :
                        begin
                        // FuzzyJava.g:18:24: WS
                        begin
                        mWS(); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                // closureBlock:FuzzyJava.g:18:28: ( '','' ( WS )? QID ( WS )? )*
                repeat 
                    _alt[9]:=2;
                    _LA[9,0] := input.LA(1);

                    if ( ((_LA[9,0]=$002C)) ) then 
                    begin
                      _alt[9]:=1;
                    end

                    ;

                    case (_alt[9]) of
                	 1 :
                	    begin
                	    // FuzzyJava.g:18:29: '','' ( WS )? QID ( WS )?
                	    begin
                	    match($002C);
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:FuzzyJava.g:18:33: ( WS )?
                	    _alt[7]:=2;
                	    _LA[7,0] := input.LA(1);

                	    if ( (((_LA[7,0]>=$0009) and 
                	    ( _LA[7,0]<=$000A)) or (_LA[7,0]=$000D) or (_LA[7,0]=$0020)) ) then 
                	    begin
                	      _alt[7]:=1;
                	    end
                	    ;
                	    case (_alt[7]) of
                	         1 :
                	            begin
                	            // FuzzyJava.g:18:33: WS
                	            begin
                	            mWS(); 
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;

                	    mQID(); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:FuzzyJava.g:18:41: ( WS )?
                	    _alt[8]:=2;
                	    _LA[8,0] := input.LA(1);

                	    if ( (((_LA[8,0]>=$0009) and 
                	    ( _LA[8,0]<=$000A)) or (_LA[8,0]=$000D) or (_LA[8,0]=$0020)) ) then 
                	    begin
                	      _alt[8]:=1;
                	    end
                	    ;
                	    case (_alt[8]) of
                	         1 :
                	            begin
                	            // FuzzyJava.g:18:41: WS
                	            begin
                	            mWS(); 
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);


                end;
                end;

        end;

        match($007B);
        if (state.failed) then
        begin
          Exit;
        end;
        if ( state.backtracking=1 ) then 
        begin
          Writeln('found class '+(IIF(Assigned(name), name.getText(), '')));
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end CLASS_RULE// $ANTLR start "METHOD"
procedure TFuzzyJava.mMETHOD();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        _type := METHOD;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:23:5: ( TYPE_RULE WS name= ID ( WS )? ''('' ( ARG ( WS )? ( '','' ( WS )? ARG ( WS )? )* )? '')'' ( WS )? ( ''throws'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )* )? ''{'' )
        // FuzzyJava.g:23:9: TYPE_RULE WS name= ID ( WS )? ''('' ( ARG ( WS )? ( '','' ( WS )? ARG ( WS )? )* )? '')'' ( WS )? ( ''throws'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )* )? ''{''
        begin
        mTYPE_RULE(); 
        if (state.failed) then
        begin
          Exit;
        end;
        mWS(); 
        if (state.failed) then
        begin
          Exit;
        end;
        _Start['name160'] := getCharIndex();
        mID();
        if (state.failed) then
        begin
          Exit;
        end;
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name160'], getCharIndex()-1);
        // block:FuzzyJava.g:23:30: ( WS )?
        _alt[11]:=2;
        _LA[11,0] := input.LA(1);

        if ( (((_LA[11,0]>=$0009) and 
        ( _LA[11,0]<=$000A)) or (_LA[11,0]=$000D) or (_LA[11,0]=$0020)) ) then 
        begin
          _alt[11]:=1;
        end
        ;
        case (_alt[11]) of
             1 :
                begin
                // FuzzyJava.g:23:30: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match($0028);
        if (state.failed) then
        begin
          Exit;
        end;
        // block:FuzzyJava.g:23:38: ( ARG ( WS )? ( '','' ( WS )? ARG ( WS )? )* )?
        _alt[16]:=2;
        _LA[16,0] := input.LA(1);

        if ( (((_LA[16,0]>=$0041) and 
        ( _LA[16,0]<=$005A)) or (_LA[16,0]=$005F) or ((_LA[16,0]>=$0061) and 
        ( _LA[16,0]<=$007A))) ) then 
        begin
          _alt[16]:=1;
        end
        ;
        case (_alt[16]) of
             1 :
                begin
                // FuzzyJava.g:23:40: ARG ( WS )? ( '','' ( WS )? ARG ( WS )? )*
                begin
                mARG(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:FuzzyJava.g:23:44: ( WS )?
                _alt[12]:=2;
                _LA[12,0] := input.LA(1);

                if ( (((_LA[12,0]>=$0009) and 
                ( _LA[12,0]<=$000A)) or (_LA[12,0]=$000D) or (_LA[12,0]=$0020)) ) then 
                begin
                  _alt[12]:=1;
                end
                ;
                case (_alt[12]) of
                     1 :
                        begin
                        // FuzzyJava.g:23:44: WS
                        begin
                        mWS(); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                // closureBlock:FuzzyJava.g:23:48: ( '','' ( WS )? ARG ( WS )? )*
                repeat 
                    _alt[15]:=2;
                    _LA[15,0] := input.LA(1);

                    if ( ((_LA[15,0]=$002C)) ) then 
                    begin
                      _alt[15]:=1;
                    end

                    ;

                    case (_alt[15]) of
                	 1 :
                	    begin
                	    // FuzzyJava.g:23:49: '','' ( WS )? ARG ( WS )?
                	    begin
                	    match($002C);
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:FuzzyJava.g:23:53: ( WS )?
                	    _alt[13]:=2;
                	    _LA[13,0] := input.LA(1);

                	    if ( (((_LA[13,0]>=$0009) and 
                	    ( _LA[13,0]<=$000A)) or (_LA[13,0]=$000D) or (_LA[13,0]=$0020)) ) then 
                	    begin
                	      _alt[13]:=1;
                	    end
                	    ;
                	    case (_alt[13]) of
                	         1 :
                	            begin
                	            // FuzzyJava.g:23:53: WS
                	            begin
                	            mWS(); 
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;

                	    mARG(); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:FuzzyJava.g:23:61: ( WS )?
                	    _alt[14]:=2;
                	    _LA[14,0] := input.LA(1);

                	    if ( (((_LA[14,0]>=$0009) and 
                	    ( _LA[14,0]<=$000A)) or (_LA[14,0]=$000D) or (_LA[14,0]=$0020)) ) then 
                	    begin
                	      _alt[14]:=1;
                	    end
                	    ;
                	    case (_alt[14]) of
                	         1 :
                	            begin
                	            // FuzzyJava.g:23:61: WS
                	            begin
                	            mWS(); 
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);


                end;
                end;

        end;

        match($0029);
        if (state.failed) then
        begin
          Exit;
        end;
        // block:FuzzyJava.g:23:74: ( WS )?
        _alt[17]:=2;
        _LA[17,0] := input.LA(1);

        if ( (((_LA[17,0]>=$0009) and 
        ( _LA[17,0]<=$000A)) or (_LA[17,0]=$000D) or (_LA[17,0]=$0020)) ) then 
        begin
          _alt[17]:=1;
        end
        ;
        case (_alt[17]) of
             1 :
                begin
                // FuzzyJava.g:23:74: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // block:FuzzyJava.g:24:8: ( ''throws'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )* )?
        _alt[22]:=2;
        _LA[22,0] := input.LA(1);

        if ( ((_LA[22,0]=$0074)) ) then 
        begin
          _alt[22]:=1;
        end
        ;
        case (_alt[22]) of
             1 :
                begin
                // FuzzyJava.g:24:9: ''throws'' WS QID ( WS )? ( '','' ( WS )? QID ( WS )? )*
                begin
                match('throws');
                if (state.failed) then
                begin
                  Exit;
                end;

                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                mQID(); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:FuzzyJava.g:24:25: ( WS )?
                _alt[18]:=2;
                _LA[18,0] := input.LA(1);

                if ( (((_LA[18,0]>=$0009) and 
                ( _LA[18,0]<=$000A)) or (_LA[18,0]=$000D) or (_LA[18,0]=$0020)) ) then 
                begin
                  _alt[18]:=1;
                end
                ;
                case (_alt[18]) of
                     1 :
                        begin
                        // FuzzyJava.g:24:25: WS
                        begin
                        mWS(); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                // closureBlock:FuzzyJava.g:24:29: ( '','' ( WS )? QID ( WS )? )*
                repeat 
                    _alt[21]:=2;
                    _LA[21,0] := input.LA(1);

                    if ( ((_LA[21,0]=$002C)) ) then 
                    begin
                      _alt[21]:=1;
                    end

                    ;

                    case (_alt[21]) of
                	 1 :
                	    begin
                	    // FuzzyJava.g:24:30: '','' ( WS )? QID ( WS )?
                	    begin
                	    match($002C);
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:FuzzyJava.g:24:34: ( WS )?
                	    _alt[19]:=2;
                	    _LA[19,0] := input.LA(1);

                	    if ( (((_LA[19,0]>=$0009) and 
                	    ( _LA[19,0]<=$000A)) or (_LA[19,0]=$000D) or (_LA[19,0]=$0020)) ) then 
                	    begin
                	      _alt[19]:=1;
                	    end
                	    ;
                	    case (_alt[19]) of
                	         1 :
                	            begin
                	            // FuzzyJava.g:24:34: WS
                	            begin
                	            mWS(); 
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;

                	    mQID(); 
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;
                	    // block:FuzzyJava.g:24:42: ( WS )?
                	    _alt[20]:=2;
                	    _LA[20,0] := input.LA(1);

                	    if ( (((_LA[20,0]>=$0009) and 
                	    ( _LA[20,0]<=$000A)) or (_LA[20,0]=$000D) or (_LA[20,0]=$0020)) ) then 
                	    begin
                	      _alt[20]:=1;
                	    end
                	    ;
                	    case (_alt[20]) of
                	         1 :
                	            begin
                	            // FuzzyJava.g:24:42: WS
                	            begin
                	            mWS(); 
                	            if (state.failed) then
                	            begin
                	              Exit;
                	            end;

                	            end;
                	            end;

                	    end;


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);


                end;
                end;

        end;

        match($007B);
        if (state.failed) then
        begin
          Exit;
        end;
        if ( state.backtracking=1 ) then 
        begin
          Writeln('found method '+(IIF(Assigned(name), name.getText(), '')));
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end METHOD// $ANTLR start "FIELD"
procedure TFuzzyJava.mFIELD();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        _type := FIELD;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:29:5: ( TYPE_RULE WS name= ID ( ''[]'' )? ( WS )? ( '';'' | ''='' ) )
        // FuzzyJava.g:29:9: TYPE_RULE WS name= ID ( ''[]'' )? ( WS )? ( '';'' | ''='' )
        begin
        mTYPE_RULE(); 
        if (state.failed) then
        begin
          Exit;
        end;
        mWS(); 
        if (state.failed) then
        begin
          Exit;
        end;
        _Start['name263'] := getCharIndex();
        mID();
        if (state.failed) then
        begin
          Exit;
        end;
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name263'], getCharIndex()-1);
        // block:FuzzyJava.g:29:30: ( ''[]'' )?
        _alt[23]:=2;
        _LA[23,0] := input.LA(1);

        if ( ((_LA[23,0]=$005B)) ) then 
        begin
          _alt[23]:=1;
        end
        ;
        case (_alt[23]) of
             1 :
                begin
                // FuzzyJava.g:29:30: ''[]''
                begin
                match('[]');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;

        end;

        // block:FuzzyJava.g:29:36: ( WS )?
        _alt[24]:=2;
        _LA[24,0] := input.LA(1);

        if ( (((_LA[24,0]>=$0009) and 
        ( _LA[24,0]<=$000A)) or (_LA[24,0]=$000D) or (_LA[24,0]=$0020)) ) then 
        begin
          _alt[24]:=1;
        end
        ;
        case (_alt[24]) of
             1 :
                begin
                // FuzzyJava.g:29:36: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        if ( (input.LA(1)=$003B) or (input.LA(1)=$003D) ) then
        begin
            input.consume();
        state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        if ( state.backtracking=1 ) then 
        begin
          Writeln('found var '+(IIF(Assigned(name), name.getText(), '')));
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end FIELD// $ANTLR start "STAT"
procedure TFuzzyJava.mSTAT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := STAT;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:33:5: ( ( ''if'' | ''while'' | ''switch'' | ''for'' ) ( WS )? ''('' )
        // FuzzyJava.g:33:7: ( ''if'' | ''while'' | ''switch'' | ''for'' ) ( WS )? ''(''
        begin
        // block:FuzzyJava.g:33:7: ( ''if'' | ''while'' | ''switch'' | ''for'' )
        _alt[25]:=4;

        case input.LA(1) of
         $0069: 
            begin
            _alt[25]:=1;
            end;
         $0077: 
            begin
            _alt[25]:=2;
            end;
         $0073: 
            begin
            _alt[25]:=3;
            end;
         $0066: 
            begin
            _alt[25]:=4;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 25, 0, input);

        end;
        end;

        case (_alt[25]) of
             1 :
                begin
                // FuzzyJava.g:33:8: ''if''
                begin
                match('if');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;
             2 :
                begin
                // FuzzyJava.g:33:13: ''while''
                begin
                match('while');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;
             3 :
                begin
                // FuzzyJava.g:33:21: ''switch''
                begin
                match('switch');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;
             4 :
                begin
                // FuzzyJava.g:33:30: ''for''
                begin
                match('for');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;

        end;

        // block:FuzzyJava.g:33:37: ( WS )?
        _alt[26]:=2;
        _LA[26,0] := input.LA(1);

        if ( (((_LA[26,0]>=$0009) and 
        ( _LA[26,0]<=$000A)) or (_LA[26,0]=$000D) or (_LA[26,0]=$0020)) ) then 
        begin
          _alt[26]:=1;
        end
        ;
        case (_alt[26]) of
             1 :
                begin
                // FuzzyJava.g:33:37: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match($0028);
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end STAT// $ANTLR start "CALL"
procedure TFuzzyJava.mCALL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        _type := CALL;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:36:5: (name= QID ( WS )? ''('' )
        // FuzzyJava.g:36:9: name= QID ( WS )? ''(''
        begin
        _Start['name328'] := getCharIndex();
        mQID();
        if (state.failed) then
        begin
          Exit;
        end;
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name328'], getCharIndex()-1);
        // block:FuzzyJava.g:36:18: ( WS )?
        _alt[27]:=2;
        _LA[27,0] := input.LA(1);

        if ( (((_LA[27,0]>=$0009) and 
        ( _LA[27,0]<=$000A)) or (_LA[27,0]=$000D) or (_LA[27,0]=$0020)) ) then 
        begin
          _alt[27]:=1;
        end
        ;
        case (_alt[27]) of
             1 :
                begin
                // FuzzyJava.g:36:18: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match($0028);
        if (state.failed) then
        begin
          Exit;
        end;
        if ( state.backtracking=1 ) then 
        begin
           Writeln('found call '+(IIF(Assigned(name), name.getText(), '')));
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end CALL// $ANTLR start "COMMENT"
procedure TFuzzyJava.mCOMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:41:5: ( ''/*'' ( options {greedy=false; } : . )* ''*/'' )
        // FuzzyJava.g:41:9: ''/*'' ( options {greedy=false; } : . )* ''*/''
        begin
        match('/*');
        if (state.failed) then
        begin
          Exit;
        end;

        // closureBlock:FuzzyJava.g:41:14: ( options {greedy=false; } : . )*
        repeat 
            _alt[28]:=2;
            _LA[28,0] := input.LA(1);

            if ( ((_LA[28,0]=$002A)) ) then 
            begin
              _LA[28,1] := input.LA(2);

              if ( ((_LA[28,1]=$002F)) ) then 
              begin
                _alt[28]:=2;
              end
              else if ( (((_LA[28,1]>=$0000) and 
              ( _LA[28,1]<=$002E)) or ((_LA[28,1]>=$0030) and 
              ( _LA[28,1]<=$FFFF))) ) then 
              begin
                _alt[28]:=1;
              end

              ;

            end
            else if ( (((_LA[28,0]>=$0000) and 
            ( _LA[28,0]<=$0029)) or ((_LA[28,0]>=$002B) and 
            ( _LA[28,0]<=$FFFF))) ) then 
            begin
              _alt[28]:=1;
            end

            ;

            case (_alt[28]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:41:41: .
        	    begin
        	    matchAny(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match('*/');
        if (state.failed) then
        begin
          Exit;
        end;

        if ( state.backtracking=1 ) then 
        begin
          Writeln('found comment '+getText());
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end COMMENT// $ANTLR start "SL_COMMENT"
procedure TFuzzyJava.mSL_COMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := SL_COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:46:5: ( ''//'' ( options {greedy=false; } : . )* ''\n'' )
        // FuzzyJava.g:46:9: ''//'' ( options {greedy=false; } : . )* ''\n''
        begin
        match('//');
        if (state.failed) then
        begin
          Exit;
        end;

        // closureBlock:FuzzyJava.g:46:14: ( options {greedy=false; } : . )*
        repeat 
            _alt[29]:=2;
            _LA[29,0] := input.LA(1);

            if ( ((_LA[29,0]=$000A)) ) then 
            begin
              _alt[29]:=2;
            end
            else if ( (((_LA[29,0]>=$0000) and 
            ( _LA[29,0]<=$0009)) or ((_LA[29,0]>=$000B) and 
            ( _LA[29,0]<=$FFFF))) ) then 
            begin
              _alt[29]:=1;
            end

            ;

            case (_alt[29]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:46:41: .
        	    begin
        	    matchAny(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match($000A);
        if (state.failed) then
        begin
          Exit;
        end;
        if ( state.backtracking=1 ) then 
        begin
          Writeln('found // comment '+getText());
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end SL_COMMENT// $ANTLR start "STRING_RULE"
procedure TFuzzyJava.mSTRING_RULE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := STRING_RULE;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:51:2: ( ''"'' ( options {greedy=false; } : ESC | . )* ''"'' )
        // FuzzyJava.g:51:4: ''"'' ( options {greedy=false; } : ESC | . )* ''"''
        begin
        match($0022);
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:FuzzyJava.g:51:8: ( options {greedy=false; } : ESC | . )*
        repeat 
            _alt[30]:=3;
            _LA[30,0] := input.LA(1);

            if ( ((_LA[30,0]=$0022)) ) then 
            begin
              _alt[30]:=3;
            end
            else if ( ((_LA[30,0]=$005C)) ) then 
            begin
              _LA[30,2] := input.LA(2);

              if ( ((_LA[30,2]=$0022)) ) then 
              begin
                _alt[30]:=1;
              end
              else if ( ((_LA[30,2]=$005C)) ) then 
              begin
                _alt[30]:=1;
              end
              else if ( ((_LA[30,2]=$0027)) ) then 
              begin
                _alt[30]:=1;
              end
              else if ( (((_LA[30,2]>=$0000) and 
              ( _LA[30,2]<=$0021)) or ((_LA[30,2]>=$0023) and 
              ( _LA[30,2]<=$0026)) or ((_LA[30,2]>=$0028) and 
              ( _LA[30,2]<=$005B)) or ((_LA[30,2]>=$005D) and 
              ( _LA[30,2]<=$FFFF))) ) then 
              begin
                _alt[30]:=2;
              end

              ;

            end
            else if ( (((_LA[30,0]>=$0000) and 
            ( _LA[30,0]<=$0021)) or ((_LA[30,0]>=$0023) and 
            ( _LA[30,0]<=$005B)) or ((_LA[30,0]>=$005D) and 
            ( _LA[30,0]<=$FFFF))) ) then 
            begin
              _alt[30]:=2;
            end

            ;

            case (_alt[30]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:51:34: ESC
        	    begin
        	    mESC(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // FuzzyJava.g:51:40: .
        	    begin
        	    matchAny(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match($0022);
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end STRING_RULE// $ANTLR start "CHAR"
procedure TFuzzyJava.mCHAR();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := CHAR;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:55:2: ( ''\'''' ( options {greedy=false; } : ESC | . )* ''\'''' )
        // FuzzyJava.g:55:4: ''\'''' ( options {greedy=false; } : ESC | . )* ''\''''
        begin
        match($0027);
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:FuzzyJava.g:55:9: ( options {greedy=false; } : ESC | . )*
        repeat 
            _alt[31]:=3;
            _LA[31,0] := input.LA(1);

            if ( ((_LA[31,0]=$0027)) ) then 
            begin
              _alt[31]:=3;
            end
            else if ( ((_LA[31,0]=$005C)) ) then 
            begin
              _LA[31,2] := input.LA(2);

              if ( ((_LA[31,2]=$0027)) ) then 
              begin
                _alt[31]:=1;
              end
              else if ( ((_LA[31,2]=$005C)) ) then 
              begin
                _alt[31]:=1;
              end
              else if ( ((_LA[31,2]=$0022)) ) then 
              begin
                _alt[31]:=1;
              end
              else if ( (((_LA[31,2]>=$0000) and 
              ( _LA[31,2]<=$0021)) or ((_LA[31,2]>=$0023) and 
              ( _LA[31,2]<=$0026)) or ((_LA[31,2]>=$0028) and 
              ( _LA[31,2]<=$005B)) or ((_LA[31,2]>=$005D) and 
              ( _LA[31,2]<=$FFFF))) ) then 
              begin
                _alt[31]:=2;
              end

              ;

            end
            else if ( (((_LA[31,0]>=$0000) and 
            ( _LA[31,0]<=$0026)) or ((_LA[31,0]>=$0028) and 
            ( _LA[31,0]<=$005B)) or ((_LA[31,0]>=$005D) and 
            ( _LA[31,0]<=$FFFF))) ) then 
            begin
              _alt[31]:=2;
            end

            ;

            case (_alt[31]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:55:35: ESC
        	    begin
        	    mESC(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // FuzzyJava.g:55:41: .
        	    begin
        	    matchAny(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match($0027);
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end CHAR// $ANTLR start "WS"
procedure TFuzzyJava.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:FuzzyJava.g:58:5: ( ( '' '' | ''\t'' | ''\n'' | ''\r'' )+ )
        // FuzzyJava.g:58:9: ( '' '' | ''\t'' | ''\n'' | ''\r'' )+
        begin
        // positiveClosureBlock:FuzzyJava.g:58:9: ( '' '' | ''\t'' | ''\n'' | ''\r'' )+
        _cnt[32]:=0;
        repeat 
            _alt[32]:=2;
            //before decision
            _LA[32,0] := input.LA(1);

            if ( (((_LA[32,0]>=$0009) and 
            ( _LA[32,0]<=$000A)) or (_LA[32,0]=$000D) or (_LA[32,0]=$0020)) ) then 
            begin
              _alt[32]:=1;
            end

            ;

            //after decision
            case (_alt[32]) of 
        	 1 :
        	    begin
        	    // FuzzyJava.g:
        	    begin
        	    if ( ((input.LA(1)>=$0009) and (input.LA(1)<=$000A)) or (input.LA(1)=$000D) or (input.LA(1)=$0020) ) then
        	    begin
        	        input.consume();
        	    state.failed:=false;
        	    end
        	    else 
        	    begin
        	        if (state.backtracking>0) then 
        	        begin 
        	          state.failed:=true; 
        	          Exit;  
        	        end;
        	        recover(EMismatchedSetException.CreateWithBitset(nil, input));
        	        raise EMismatchedSetException.CreateWithBitset(nil, input);end;


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[32] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit;  
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(32, input);
                end;
            end;
            _cnt[32]:=_cnt[32]+1;
        until (false);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "QID"
procedure TFuzzyJava.mQID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:FuzzyJava.g:62:5: ( ID ( ''.'' ID )* )
        // FuzzyJava.g:62:7: ID ( ''.'' ID )*
        begin
        mID(); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:FuzzyJava.g:62:10: ( ''.'' ID )*
        repeat 
            _alt[33]:=2;
            _LA[33,0] := input.LA(1);

            if ( ((_LA[33,0]=$002E)) ) then 
            begin
              _alt[33]:=1;
            end

            ;

            case (_alt[33]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:62:11: ''.'' ID
        	    begin
        	    match($002E);
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    mID(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    finally 
    end;
end;
// $ANTLR end QID// $ANTLR start "QIDStar"
procedure TFuzzyJava.mQIDStar();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:FuzzyJava.g:71:2: ( ID ( ''.'' ID )* ( ''.*'' )? )
        // FuzzyJava.g:71:4: ID ( ''.'' ID )* ( ''.*'' )?
        begin
        mID(); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:FuzzyJava.g:71:7: ( ''.'' ID )*
        repeat 
            _alt[34]:=2;
            _LA[34,0] := input.LA(1);

            if ( ((_LA[34,0]=$002E)) ) then 
            begin
              _LA[34,1] := input.LA(2);

              if ( (((_LA[34,1]>=$0041) and 
              ( _LA[34,1]<=$005A)) or (_LA[34,1]=$005F) or ((_LA[34,1]>=$0061) and 
              ( _LA[34,1]<=$007A))) ) then 
              begin
                _alt[34]:=1;
              end

              ;

            end

            ;

            case (_alt[34]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:71:8: ''.'' ID
        	    begin
        	    match($002E);
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    mID(); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // block:FuzzyJava.g:71:17: ( ''.*'' )?
        _alt[35]:=2;
        _LA[35,0] := input.LA(1);

        if ( ((_LA[35,0]=$002E)) ) then 
        begin
          _alt[35]:=1;
        end
        ;
        case (_alt[35]) of
             1 :
                begin
                // FuzzyJava.g:71:17: ''.*''
                begin
                match('.*');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;

        end;


        end;

    finally 
    end;
end;
// $ANTLR end QIDStar// $ANTLR start "TYPE_RULE"
procedure TFuzzyJava.mTYPE_RULE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:FuzzyJava.g:75:10: ( QID ( ''[]'' )? )
        // FuzzyJava.g:75:14: QID ( ''[]'' )?
        begin
        mQID(); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:FuzzyJava.g:75:18: ( ''[]'' )?
        _alt[36]:=2;
        _LA[36,0] := input.LA(1);

        if ( ((_LA[36,0]=$005B)) ) then 
        begin
          _alt[36]:=1;
        end
        ;
        case (_alt[36]) of
             1 :
                begin
                // FuzzyJava.g:75:18: ''[]''
                begin
                match('[]');
                if (state.failed) then
                begin
                  Exit;
                end;


                end;
                end;

        end;


        end;

    finally 
    end;
end;
// $ANTLR end TYPE_RULE// $ANTLR start "ARG"
procedure TFuzzyJava.mARG();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:FuzzyJava.g:79:5: ( TYPE_RULE WS ID )
        // FuzzyJava.g:79:9: TYPE_RULE WS ID
        begin
        mTYPE_RULE(); 
        if (state.failed) then
        begin
          Exit;
        end;
        mWS(); 
        if (state.failed) then
        begin
          Exit;
        end;
        mID(); 
        if (state.failed) then
        begin
          Exit;
        end;

        end;

    finally 
    end;
end;
// $ANTLR end ARG// $ANTLR start "ID"
procedure TFuzzyJava.mID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:FuzzyJava.g:83:5: ( ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' | ''0'' .. ''9'' )* )
        // FuzzyJava.g:83:9: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' ) ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' | ''0'' .. ''9'' )*
        begin
        if ( ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();
        state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // closureBlock:FuzzyJava.g:83:33: ( ''a'' .. ''z'' | ''A'' .. ''Z'' | ''_'' | ''0'' .. ''9'' )*
        repeat 
            _alt[37]:=2;
            _LA[37,0] := input.LA(1);

            if ( (((_LA[37,0]>=$0030) and 
            ( _LA[37,0]<=$0039)) or ((_LA[37,0]>=$0041) and 
            ( _LA[37,0]<=$005A)) or (_LA[37,0]=$005F) or ((_LA[37,0]>=$0061) and 
            ( _LA[37,0]<=$007A))) ) then 
            begin
              _alt[37]:=1;
            end

            ;

            case (_alt[37]) of
        	 1 :
        	    begin
        	    // FuzzyJava.g:
        	    begin
        	    if ( ((input.LA(1)>=$0030) and (input.LA(1)<=$0039)) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        	    begin
        	        input.consume();
        	    state.failed:=false;
        	    end
        	    else 
        	    begin
        	        if (state.backtracking>0) then 
        	        begin 
        	          state.failed:=true; 
        	          Exit;  
        	        end;
        	        recover(EMismatchedSetException.CreateWithBitset(nil, input));
        	        raise EMismatchedSetException.CreateWithBitset(nil, input);end;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    finally 
    end;
end;
// $ANTLR end ID// $ANTLR start "ESC"
procedure TFuzzyJava.mESC();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:FuzzyJava.g:87:5: ( ''\\'' ( ''"'' | ''\'''' | ''\\'' ) )
        // FuzzyJava.g:87:7: ''\\'' ( ''"'' | ''\'''' | ''\\'' )
        begin
        match($005C);
        if (state.failed) then
        begin
          Exit;
        end;
        if ( (input.LA(1)=$0022) or (input.LA(1)=$0027) or (input.LA(1)=$005C) ) then
        begin
            input.consume();
        state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit;  
            end;
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;


        end;

    finally 
    end;
end;
// $ANTLR end ESC// $ANTLR start "Tokens"
procedure TFuzzyJava.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:FuzzyJava.g:1:39: ( IMPORT | RETURN | CLASS_RULE | METHOD | FIELD | STAT | CALL | COMMENT | SL_COMMENT | STRING_RULE | CHAR | WS )
        _alt[38]:=12;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The FuzzyJava attribute is inherited via the parser, lexer, ...
         *}
        _alt[38] := getDfa38.predict(input);
        case (_alt[38]) of 
             1 :
                begin
                // FuzzyJava.g:1:41: IMPORT
                begin
                mIMPORT(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // FuzzyJava.g:1:48: RETURN
                begin
                mRETURN(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // FuzzyJava.g:1:55: CLASS_RULE
                begin
                mCLASS_RULE(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // FuzzyJava.g:1:66: METHOD
                begin
                mMETHOD(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // FuzzyJava.g:1:73: FIELD
                begin
                mFIELD(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // FuzzyJava.g:1:79: STAT
                begin
                mSTAT(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // FuzzyJava.g:1:84: CALL
                begin
                mCALL(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             8 :
                begin
                // FuzzyJava.g:1:89: COMMENT
                begin
                mCOMMENT(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             9 :
                begin
                // FuzzyJava.g:1:97: SL_COMMENT
                begin
                mSL_COMMENT(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             10 :
                begin
                // FuzzyJava.g:1:108: STRING_RULE
                begin
                mSTRING_RULE(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             11 :
                begin
                // FuzzyJava.g:1:120: CHAR
                begin
                mCHAR(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             12 :
                begin
                // FuzzyJava.g:1:125: WS
                begin
                mWS(); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens// $ANTLR start "synpred1_FuzzyJava"
// $ANTLR start "synpred1_FuzzyJava"
function TFuzzyJava.synpred1_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:41: ( IMPORT )
    // FuzzyJava.g:1:41: IMPORT
    begin
    mIMPORT(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred1_FuzzyJava// $ANTLR start "synpred2_FuzzyJava"
// $ANTLR start "synpred2_FuzzyJava"
function TFuzzyJava.synpred2_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:48: ( RETURN )
    // FuzzyJava.g:1:48: RETURN
    begin
    mRETURN(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred2_FuzzyJava// $ANTLR start "synpred3_FuzzyJava"
// $ANTLR start "synpred3_FuzzyJava"
function TFuzzyJava.synpred3_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:55: ( CLASS_RULE )
    // FuzzyJava.g:1:55: CLASS_RULE
    begin
    mCLASS_RULE(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred3_FuzzyJava// $ANTLR start "synpred4_FuzzyJava"
// $ANTLR start "synpred4_FuzzyJava"
function TFuzzyJava.synpred4_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:66: ( METHOD )
    // FuzzyJava.g:1:66: METHOD
    begin
    mMETHOD(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred4_FuzzyJava// $ANTLR start "synpred5_FuzzyJava"
// $ANTLR start "synpred5_FuzzyJava"
function TFuzzyJava.synpred5_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:73: ( FIELD )
    // FuzzyJava.g:1:73: FIELD
    begin
    mFIELD(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred5_FuzzyJava// $ANTLR start "synpred6_FuzzyJava"
// $ANTLR start "synpred6_FuzzyJava"
function TFuzzyJava.synpred6_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:79: ( STAT )
    // FuzzyJava.g:1:79: STAT
    begin
    mSTAT(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred6_FuzzyJava// $ANTLR start "synpred7_FuzzyJava"
// $ANTLR start "synpred7_FuzzyJava"
function TFuzzyJava.synpred7_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:84: ( CALL )
    // FuzzyJava.g:1:84: CALL
    begin
    mCALL(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred7_FuzzyJava// $ANTLR start "synpred8_FuzzyJava"
// $ANTLR start "synpred8_FuzzyJava"
function TFuzzyJava.synpred8_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:89: ( COMMENT )
    // FuzzyJava.g:1:89: COMMENT
    begin
    mCOMMENT(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred8_FuzzyJava// $ANTLR start "synpred9_FuzzyJava"
// $ANTLR start "synpred9_FuzzyJava"
function TFuzzyJava.synpred9_FuzzyJava_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:FuzzyJava.g:1:97: ( SL_COMMENT )
    // FuzzyJava.g:1:97: SL_COMMENT
    begin
    mSL_COMMENT(); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred9_FuzzyJava

function TFuzzyJava.synpred5_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred5_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred8_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred8_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred9_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred9_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred2_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred2_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred1_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred1_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred3_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred3_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred7_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred7_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred6_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred6_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TFuzzyJava.synpred4_FuzzyJava():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred4_FuzzyJava_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;



function TFuzzyJava.getDfa38:IDFA;
begin
  if not Assigned(dfa38) then
    dfa38:=TAntlrDFA38.Create(self);
  Result:=dfa38;  
end;

constructor TFuzzyJava.TAntlrDFA38.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=38;
  feot:=unpackEncodedString('\23\uffff');
  feof:=unpackEncodedString('\23\uffff');

  FMinc:=unpackEncodedString('\1\11\1\0\2\uffff\1\0\7\uffff\2\0\1\uffff'+
    '\1\0\1\uffff\1\0\1\uffff');

  FMaxc:=unpackEncodedString('\1\172\1\0\2\uffff\1\0\7\uffff\2\0\1\uffff'+
    '\1\0\1\uffff\1\0\1\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\10\1\11\1\uffff\1\1\1\4\1\5\1'+
    '\6\1\7\1\13\1\14\2\uffff\1\12\1\uffff\1\2\1\uffff\1\3');
  fspecial:=unpackEncodedString('\1\uffff\1\0\2\uffff\1\1\7\uffff\1\2\1'+
    '\3\1\uffff\1\4\1\uffff\1\5\1\uffff');
  AddTransition(unpackEncodedString('\2\13\2\uffff\1\13\22\uffff\1\13\1'+
  '\uffff\1\16\4\uffff\1\12\7\uffff\1\1\21\uffff\32\14\4\uffff\1\14\1\uffff'+
  '\2\14\1\21\2\14\1\15\2\14\1\4\10\14\1\17\1\15\3\14\1\15\3\14'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
end;

function TFuzzyJava.TAntlrDFA38.getDescription():string;
begin
  Result:='1:1: Tokens options {k=1; backtrack=true; } : ( IMPORT | RETURN | CLASS_RULE | M'+
  'ETHOD | FIELD | STAT | CALL | COMMENT | SL_COMMENT | STRING_RULE | CHAR | WS );';
end;


function TFuzzyJava.TAntlrDFA38.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: IIntStream;
begin
  input := _input;
  _s := s;
  with TFuzzyJava(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[38,1] := input.LA(1);

		         
		        _index['38_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred8_FuzzyJava()) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( (synpred9_FuzzyJava()) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['38_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[38,4] := input.LA(1);

		         
		        _index['38_4'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred1_FuzzyJava()) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( (synpred4_FuzzyJava()) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( (synpred5_FuzzyJava()) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( (synpred6_FuzzyJava()) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (synpred7_FuzzyJava()) ) then 
		        begin 
		          s := 9;
		        end
		        ;

		         
		        input.seek(_index['38_4']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[38,12] := input.LA(1);

		         
		        _index['38_12'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_FuzzyJava()) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( (synpred5_FuzzyJava()) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( (synpred7_FuzzyJava()) ) then 
		        begin 
		          s := 9;
		        end
		        ;

		         
		        input.seek(_index['38_12']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[38,13] := input.LA(1);

		         
		        _index['38_13'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_FuzzyJava()) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( (synpred5_FuzzyJava()) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( (synpred6_FuzzyJava()) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (synpred7_FuzzyJava()) ) then 
		        begin 
		          s := 9;
		        end
		        ;

		         
		        input.seek(_index['38_13']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[38,15] := input.LA(1);

		         
		        _index['38_15'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred2_FuzzyJava()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (synpred4_FuzzyJava()) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( (synpred5_FuzzyJava()) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( (synpred7_FuzzyJava()) ) then 
		        begin 
		          s := 9;
		        end
		        ;

		         
		        input.seek(_index['38_15']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[38,17] := input.LA(1);

		         
		        _index['38_17'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred3_FuzzyJava()) ) then 
		        begin 
		          s := 18;
		        end

		        else if ( (synpred4_FuzzyJava()) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( (synpred5_FuzzyJava()) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( (synpred7_FuzzyJava()) ) then 
		        begin 
		          s := 9;
		        end
		        ;

		         
		        input.seek(_index['38_17']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 38, _s, input);
    error(nvae);
    raise nvae;
  end;
end;

 


end.