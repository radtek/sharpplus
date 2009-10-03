// $ANTLR 3.1.2 XMLLexer.g 2009-07-23 21:52:51
unit XMLLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TXMLLexer = class(TAntlrLexer)
    public
      const CDATA=16;
      const END_TAG=18;
      const EMPTY_ELEMENT=19;
      const LETTER=20;
      const ATTRIBUTE=12;
      const XMLDECL=4;
      const START_TAG=14;
      const VALUE=10;
      const INTERNAL_DTD=11;
      const EOF=-1;
      const PCDATA=15;
      const WS=5;
      const DOCUMENT=8;
      const GENERIC_ID=9;
      const ELEMENT=7;
      const DOCTYPE=6;
      const PI=13;
      const COMMENT=17;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "DOCUMENT"
    procedure mDOCUMENT();
    // $ANTLR end DOCUMENT

    // $ANTLR start "DOCTYPE"
    procedure mDOCTYPE();
    // $ANTLR end DOCTYPE

    // $ANTLR start "INTERNAL_DTD"
    procedure mINTERNAL_DTD();
    // $ANTLR end INTERNAL_DTD

    // $ANTLR start "PI"
    procedure mPI();
    // $ANTLR end PI

    // $ANTLR start "XMLDECL"
    procedure mXMLDECL();
    // $ANTLR end XMLDECL

    // $ANTLR start "ELEMENT"
    procedure mELEMENT();
    // $ANTLR end ELEMENT

    // $ANTLR start "START_TAG"
    procedure mSTART_TAG();
    // $ANTLR end START_TAG

    // $ANTLR start "EMPTY_ELEMENT"
    procedure mEMPTY_ELEMENT();
    // $ANTLR end EMPTY_ELEMENT

    // $ANTLR start "ATTRIBUTE"
    procedure mATTRIBUTE();
    // $ANTLR end ATTRIBUTE

    // $ANTLR start "END_TAG"
    procedure mEND_TAG();
    // $ANTLR end END_TAG

    // $ANTLR start "COMMENT"
    procedure mCOMMENT();
    // $ANTLR end COMMENT

    // $ANTLR start "CDATA"
    procedure mCDATA();
    // $ANTLR end CDATA

    // $ANTLR start "PCDATA"
    procedure mPCDATA();
    // $ANTLR end PCDATA

    // $ANTLR start "VALUE"
    procedure mVALUE();
    // $ANTLR end VALUE

    // $ANTLR start "GENERIC_ID"
    procedure mGENERIC_ID();
    // $ANTLR end GENERIC_ID

    // $ANTLR start "LETTER"
    procedure mLETTER();
    // $ANTLR end LETTER

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    procedure mTokens();override;

    protected

     
          type TAntlrDFA18=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa18:IDFA;
        protected
          dfa18:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TXMLLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TXMLLexer.Destroy;
begin
 inherited;
end;

function TXMLLexer.GetGrammarFileName():String;
begin
  Result:='XMLLexer.g';
end;

// $ANTLR start "DOCUMENT"
procedure TXMLLexer.mDOCUMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := DOCUMENT;
        _channel := 0;
        // ruleBlockSingleAlt:XMLLexer.g:10:5: ( ( XMLDECL )? ( WS )? ( DOCTYPE )? ( WS )? ELEMENT ( WS )? )
        // XMLLexer.g:10:8: ( XMLDECL )? ( WS )? ( DOCTYPE )? ( WS )? ELEMENT ( WS )?
        begin
        // block:XMLLexer.g:10:8: ( XMLDECL )?
        _alt[1]:=2;
        _LA[1,0] := input.LA(1);

        if ( ((_LA[1,0]=$003C)) ) then 
        begin
          _LA[1,1] := input.LA(2);

          if ( ((_LA[1,1]=$003F)) ) then 
          begin
            _alt[1]:=1;
          end
          ;
        end
        ;
        case (_alt[1]) of
             1 :
                begin
                // XMLLexer.g:10:8: XMLDECL
                begin
                mXMLDECL(); 


                end;
                end;

        end;

        // block:XMLLexer.g:10:17: ( WS )?
        _alt[2]:=2;
        case input.LA(1) of
             $0020: 
                begin
                _alt[2]:=1;
                end;
             $0009: 
                begin
                _alt[2]:=1;
                end;
             $000A: 
                begin
                _alt[2]:=1;
                end;
             $000D: 
                begin
                _alt[2]:=1;
                end;
        end;

        case (_alt[2]) of
             1 :
                begin
                // XMLLexer.g:10:17: WS
                begin
                mWS(); 


                end;
                end;

        end;

        // block:XMLLexer.g:10:21: ( DOCTYPE )?
        _alt[3]:=2;
        _LA[3,0] := input.LA(1);

        if ( ((_LA[3,0]=$003C)) ) then 
        begin
          _LA[3,1] := input.LA(2);

          if ( ((_LA[3,1]=$0021)) ) then 
          begin
            _alt[3]:=1;
          end
          ;
        end
        ;
        case (_alt[3]) of
             1 :
                begin
                // XMLLexer.g:10:21: DOCTYPE
                begin
                mDOCTYPE(); 


                end;
                end;

        end;

        // block:XMLLexer.g:10:30: ( WS )?
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
                // XMLLexer.g:10:30: WS
                begin
                mWS(); 


                end;
                end;

        end;

        mELEMENT(); 

        // block:XMLLexer.g:10:42: ( WS )?
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( (((_LA[5,0]>=$0009) and 
        ( _LA[5,0]<=$000A)) or (_LA[5,0]=$000D) or (_LA[5,0]=$0020)) ) then 
        begin
          _alt[5]:=1;
        end
        ;
        case (_alt[5]) of
             1 :
                begin
                // XMLLexer.g:10:42: WS
                begin
                mWS(); 


                end;
                end;

        end;


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end DOCUMENT// $ANTLR start "DOCTYPE"
procedure TXMLLexer.mDOCTYPE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  rootElementName:IToken;
  sys1:IToken;
  pub:IToken;
  sys2:IToken;
  dtd:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:14:5: ( ''<!DOCTYPE'' WS rootElementName= GENERIC_ID WS ( ( ''SYSTEM'' WS sys1= VALUE | ''PUBLIC'' WS pub= VALUE WS sys2= VALUE ) ( WS )? )? (dtd= INTERNAL_DTD )? ''>'' )
        // XMLLexer.g:15:9: ''<!DOCTYPE'' WS rootElementName= GENERIC_ID WS ( ( ''SYSTEM'' WS sys1= VALUE | ''PUBLIC'' WS pub= VALUE WS sys2= VALUE ) ( WS )? )? (dtd= INTERNAL_DTD )? ''>''
        begin
        match('<!DOCTYPE');


        mWS(); 

        _Start['rootElementName78'] := getCharIndex();
        mGENERIC_ID();
        rootElementName := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['rootElementName78'], getCharIndex()-1);
         Writeln('ROOTELEMENT: '+rootElementName.getText()); 
        mWS(); 

        // block:XMLLexer.g:18:9: ( ( ''SYSTEM'' WS sys1= VALUE | ''PUBLIC'' WS pub= VALUE WS sys2= VALUE ) ( WS )? )?
        _alt[8]:=2;
        _LA[8,0] := input.LA(1);

        if ( ((_LA[8,0]=$0050) or (_LA[8,0]=$0053)) ) then 
        begin
          _alt[8]:=1;
        end
        ;
        case (_alt[8]) of
             1 :
                begin
                // XMLLexer.g:19:13: ( ''SYSTEM'' WS sys1= VALUE | ''PUBLIC'' WS pub= VALUE WS sys2= VALUE ) ( WS )?
                begin
                // block:XMLLexer.g:19:13: ( ''SYSTEM'' WS sys1= VALUE | ''PUBLIC'' WS pub= VALUE WS sys2= VALUE )
                _alt[6]:=2;
                _LA[6,0] := input.LA(1);

                if ( ((_LA[6,0]=$0053)) ) then 
                begin
                  _alt[6]:=1;
                end
                else if ( ((_LA[6,0]=$0050)) ) then 
                begin
                  _alt[6]:=2;
                end
                else begin
                    //Todo:raise ENoViableAltException.CreateNoViable(''
                    raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                    , 6, 0, input);    

                end;
                case (_alt[6]) of
                     1 :
                        begin
                        // XMLLexer.g:19:15: ''SYSTEM'' WS sys1= VALUE
                        begin
                        match('SYSTEM');


                        mWS(); 

                        _Start['sys1135'] := getCharIndex();
                        mVALUE();
                        sys1 := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['sys1135'], getCharIndex()-1);
                         Writeln('SYSTEM: '+sys1.getText()); 

                        end;
                        end;
                     2 :
                        begin
                        // XMLLexer.g:22:15: ''PUBLIC'' WS pub= VALUE WS sys2= VALUE
                        begin
                        match('PUBLIC');


                        mWS(); 

                        _Start['pub195'] := getCharIndex();
                        mVALUE();
                        pub := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['pub195'], getCharIndex()-1);
                        mWS(); 

                        _Start['sys2201'] := getCharIndex();
                        mVALUE();
                        sys2 := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['sys2201'], getCharIndex()-1);
                         Writeln('PUBLIC: '+pub.getText()); 
                         Writeln('SYSTEM: '+sys2.getText()); 

                        end;
                        end;

                end;

                // block:XMLLexer.g:26:13: ( WS )?
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
                        // XMLLexer.g:26:15: WS
                        begin
                        mWS(); 


                        end;
                        end;

                end;


                end;
                end;

        end;

        // block:XMLLexer.g:28:9: (dtd= INTERNAL_DTD )?
        _alt[9]:=2;
        _LA[9,0] := input.LA(1);

        if ( ((_LA[9,0]=$005B)) ) then 
        begin
          _alt[9]:=1;
        end
        ;
        case (_alt[9]) of
             1 :
                begin
                // XMLLexer.g:28:11: dtd= INTERNAL_DTD
                begin
                _Start['dtd301'] := getCharIndex();
                mINTERNAL_DTD();
                dtd := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['dtd301'], getCharIndex()-1);
                 Writeln('INTERNAL DTD: '+dtd.getText()); 

                end;
                end;

        end;

        match($003E);


        end;

    finally 
    end;
end;
// $ANTLR end DOCTYPE// $ANTLR start "INTERNAL_DTD"
procedure TXMLLexer.mINTERNAL_DTD();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:34:23: ( ''['' ( options {greedy=false; } : . )* '']'' )
        // XMLLexer.g:34:25: ''['' ( options {greedy=false; } : . )* '']''
        begin
        match($005B);

        // closureBlock:XMLLexer.g:34:29: ( options {greedy=false; } : . )*
        repeat 
            _alt[10]:=2;
            _LA[10,0] := input.LA(1);

            if ( ((_LA[10,0]=$005D)) ) then 
            begin
              _alt[10]:=2;
            end
            else if ( (((_LA[10,0]>=$0000) and 
            ( _LA[10,0]<=$005C)) or ((_LA[10,0]>=$005E) and 
            ( _LA[10,0]<=$FFFF))) ) then 
            begin
              _alt[10]:=1;
            end

            ;

            case (_alt[10]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:34:56: .
        	    begin
        	    matchAny(); 


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match($005D);


        end;

    finally 
    end;
end;
// $ANTLR end INTERNAL_DTD// $ANTLR start "PI"
procedure TXMLLexer.mPI();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  target:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:36:13: ( ''<?'' target= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* ''?>'' )
        // XMLLexer.g:37:9: ''<?'' target= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* ''?>''
        begin
        match('<?');


        _Start['target384'] := getCharIndex();
        mGENERIC_ID();
        target := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['target384'], getCharIndex()-1);
        // block:XMLLexer.g:37:32: ( WS )?
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
                // XMLLexer.g:37:32: WS
                begin
                mWS(); 


                end;
                end;

        end;

         Writeln('PI: '+target.getText()); 
        // closureBlock:XMLLexer.g:39:9: ( ATTRIBUTE ( WS )? )*
        repeat 
            _alt[13]:=2;
            _LA[13,0] := input.LA(1);

            if ( ((_LA[13,0]=$003A) or ((_LA[13,0]>=$0041) and 
            ( _LA[13,0]<=$005A)) or (_LA[13,0]=$005F) or ((_LA[13,0]>=$0061) and 
            ( _LA[13,0]<=$007A))) ) then 
            begin
              _alt[13]:=1;
            end

            ;

            case (_alt[13]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:39:11: ATTRIBUTE ( WS )?
        	    begin
        	    mATTRIBUTE(); 

        	    // block:XMLLexer.g:39:21: ( WS )?
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
        	            // XMLLexer.g:39:21: WS
        	            begin
        	            mWS(); 


        	            end;
        	            end;

        	    end;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match('?>');



        end;

    finally 
    end;
end;
// $ANTLR end PI// $ANTLR start "XMLDECL"
procedure TXMLLexer.mXMLDECL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:42:18: ( ''<?'' ( ''x'' | ''X'' ) ( ''m'' | ''M'' ) ( ''l'' | ''L'' ) ( WS )? ( ATTRIBUTE ( WS )? )* ''?>'' )
        // XMLLexer.g:43:9: ''<?'' ( ''x'' | ''X'' ) ( ''m'' | ''M'' ) ( ''l'' | ''L'' ) ( WS )? ( ATTRIBUTE ( WS )? )* ''?>''
        begin
        match('<?');


        if ( (input.LA(1)=$0058) or (input.LA(1)=$0078) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        if ( (input.LA(1)=$004D) or (input.LA(1)=$006D) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        if ( (input.LA(1)=$004C) or (input.LA(1)=$006C) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // block:XMLLexer.g:43:44: ( WS )?
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
                // XMLLexer.g:43:44: WS
                begin
                mWS(); 


                end;
                end;

        end;

         Writeln('XML declaration'); 
        // closureBlock:XMLLexer.g:45:9: ( ATTRIBUTE ( WS )? )*
        repeat 
            _alt[16]:=2;
            _LA[16,0] := input.LA(1);

            if ( ((_LA[16,0]=$003A) or ((_LA[16,0]>=$0041) and 
            ( _LA[16,0]<=$005A)) or (_LA[16,0]=$005F) or ((_LA[16,0]>=$0061) and 
            ( _LA[16,0]<=$007A))) ) then 
            begin
              _alt[16]:=1;
            end

            ;

            case (_alt[16]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:45:11: ATTRIBUTE ( WS )?
        	    begin
        	    mATTRIBUTE(); 

        	    // block:XMLLexer.g:45:21: ( WS )?
        	    _alt[15]:=2;
        	    _LA[15,0] := input.LA(1);

        	    if ( (((_LA[15,0]>=$0009) and 
        	    ( _LA[15,0]<=$000A)) or (_LA[15,0]=$000D) or (_LA[15,0]=$0020)) ) then 
        	    begin
        	      _alt[15]:=1;
        	    end
        	    ;
        	    case (_alt[15]) of
        	         1 :
        	            begin
        	            // XMLLexer.g:45:21: WS
        	            begin
        	            mWS(); 


        	            end;
        	            end;

        	    end;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match('?>');



        end;

    finally 
    end;
end;
// $ANTLR end XMLDECL// $ANTLR start "ELEMENT"
procedure TXMLLexer.mELEMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  t:IToken;
  pi:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:50:5: ( ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG | EMPTY_ELEMENT ) )
        // XMLLexer.g:50:7: ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG | EMPTY_ELEMENT )
        begin
        // block:XMLLexer.g:50:7: ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG | EMPTY_ELEMENT )
        _alt[18]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The XMLLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[18] := getDfa18.predict(input);
        case (_alt[18]) of
             1 :
                begin
                // XMLLexer.g:50:9: START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG
                begin
                mSTART_TAG(); 

                // closureBlock:XMLLexer.g:51:13: ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )*
                repeat 
                    _alt[17]:=6;
                    _LA[17,0] := input.LA(1);

                    if ( ((_LA[17,0]=$003C)) ) then 
                    begin
                      case input.LA(2) of
                       $0021: 
                          begin
                          _LA[17,4] := input.LA(3);

                          if ( ((_LA[17,4]=$005B)) ) then 
                          begin
                            _alt[17]:=3;
                          end
                          else if ( ((_LA[17,4]=$002D)) ) then 
                          begin
                            _alt[17]:=4;
                          end

                          ;

                          end;
                       $003F: 
                          begin
                          _alt[17]:=5;
                          end;
                       $0009 , 
                       $000A , 
                       $000D , 
                       $0020 , 
                       $003A , 
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
                          _alt[17]:=1;
                          end;

                      end;

                    end
                    else if ( (((_LA[17,0]>=$0000) and 
                    ( _LA[17,0]<=$003B)) or ((_LA[17,0]>=$003D) and 
                    ( _LA[17,0]<=$FFFF))) ) then 
                    begin
                      _alt[17]:=2;
                    end

                    ;

                    case (_alt[17]) of
                	 1 :
                	    begin
                	    // XMLLexer.g:51:14: ELEMENT
                	    begin
                	    mELEMENT(); 


                	    end;
                	    end;
                	 2 :
                	    begin
                	    // XMLLexer.g:52:15: t= PCDATA
                	    begin
                	    _Start['t548'] := getCharIndex();
                	    mPCDATA();
                	    t := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['t548'], getCharIndex()-1);
                	     Writeln('PCDATA: "'+t.getText()+'"'); 

                	    end;
                	    end;
                	 3 :
                	    begin
                	    // XMLLexer.g:54:15: t= CDATA
                	    begin
                	    _Start['t584'] := getCharIndex();
                	    mCDATA();
                	    t := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['t584'], getCharIndex()-1);
                	     Writeln('CDATA: "'+t.getText()+'"'); 

                	    end;
                	    end;
                	 4 :
                	    begin
                	    // XMLLexer.g:56:15: t= COMMENT
                	    begin
                	    _Start['t620'] := getCharIndex();
                	    mCOMMENT();
                	    t := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['t620'], getCharIndex()-1);
                	     Writeln('Comment: "'+t.getText()+'"'); 

                	    end;
                	    end;
                	 5 :
                	    begin
                	    // XMLLexer.g:58:15: pi= PI
                	    begin
                	    _Start['pi656'] := getCharIndex();
                	    mPI();
                	    pi := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['pi656'], getCharIndex()-1);

                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);

                mEND_TAG(); 


                end;
                end;
             2 :
                begin
                // XMLLexer.g:61:11: EMPTY_ELEMENT
                begin
                mEMPTY_ELEMENT(); 


                end;
                end;

        end;


        end;

    finally 
    end;
end;
// $ANTLR end ELEMENT// $ANTLR start "START_TAG"
procedure TXMLLexer.mSTART_TAG();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:66:5: ( ''<'' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* ''>'' )
        // XMLLexer.g:66:7: ''<'' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* ''>''
        begin
        match($003C);

        // block:XMLLexer.g:66:11: ( WS )?
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
                // XMLLexer.g:66:11: WS
                begin
                mWS(); 


                end;
                end;

        end;

        _Start['name734'] := getCharIndex();
        mGENERIC_ID();
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name734'], getCharIndex()-1);
        // block:XMLLexer.g:66:31: ( WS )?
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
                // XMLLexer.g:66:31: WS
                begin
                mWS(); 


                end;
                end;

        end;

         Writeln('Start Tag: '+name.getText()); 
        // closureBlock:XMLLexer.g:68:9: ( ATTRIBUTE ( WS )? )*
        repeat 
            _alt[22]:=2;
            _LA[22,0] := input.LA(1);

            if ( ((_LA[22,0]=$003A) or ((_LA[22,0]>=$0041) and 
            ( _LA[22,0]<=$005A)) or (_LA[22,0]=$005F) or ((_LA[22,0]>=$0061) and 
            ( _LA[22,0]<=$007A))) ) then 
            begin
              _alt[22]:=1;
            end

            ;

            case (_alt[22]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:68:11: ATTRIBUTE ( WS )?
        	    begin
        	    mATTRIBUTE(); 

        	    // block:XMLLexer.g:68:21: ( WS )?
        	    _alt[21]:=2;
        	    _LA[21,0] := input.LA(1);

        	    if ( (((_LA[21,0]>=$0009) and 
        	    ( _LA[21,0]<=$000A)) or (_LA[21,0]=$000D) or (_LA[21,0]=$0020)) ) then 
        	    begin
        	      _alt[21]:=1;
        	    end
        	    ;
        	    case (_alt[21]) of
        	         1 :
        	            begin
        	            // XMLLexer.g:68:21: WS
        	            begin
        	            mWS(); 


        	            end;
        	            end;

        	    end;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match($003E);


        end;

    finally 
    end;
end;
// $ANTLR end START_TAG// $ANTLR start "EMPTY_ELEMENT"
procedure TXMLLexer.mEMPTY_ELEMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:72:5: ( ''<'' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* ''/>'' )
        // XMLLexer.g:72:7: ''<'' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* ''/>''
        begin
        match($003C);

        // block:XMLLexer.g:72:11: ( WS )?
        _alt[23]:=2;
        _LA[23,0] := input.LA(1);

        if ( (((_LA[23,0]>=$0009) and 
        ( _LA[23,0]<=$000A)) or (_LA[23,0]=$000D) or (_LA[23,0]=$0020)) ) then 
        begin
          _alt[23]:=1;
        end
        ;
        case (_alt[23]) of
             1 :
                begin
                // XMLLexer.g:72:11: WS
                begin
                mWS(); 


                end;
                end;

        end;

        _Start['name796'] := getCharIndex();
        mGENERIC_ID();
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name796'], getCharIndex()-1);
        // block:XMLLexer.g:72:31: ( WS )?
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
                // XMLLexer.g:72:31: WS
                begin
                mWS(); 


                end;
                end;

        end;

         Writeln('Empty Element: '+name.getText()); 
        // closureBlock:XMLLexer.g:74:9: ( ATTRIBUTE ( WS )? )*
        repeat 
            _alt[26]:=2;
            _LA[26,0] := input.LA(1);

            if ( ((_LA[26,0]=$003A) or ((_LA[26,0]>=$0041) and 
            ( _LA[26,0]<=$005A)) or (_LA[26,0]=$005F) or ((_LA[26,0]>=$0061) and 
            ( _LA[26,0]<=$007A))) ) then 
            begin
              _alt[26]:=1;
            end

            ;

            case (_alt[26]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:74:11: ATTRIBUTE ( WS )?
        	    begin
        	    mATTRIBUTE(); 

        	    // block:XMLLexer.g:74:21: ( WS )?
        	    _alt[25]:=2;
        	    _LA[25,0] := input.LA(1);

        	    if ( (((_LA[25,0]>=$0009) and 
        	    ( _LA[25,0]<=$000A)) or (_LA[25,0]=$000D) or (_LA[25,0]=$0020)) ) then 
        	    begin
        	      _alt[25]:=1;
        	    end
        	    ;
        	    case (_alt[25]) of
        	         1 :
        	            begin
        	            // XMLLexer.g:74:21: WS
        	            begin
        	            mWS(); 


        	            end;
        	            end;

        	    end;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match('/>');



        end;

    finally 
    end;
end;
// $ANTLR end EMPTY_ELEMENT// $ANTLR start "ATTRIBUTE"
procedure TXMLLexer.mATTRIBUTE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;
  value:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:78:5: (name= GENERIC_ID ( WS )? ''='' ( WS )? value= VALUE )
        // XMLLexer.g:78:7: name= GENERIC_ID ( WS )? ''='' ( WS )? value= VALUE
        begin
        _Start['name853'] := getCharIndex();
        mGENERIC_ID();
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name853'], getCharIndex()-1);
        // block:XMLLexer.g:78:23: ( WS )?
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
                // XMLLexer.g:78:23: WS
                begin
                mWS(); 


                end;
                end;

        end;

        match($003D);

        // block:XMLLexer.g:78:31: ( WS )?
        _alt[28]:=2;
        _LA[28,0] := input.LA(1);

        if ( (((_LA[28,0]>=$0009) and 
        ( _LA[28,0]<=$000A)) or (_LA[28,0]=$000D) or (_LA[28,0]=$0020)) ) then 
        begin
          _alt[28]:=1;
        end
        ;
        case (_alt[28]) of
             1 :
                begin
                // XMLLexer.g:78:31: WS
                begin
                mWS(); 


                end;
                end;

        end;

        _Start['value865'] := getCharIndex();
        mVALUE();
        value := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['value865'], getCharIndex()-1);
         Writeln('Attr: '+name.getText()+'='+value.getText()); 

        end;

    finally 
    end;
end;
// $ANTLR end ATTRIBUTE// $ANTLR start "END_TAG"
procedure TXMLLexer.mEND_TAG();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
  name:IToken;

begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:83:5: ( ''</'' ( WS )? name= GENERIC_ID ( WS )? ''>'' )
        // XMLLexer.g:83:7: ''</'' ( WS )? name= GENERIC_ID ( WS )? ''>''
        begin
        match('</');


        // block:XMLLexer.g:83:12: ( WS )?
        _alt[29]:=2;
        _LA[29,0] := input.LA(1);

        if ( (((_LA[29,0]>=$0009) and 
        ( _LA[29,0]<=$000A)) or (_LA[29,0]=$000D) or (_LA[29,0]=$0020)) ) then 
        begin
          _alt[29]:=1;
        end
        ;
        case (_alt[29]) of
             1 :
                begin
                // XMLLexer.g:83:12: WS
                begin
                mWS(); 


                end;
                end;

        end;

        _Start['name902'] := getCharIndex();
        mGENERIC_ID();
        name := TAntlrCommonToken.CreateWithStream(input, INVALID_TOKEN_TYPE, DEFAULT_CHANNEL, _Start['name902'], getCharIndex()-1);
        // block:XMLLexer.g:83:32: ( WS )?
        _alt[30]:=2;
        _LA[30,0] := input.LA(1);

        if ( (((_LA[30,0]>=$0009) and 
        ( _LA[30,0]<=$000A)) or (_LA[30,0]=$000D) or (_LA[30,0]=$0020)) ) then 
        begin
          _alt[30]:=1;
        end
        ;
        case (_alt[30]) of
             1 :
                begin
                // XMLLexer.g:83:32: WS
                begin
                mWS(); 


                end;
                end;

        end;

        match($003E);

         Writeln('End Tag: '+name.getText()); 

        end;

    finally 
    end;
end;
// $ANTLR end END_TAG// $ANTLR start "COMMENT"
procedure TXMLLexer.mCOMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:88:2: ( ''<!--'' ( options {greedy=false; } : . )* ''-->'' )
        // XMLLexer.g:88:4: ''<!--'' ( options {greedy=false; } : . )* ''-->''
        begin
        match('<!--');


        // closureBlock:XMLLexer.g:88:11: ( options {greedy=false; } : . )*
        repeat 
            _alt[31]:=2;
            _LA[31,0] := input.LA(1);

            if ( ((_LA[31,0]=$002D)) ) then 
            begin
              _LA[31,1] := input.LA(2);

              if ( ((_LA[31,1]=$002D)) ) then 
              begin
                _LA[31,3] := input.LA(3);

                if ( ((_LA[31,3]=$003E)) ) then 
                begin
                  _alt[31]:=2;
                end
                else if ( (((_LA[31,3]>=$0000) and 
                ( _LA[31,3]<=$003D)) or ((_LA[31,3]>=$003F) and 
                ( _LA[31,3]<=$FFFF))) ) then 
                begin
                  _alt[31]:=1;
                end

                ;

              end
              else if ( (((_LA[31,1]>=$0000) and 
              ( _LA[31,1]<=$002C)) or ((_LA[31,1]>=$002E) and 
              ( _LA[31,1]<=$FFFF))) ) then 
              begin
                _alt[31]:=1;
              end

              ;

            end
            else if ( (((_LA[31,0]>=$0000) and 
            ( _LA[31,0]<=$002C)) or ((_LA[31,0]>=$002E) and 
            ( _LA[31,0]<=$FFFF))) ) then 
            begin
              _alt[31]:=1;
            end

            ;

            case (_alt[31]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:88:38: .
        	    begin
        	    matchAny(); 


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match('-->');



        end;

    finally 
    end;
end;
// $ANTLR end COMMENT// $ANTLR start "CDATA"
procedure TXMLLexer.mCDATA();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:92:2: ( ''<![CDATA['' ( options {greedy=false; } : . )* '']]>'' )
        // XMLLexer.g:92:4: ''<![CDATA['' ( options {greedy=false; } : . )* '']]>''
        begin
        match('<![CDATA[');


        // closureBlock:XMLLexer.g:92:16: ( options {greedy=false; } : . )*
        repeat 
            _alt[32]:=2;
            _LA[32,0] := input.LA(1);

            if ( ((_LA[32,0]=$005D)) ) then 
            begin
              _LA[32,1] := input.LA(2);

              if ( ((_LA[32,1]=$005D)) ) then 
              begin
                _LA[32,3] := input.LA(3);

                if ( ((_LA[32,3]=$003E)) ) then 
                begin
                  _alt[32]:=2;
                end
                else if ( (((_LA[32,3]>=$0000) and 
                ( _LA[32,3]<=$003D)) or ((_LA[32,3]>=$003F) and 
                ( _LA[32,3]<=$FFFF))) ) then 
                begin
                  _alt[32]:=1;
                end

                ;

              end
              else if ( (((_LA[32,1]>=$0000) and 
              ( _LA[32,1]<=$005C)) or ((_LA[32,1]>=$005E) and 
              ( _LA[32,1]<=$FFFF))) ) then 
              begin
                _alt[32]:=1;
              end

              ;

            end
            else if ( (((_LA[32,0]>=$0000) and 
            ( _LA[32,0]<=$005C)) or ((_LA[32,0]>=$005E) and 
            ( _LA[32,0]<=$FFFF))) ) then 
            begin
              _alt[32]:=1;
            end

            ;

            case (_alt[32]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:92:43: .
        	    begin
        	    matchAny(); 


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match(']]>');



        end;

    finally 
    end;
end;
// $ANTLR end CDATA// $ANTLR start "PCDATA"
procedure TXMLLexer.mPCDATA();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:95:17: ( (~ ''<'' )+ )
        // XMLLexer.g:95:19: (~ ''<'' )+
        begin
        // positiveClosureBlock:XMLLexer.g:95:19: (~ ''<'' )+
        _cnt[33]:=0;
        repeat 
            _alt[33]:=2;
            //before decision
            _LA[33,0] := input.LA(1);

            if ( (((_LA[33,0]>=$0000) and 
            ( _LA[33,0]<=$003B)) or ((_LA[33,0]>=$003D) and 
            ( _LA[33,0]<=$FFFF))) ) then 
            begin
              _alt[33]:=1;
            end

            ;

            //after decision
            case (_alt[33]) of 
        	 1 :
        	    begin
        	    // XMLLexer.g:95:20: ~ ''<''
        	    begin
        	    if ( ((input.LA(1)>=$0000) and (input.LA(1)<=$003B)) or ((input.LA(1)>=$003D) and (input.LA(1)<=$FFFF)) ) then
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
        	      if ( _cnt[33] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(33, input);
                end;
            end;
            _cnt[33]:=_cnt[33]+1;
        until (false);


        end;

    finally 
    end;
end;
// $ANTLR end PCDATA// $ANTLR start "VALUE"
procedure TXMLLexer.mVALUE();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:97:16: ( ( ''\"'' (~ ''\"'' )* ''\"'' | ''\'''' (~ ''\'''' )* ''\'''' ) )
        // XMLLexer.g:98:9: ( ''\"'' (~ ''\"'' )* ''\"'' | ''\'''' (~ ''\'''' )* ''\'''' )
        begin
        // block:XMLLexer.g:98:9: ( ''\"'' (~ ''\"'' )* ''\"'' | ''\'''' (~ ''\'''' )* ''\'''' )
        _alt[36]:=2;
        _LA[36,0] := input.LA(1);

        if ( ((_LA[36,0]=$0022)) ) then 
        begin
          _alt[36]:=1;
        end
        else if ( ((_LA[36,0]=$0027)) ) then 
        begin
          _alt[36]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 36, 0, input);    

        end;
        case (_alt[36]) of
             1 :
                begin
                // XMLLexer.g:98:11: ''\"'' (~ ''\"'' )* ''\"''
                begin
                match($0022);

                // closureBlock:XMLLexer.g:98:16: (~ ''\"'' )*
                repeat 
                    _alt[34]:=2;
                    _LA[34,0] := input.LA(1);

                    if ( (((_LA[34,0]>=$0000) and 
                    ( _LA[34,0]<=$0021)) or ((_LA[34,0]>=$0023) and 
                    ( _LA[34,0]<=$FFFF))) ) then 
                    begin
                      _alt[34]:=1;
                    end

                    ;

                    case (_alt[34]) of
                	 1 :
                	    begin
                	    // XMLLexer.g:98:17: ~ ''\"''
                	    begin
                	    if ( ((input.LA(1)>=$0000) and (input.LA(1)<=$0021)) or ((input.LA(1)>=$0023) and (input.LA(1)<=$FFFF)) ) then
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
                end;
             2 :
                begin
                // XMLLexer.g:99:11: ''\'''' (~ ''\'''' )* ''\''''
                begin
                match($0027);

                // closureBlock:XMLLexer.g:99:16: (~ ''\'''' )*
                repeat 
                    _alt[35]:=2;
                    _LA[35,0] := input.LA(1);

                    if ( (((_LA[35,0]>=$0000) and 
                    ( _LA[35,0]<=$0026)) or ((_LA[35,0]>=$0028) and 
                    ( _LA[35,0]<=$FFFF))) ) then 
                    begin
                      _alt[35]:=1;
                    end

                    ;

                    case (_alt[35]) of
                	 1 :
                	    begin
                	    // XMLLexer.g:99:17: ~ ''\''''
                	    begin
                	    if ( ((input.LA(1)>=$0000) and (input.LA(1)<=$0026)) or ((input.LA(1)>=$0028) and (input.LA(1)<=$FFFF)) ) then
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

                match($0027);


                end;
                end;

        end;


        end;

    finally 
    end;
end;
// $ANTLR end VALUE// $ANTLR start "GENERIC_ID"
procedure TXMLLexer.mGENERIC_ID();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:104:5: ( ( LETTER | ''_'' | '':'' ) ( options {greedy=true; } : LETTER | ''0'' .. ''9'' | ''.'' | ''-'' | ''_'' | '':'' )* )
        // XMLLexer.g:104:7: ( LETTER | ''_'' | '':'' ) ( options {greedy=true; } : LETTER | ''0'' .. ''9'' | ''.'' | ''-'' | ''_'' | '':'' )*
        begin
        if ( (input.LA(1)=$003A) or ((input.LA(1)>=$0041) and (input.LA(1)<=$005A)) or (input.LA(1)=$005F) or ((input.LA(1)>=$0061) and (input.LA(1)<=$007A)) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // closureBlock:XMLLexer.g:105:9: ( options {greedy=true; } : LETTER | ''0'' .. ''9'' | ''.'' | ''-'' | ''_'' | '':'' )*
        repeat 
            _alt[37]:=7;
            case input.LA(1) of
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
                _alt[37]:=1;
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
                _alt[37]:=2;
                end;
             $002E: 
                begin
                _alt[37]:=3;
                end;
             $002D: 
                begin
                _alt[37]:=4;
                end;
             $005F: 
                begin
                _alt[37]:=5;
                end;
             $003A: 
                begin
                _alt[37]:=6;
                end;

            end;

            case (_alt[37]) of
        	 1 :
        	    begin
        	    // XMLLexer.g:105:36: LETTER
        	    begin
        	    mLETTER(); 


        	    end;
        	    end;
        	 2 :
        	    begin
        	    // XMLLexer.g:105:45: ''0'' .. ''9''
        	    begin
        	    matchRange($0030,$0039); 


        	    end;
        	    end;
        	 3 :
        	    begin
        	    // XMLLexer.g:105:56: ''.''
        	    begin
        	    match($002E);


        	    end;
        	    end;
        	 4 :
        	    begin
        	    // XMLLexer.g:105:62: ''-''
        	    begin
        	    match($002D);


        	    end;
        	    end;
        	 5 :
        	    begin
        	    // XMLLexer.g:105:68: ''_''
        	    begin
        	    match($005F);


        	    end;
        	    end;
        	 6 :
        	    begin
        	    // XMLLexer.g:105:74: '':''
        	    begin
        	    match($003A);


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
// $ANTLR end GENERIC_ID// $ANTLR start "LETTER"
procedure TXMLLexer.mLETTER();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:109:2: ( ''a'' .. ''z'' | ''A'' .. ''Z'' )
        // XMLLexer.g:
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

    finally 
    end;
end;
// $ANTLR end LETTER// $ANTLR start "WS"
procedure TXMLLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:113:14: ( ( '' '' | ''\t'' | ( ''\n'' | ''\r\n'' | ''\r'' ) )+ )
        // XMLLexer.g:114:9: ( '' '' | ''\t'' | ( ''\n'' | ''\r\n'' | ''\r'' ) )+
        begin
        // positiveClosureBlock:XMLLexer.g:114:9: ( '' '' | ''\t'' | ( ''\n'' | ''\r\n'' | ''\r'' ) )+
        _cnt[39]:=0;
        repeat 
            _alt[39]:=4;
            //before decision
            case input.LA(1) of
             $0020: 
                begin
                _alt[39]:=1;
                end;
             $0009: 
                begin
                _alt[39]:=2;
                end;
             $000A , 
             $000D: 
                begin
                _alt[39]:=3;
                end;

            end;

            //after decision
            case (_alt[39]) of 
        	 1 :
        	    begin
        	    // XMLLexer.g:114:13: '' ''
        	    begin
        	    match($0020);


        	    end;
        	    end;
        	 2 :
        	    begin
        	    // XMLLexer.g:115:13: ''\t''
        	    begin
        	    match($0009);


        	    end;
        	    end;
        	 3 :
        	    begin
        	    // XMLLexer.g:116:12: ( ''\n'' | ''\r\n'' | ''\r'' )
        	    begin
        	    // block:XMLLexer.g:116:12: ( ''\n'' | ''\r\n'' | ''\r'' )
        	    _alt[38]:=3;
        	    _LA[38,0] := input.LA(1);

        	    if ( ((_LA[38,0]=$000A)) ) then 
        	    begin
        	      _alt[38]:=1;
        	    end
        	    else if ( ((_LA[38,0]=$000D)) ) then 
        	    begin
        	      _LA[38,2] := input.LA(2);

        	      if ( ((_LA[38,2]=$000A)) ) then 
        	      begin
        	        _alt[38]:=2;
        	      end
        	      else begin
        	          _alt[38]:=3;end;
        	    end
        	    else begin
        	        //Todo:raise ENoViableAltException.CreateNoViable(''
        	        raise ENoViableAltException.CreateNoViable('ENoViableAltException'
        	        , 38, 0, input);    

        	    end;
        	    case (_alt[38]) of
        	         1 :
        	            begin
        	            // XMLLexer.g:116:14: ''\n''
        	            begin
        	            match($000A);


        	            end;
        	            end;
        	         2 :
        	            begin
        	            // XMLLexer.g:117:15: ''\r\n''
        	            begin
        	            match('\r\n');



        	            end;
        	            end;
        	         3 :
        	            begin
        	            // XMLLexer.g:118:15: ''\r''
        	            begin
        	            match($000D);


        	            end;
        	            end;

        	    end;


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[39] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(39, input);
                end;
            end;
            _cnt[39]:=_cnt[39]+1;
        until (false);


        end;

    finally 
    end;
end;
// $ANTLR end WS// $ANTLR start "Tokens"
procedure TXMLLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:XMLLexer.g:1:8: ( DOCUMENT )
        // XMLLexer.g:1:10: DOCUMENT
        begin
        mDOCUMENT(); 


        end;

    finally 
    end;
end;
// $ANTLR end Tokens



function TXMLLexer.getDfa18:IDFA;
begin
  if not Assigned(dfa18) then
    dfa18:=TAntlrDFA18.Create(self);
  Result:=dfa18;  
end;

constructor TXMLLexer.TAntlrDFA18.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=18;
  feot:=unpackEncodedString('\75\uffff');
  feof:=unpackEncodedString('\75\uffff');

  FMinc:=unpackEncodedString('\1\74\21\11\2\uffff\22\11\2\0\13\11\1\0\1'+
    '\11\1\0\7\11');

  FMaxc:=unpackEncodedString('\1\74\21\172\2\uffff\12\172\1\47\3\172\4\47'+
    '\2\uffff\6\172\4\75\1\47\1\uffff\1\172\1\uffff\1\172\1\75\5\172');
  faccept:=unpackEncodedString('\22\uffff\1\2\1\1\51\uffff');
  fspecial:=unpackEncodedString('\46\uffff\1\0\1\2\13\uffff\1\3\1\uffff'+
    '\1\1\7\uffff');
  AddTransition(unpackEncodedString('\1\1'));
  AddTransition(unpackEncodedString('\1\3\1\4\2\uffff\1\5\22\uffff\1\2\31'+
  '\uffff\1\6\6\uffff\32\6\4\uffff\1\6\1\uffff\32\6'));
  AddTransition(unpackEncodedString('\1\3\1\4\2\uffff\1\5\22\uffff\1\2\31'+
  '\uffff\1\6\6\uffff\32\6\4\uffff\1\6\1\uffff\32\6'));
  AddTransition(unpackEncodedString('\1\3\1\4\2\uffff\1\5\22\uffff\1\2\31'+
  '\uffff\1\6\6\uffff\32\6\4\uffff\1\6\1\uffff\32\6'));
  AddTransition(unpackEncodedString('\1\3\1\4\2\uffff\1\5\22\uffff\1\2\31'+
  '\uffff\1\6\6\uffff\32\6\4\uffff\1\6\1\uffff\32\6'));
  AddTransition(unpackEncodedString('\1\3\1\7\2\uffff\1\5\22\uffff\1\2\31'+
  '\uffff\1\6\6\uffff\32\6\4\uffff\1\6\1\uffff\32\6'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\14\uffff\1\13\1\12\1\22\12\11\1\15\3\uffff\1\23\2\uffff\32\10\4\uffff'+
  '\1\14\1\uffff\32\10'));
  AddTransition(unpackEncodedString('\1\3\1\4\2\uffff\1\5\22\uffff\1\2\31'+
  '\uffff\1\6\6\uffff\32\6\4\uffff\1\6\1\uffff\32\6'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\14\uffff\1\13\1\12\1\22\12\11\1\15\3\uffff\1\23\2\uffff\32\10\4\uffff'+
  '\1\14\1\uffff\32\10'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\14\uffff\1\13\1\12\1\22\12\11\1\15\3\uffff\1\23\2\uffff\32\10\4\uffff'+
  '\1\14\1\uffff\32\10'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\14\uffff\1\13\1\12\1\22\12\11\1\15\3\uffff\1\23\2\uffff\32\10\4\uffff'+
  '\1\14\1\uffff\32\10'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\17\1\40\2\uffff\1\21\22\uffff\1'+
  '\16\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\14\uffff\1\27\1\26\1\22\12\25\1\31\2\uffff\1\36\1\23\2\uffff\32\24'+
  '\4\uffff\1\30\1\uffff\32\24'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\16\uffff\1\22\12\uffff\1\37\2\uffff\1\36\1\23\2\uffff\32\37\4\uffff'+
  '\1\37\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\16\uffff\1\22\12\uffff\1\37\2\uffff\1\36\1\23\2\uffff\32\37\4\uffff'+
  '\1\37\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\16\uffff\1\22\12\uffff\1\37\2\uffff\1\36\1\23\2\uffff\32\37\4\uffff'+
  '\1\37\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\33\1\41\2\uffff\1\35\22\uffff\1'+
  '\32\16\uffff\1\22\12\uffff\1\37\2\uffff\1\36\1\23\2\uffff\32\37\4\uffff'+
  '\1\37\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\43\1\44\2\uffff\1\45\22\uffff\1'+
  '\42\1\uffff\1\46\4\uffff\1\47'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\17\1\20\2\uffff\1\21\22\uffff\1'+
  '\16\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\33\1\34\2\uffff\1\35\22\uffff\1'+
  '\32\16\uffff\1\22\12\uffff\1\37\2\uffff\1\36\1\23\2\uffff\32\37\4\uffff'+
  '\1\37\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\43\1\44\2\uffff\1\45\22\uffff\1'+
  '\42\1\uffff\1\46\4\uffff\1\47'));
  AddTransition(unpackEncodedString('\1\43\1\44\2\uffff\1\45\22\uffff\1'+
  '\42\1\uffff\1\46\4\uffff\1\47'));
  AddTransition(unpackEncodedString('\1\43\1\44\2\uffff\1\45\22\uffff\1'+
  '\42\1\uffff\1\46\4\uffff\1\47'));
  AddTransition(unpackEncodedString('\1\43\1\62\2\uffff\1\45\22\uffff\1'+
  '\42\1\uffff\1\46\4\uffff\1\47'));
  AddTransition(unpackEncodedString('\42\63\1\64\uffdd\63'));
  AddTransition(unpackEncodedString('\47\65\1\66\uffd8\65'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\14\uffff\1\53\1\52\1\uffff\12\51\1\55\2\uffff\1\36\3\uffff\32\50\4'+
  '\uffff\1\54\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\34\uffff\1\36'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\34\uffff\1\36'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\34\uffff\1\36'));
  AddTransition(unpackEncodedString('\1\57\1\67\2\uffff\1\61\22\uffff\1'+
  '\56\34\uffff\1\36'));
  AddTransition(unpackEncodedString('\1\43\1\44\2\uffff\1\45\22\uffff\1'+
  '\42\1\uffff\1\46\4\uffff\1\47'));
  AddTransition(unpackEncodedString('\42\63\1\64\uffdd\63'));
  AddTransition(unpackEncodedString('\1\71\1\72\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\47\65\1\66\uffd8\65'));
  AddTransition(unpackEncodedString('\1\71\1\72\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\57\1\60\2\uffff\1\61\22\uffff\1'+
  '\56\34\uffff\1\36'));
  AddTransition(unpackEncodedString('\1\71\1\72\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\71\1\72\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\71\1\72\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\71\1\74\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
  AddTransition(unpackEncodedString('\1\71\1\72\2\uffff\1\73\22\uffff\1'+
  '\70\16\uffff\1\22\12\uffff\1\37\3\uffff\1\23\2\uffff\32\37\4\uffff\1\37'+
  '\1\uffff\32\37'));
end;

function TXMLLexer.TAntlrDFA18.getDescription():string;
begin
  Result:='50:7: ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_'+
  'TAG | EMPTY_ELEMENT )';
end;


function TXMLLexer.TAntlrDFA18.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: IIntStream;
begin
  input := _input;
  _s := s;
  with TXMLLexer(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[18,38] := input.LA(1);

		        s := -1;
		        if ( (((_LA[18,38]>=$0000) and 
		        ( _LA[18,38]<=$0021)) or ((_LA[18,38]>=$0023) and 
		        ( _LA[18,38]<=$FFFF))) ) then 
		        begin 
		          s := 51;
		        end

		        else if ( ((_LA[18,38]=$0022)) ) then 
		        begin 
		          s := 52;
		        end
		        ;

		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[18,53] := input.LA(1);

		        s := -1;
		        if ( ((_LA[18,53]=$0027)) ) then 
		        begin 
		          s := 54;
		        end

		        else if ( (((_LA[18,53]>=$0000) and 
		        ( _LA[18,53]<=$0026)) or ((_LA[18,53]>=$0028) and 
		        ( _LA[18,53]<=$FFFF))) ) then 
		        begin 
		          s := 53;
		        end
		        ;

		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[18,39] := input.LA(1);

		        s := -1;
		        if ( (((_LA[18,39]>=$0000) and 
		        ( _LA[18,39]<=$0026)) or ((_LA[18,39]>=$0028) and 
		        ( _LA[18,39]<=$FFFF))) ) then 
		        begin 
		          s := 53;
		        end

		        else if ( ((_LA[18,39]=$0027)) ) then 
		        begin 
		          s := 54;
		        end
		        ;

		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[18,51] := input.LA(1);

		        s := -1;
		        if ( ((_LA[18,51]=$0022)) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (((_LA[18,51]>=$0000) and 
		        ( _LA[18,51]<=$0021)) or ((_LA[18,51]>=$0023) and 
		        ( _LA[18,51]<=$FFFF))) ) then 
		        begin 
		          s := 51;
		        end
		        ;

		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 18, _s, input);
    error(nvae);
    raise nvae;
  end;
end;

 


end.