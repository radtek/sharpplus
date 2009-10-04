// $ANTLR 3.2 10 04, 2009 23:19:32 C.g 2009-10-05 01:42:03
unit CLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

type
    TCLexer = class(TAntlrLexer)
    public
      const T__29=29;
      const T__28=28;
      const T__27=27;
      const T__26=26;
      const FloatTypeSuffix=16;
      const T__25=25;
      const T__24=24;
      const T__23=23;
      const LETTER=11;
      const EOF=-1;
      const T__93=93;
      const T__94=94;
      const T__91=91;
      const T__92=92;
      const STRING_LITERAL=9;
      const T__90=90;
      const FLOATING_POINT_LITERAL=10;
      const COMMENT=20;
      const T__99=99;
      const T__98=98;
      const T__97=97;
      const T__96=96;
      const T__95=95;
      const T__80=80;
      const T__81=81;
      const T__82=82;
      const T__83=83;
      const LINE_COMMENT=21;
      const IntegerTypeSuffix=14;
      const CHARACTER_LITERAL=8;
      const T__85=85;
      const T__84=84;
      const T__87=87;
      const T__86=86;
      const T__89=89;
      const T__88=88;
      const T__71=71;
      const WS=19;
      const T__72=72;
      const T__70=70;
      const LINE_COMMAND=22;
      const T__76=76;
      const T__75=75;
      const T__74=74;
      const T__73=73;
      const DECIMAL_LITERAL=7;
      const EscapeSequence=12;
      const T__79=79;
      const T__78=78;
      const T__77=77;
      const T__68=68;
      const T__69=69;
      const T__66=66;
      const T__67=67;
      const T__64=64;
      const T__65=65;
      const T__62=62;
      const T__63=63;
      const Exponent=15;
      const T__61=61;
      const T__60=60;
      const HexDigit=13;
      const T__55=55;
      const T__56=56;
      const T__57=57;
      const T__58=58;
      const T__51=51;
      const T__52=52;
      const T__53=53;
      const T__54=54;
      const IDENTIFIER=4;
      const T__59=59;
      const HEX_LITERAL=5;
      const T__50=50;
      const T__42=42;
      const T__43=43;
      const T__40=40;
      const T__41=41;
      const T__46=46;
      const T__47=47;
      const T__44=44;
      const T__45=45;
      const T__48=48;
      const T__49=49;
      const OCTAL_LITERAL=6;
      const T__100=100;
      const T__30=30;
      const T__31=31;
      const T__32=32;
      const T__33=33;
      const T__34=34;
      const T__35=35;
      const T__36=36;
      const T__37=37;
      const T__38=38;
      const T__39=39;
      const UnicodeEscape=18;
      const OctalEscape=17;
    // delegates
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__23"
    procedure mT__23();
    // $ANTLR end T__23

    // $ANTLR start "T__24"
    procedure mT__24();
    // $ANTLR end T__24

    // $ANTLR start "T__25"
    procedure mT__25();
    // $ANTLR end T__25

    // $ANTLR start "T__26"
    procedure mT__26();
    // $ANTLR end T__26

    // $ANTLR start "T__27"
    procedure mT__27();
    // $ANTLR end T__27

    // $ANTLR start "T__28"
    procedure mT__28();
    // $ANTLR end T__28

    // $ANTLR start "T__29"
    procedure mT__29();
    // $ANTLR end T__29

    // $ANTLR start "T__30"
    procedure mT__30();
    // $ANTLR end T__30

    // $ANTLR start "T__31"
    procedure mT__31();
    // $ANTLR end T__31

    // $ANTLR start "T__32"
    procedure mT__32();
    // $ANTLR end T__32

    // $ANTLR start "T__33"
    procedure mT__33();
    // $ANTLR end T__33

    // $ANTLR start "T__34"
    procedure mT__34();
    // $ANTLR end T__34

    // $ANTLR start "T__35"
    procedure mT__35();
    // $ANTLR end T__35

    // $ANTLR start "T__36"
    procedure mT__36();
    // $ANTLR end T__36

    // $ANTLR start "T__37"
    procedure mT__37();
    // $ANTLR end T__37

    // $ANTLR start "T__38"
    procedure mT__38();
    // $ANTLR end T__38

    // $ANTLR start "T__39"
    procedure mT__39();
    // $ANTLR end T__39

    // $ANTLR start "T__40"
    procedure mT__40();
    // $ANTLR end T__40

    // $ANTLR start "T__41"
    procedure mT__41();
    // $ANTLR end T__41

    // $ANTLR start "T__42"
    procedure mT__42();
    // $ANTLR end T__42

    // $ANTLR start "T__43"
    procedure mT__43();
    // $ANTLR end T__43

    // $ANTLR start "T__44"
    procedure mT__44();
    // $ANTLR end T__44

    // $ANTLR start "T__45"
    procedure mT__45();
    // $ANTLR end T__45

    // $ANTLR start "T__46"
    procedure mT__46();
    // $ANTLR end T__46

    // $ANTLR start "T__47"
    procedure mT__47();
    // $ANTLR end T__47

    // $ANTLR start "T__48"
    procedure mT__48();
    // $ANTLR end T__48

    // $ANTLR start "T__49"
    procedure mT__49();
    // $ANTLR end T__49

    // $ANTLR start "T__50"
    procedure mT__50();
    // $ANTLR end T__50

    // $ANTLR start "T__51"
    procedure mT__51();
    // $ANTLR end T__51

    // $ANTLR start "T__52"
    procedure mT__52();
    // $ANTLR end T__52

    // $ANTLR start "T__53"
    procedure mT__53();
    // $ANTLR end T__53

    // $ANTLR start "T__54"
    procedure mT__54();
    // $ANTLR end T__54

    // $ANTLR start "T__55"
    procedure mT__55();
    // $ANTLR end T__55

    // $ANTLR start "T__56"
    procedure mT__56();
    // $ANTLR end T__56

    // $ANTLR start "T__57"
    procedure mT__57();
    // $ANTLR end T__57

    // $ANTLR start "T__58"
    procedure mT__58();
    // $ANTLR end T__58

    // $ANTLR start "T__59"
    procedure mT__59();
    // $ANTLR end T__59

    // $ANTLR start "T__60"
    procedure mT__60();
    // $ANTLR end T__60

    // $ANTLR start "T__61"
    procedure mT__61();
    // $ANTLR end T__61

    // $ANTLR start "T__62"
    procedure mT__62();
    // $ANTLR end T__62

    // $ANTLR start "T__63"
    procedure mT__63();
    // $ANTLR end T__63

    // $ANTLR start "T__64"
    procedure mT__64();
    // $ANTLR end T__64

    // $ANTLR start "T__65"
    procedure mT__65();
    // $ANTLR end T__65

    // $ANTLR start "T__66"
    procedure mT__66();
    // $ANTLR end T__66

    // $ANTLR start "T__67"
    procedure mT__67();
    // $ANTLR end T__67

    // $ANTLR start "T__68"
    procedure mT__68();
    // $ANTLR end T__68

    // $ANTLR start "T__69"
    procedure mT__69();
    // $ANTLR end T__69

    // $ANTLR start "T__70"
    procedure mT__70();
    // $ANTLR end T__70

    // $ANTLR start "T__71"
    procedure mT__71();
    // $ANTLR end T__71

    // $ANTLR start "T__72"
    procedure mT__72();
    // $ANTLR end T__72

    // $ANTLR start "T__73"
    procedure mT__73();
    // $ANTLR end T__73

    // $ANTLR start "T__74"
    procedure mT__74();
    // $ANTLR end T__74

    // $ANTLR start "T__75"
    procedure mT__75();
    // $ANTLR end T__75

    // $ANTLR start "T__76"
    procedure mT__76();
    // $ANTLR end T__76

    // $ANTLR start "T__77"
    procedure mT__77();
    // $ANTLR end T__77

    // $ANTLR start "T__78"
    procedure mT__78();
    // $ANTLR end T__78

    // $ANTLR start "T__79"
    procedure mT__79();
    // $ANTLR end T__79

    // $ANTLR start "T__80"
    procedure mT__80();
    // $ANTLR end T__80

    // $ANTLR start "T__81"
    procedure mT__81();
    // $ANTLR end T__81

    // $ANTLR start "T__82"
    procedure mT__82();
    // $ANTLR end T__82

    // $ANTLR start "T__83"
    procedure mT__83();
    // $ANTLR end T__83

    // $ANTLR start "T__84"
    procedure mT__84();
    // $ANTLR end T__84

    // $ANTLR start "T__85"
    procedure mT__85();
    // $ANTLR end T__85

    // $ANTLR start "T__86"
    procedure mT__86();
    // $ANTLR end T__86

    // $ANTLR start "T__87"
    procedure mT__87();
    // $ANTLR end T__87

    // $ANTLR start "T__88"
    procedure mT__88();
    // $ANTLR end T__88

    // $ANTLR start "T__89"
    procedure mT__89();
    // $ANTLR end T__89

    // $ANTLR start "T__90"
    procedure mT__90();
    // $ANTLR end T__90

    // $ANTLR start "T__91"
    procedure mT__91();
    // $ANTLR end T__91

    // $ANTLR start "T__92"
    procedure mT__92();
    // $ANTLR end T__92

    // $ANTLR start "T__93"
    procedure mT__93();
    // $ANTLR end T__93

    // $ANTLR start "T__94"
    procedure mT__94();
    // $ANTLR end T__94

    // $ANTLR start "T__95"
    procedure mT__95();
    // $ANTLR end T__95

    // $ANTLR start "T__96"
    procedure mT__96();
    // $ANTLR end T__96

    // $ANTLR start "T__97"
    procedure mT__97();
    // $ANTLR end T__97

    // $ANTLR start "T__98"
    procedure mT__98();
    // $ANTLR end T__98

    // $ANTLR start "T__99"
    procedure mT__99();
    // $ANTLR end T__99

    // $ANTLR start "T__100"
    procedure mT__100();
    // $ANTLR end T__100

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

    // $ANTLR start "DECIMAL_LITERAL"
    procedure mDECIMAL_LITERAL();
    // $ANTLR end DECIMAL_LITERAL

    // $ANTLR start "OCTAL_LITERAL"
    procedure mOCTAL_LITERAL();
    // $ANTLR end OCTAL_LITERAL

    // $ANTLR start "HexDigit"
    procedure mHexDigit();
    // $ANTLR end HexDigit

    // $ANTLR start "IntegerTypeSuffix"
    procedure mIntegerTypeSuffix();
    // $ANTLR end IntegerTypeSuffix

    // $ANTLR start "FLOATING_POINT_LITERAL"
    procedure mFLOATING_POINT_LITERAL();
    // $ANTLR end FLOATING_POINT_LITERAL

    // $ANTLR start "Exponent"
    procedure mExponent();
    // $ANTLR end Exponent

    // $ANTLR start "FloatTypeSuffix"
    procedure mFloatTypeSuffix();
    // $ANTLR end FloatTypeSuffix

    // $ANTLR start "EscapeSequence"
    procedure mEscapeSequence();
    // $ANTLR end EscapeSequence

    // $ANTLR start "OctalEscape"
    procedure mOctalEscape();
    // $ANTLR end OctalEscape

    // $ANTLR start "UnicodeEscape"
    procedure mUnicodeEscape();
    // $ANTLR end UnicodeEscape

    // $ANTLR start "WS"
    procedure mWS();
    // $ANTLR end WS

    // $ANTLR start "COMMENT"
    procedure mCOMMENT();
    // $ANTLR end COMMENT

    // $ANTLR start "LINE_COMMENT"
    procedure mLINE_COMMENT();
    // $ANTLR end LINE_COMMENT

    // $ANTLR start "LINE_COMMAND"
    procedure mLINE_COMMAND();
    // $ANTLR end LINE_COMMAND

    procedure mTokens();override;

    protected

     
          type TAntlrDFA25=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa25:IDFA;
        protected
          dfa25:IDFA;

     
          type TAntlrDFA35=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa35:IDFA;
        protected
          dfa35:IDFA;
    end;

implementation
uses  JclStacks,JclArrayLists,
    // delegates
    // delegators
 
     JclHashSets ;

constructor TCLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
         
end;

destructor TCLexer.Destroy;
begin
 inherited;
end;

function TCLexer.GetGrammarFileName():String;
begin
  Result:='C.g';
end;

// $ANTLR start "T__23"
procedure TCLexer.mT__23();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__23;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:7:7: ( ''typedef'' )
        // C.g:7:9: ''typedef''
        begin
        match('typedef');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__23// $ANTLR start "T__24"
procedure TCLexer.mT__24();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__24;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:8:7: ( '';'' )
        // C.g:8:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__24// $ANTLR start "T__25"
procedure TCLexer.mT__25();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__25;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:9:7: ( '','' )
        // C.g:9:9: '',''
        begin
        match($002C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__25// $ANTLR start "T__26"
procedure TCLexer.mT__26();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__26;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:10:7: ( ''='' )
        // C.g:10:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__26// $ANTLR start "T__27"
procedure TCLexer.mT__27();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__27;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:11:7: ( ''extern'' )
        // C.g:11:9: ''extern''
        begin
        match('extern');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__27// $ANTLR start "T__28"
procedure TCLexer.mT__28();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__28;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:12:7: ( ''static'' )
        // C.g:12:9: ''static''
        begin
        match('static');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__28// $ANTLR start "T__29"
procedure TCLexer.mT__29();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__29;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:13:7: ( ''auto'' )
        // C.g:13:9: ''auto''
        begin
        match('auto');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__29// $ANTLR start "T__30"
procedure TCLexer.mT__30();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__30;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:14:7: ( ''register'' )
        // C.g:14:9: ''register''
        begin
        match('register');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__30// $ANTLR start "T__31"
procedure TCLexer.mT__31();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__31;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:15:7: ( ''void'' )
        // C.g:15:9: ''void''
        begin
        match('void');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__31// $ANTLR start "T__32"
procedure TCLexer.mT__32();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__32;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:16:7: ( ''char'' )
        // C.g:16:9: ''char''
        begin
        match('char');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__32// $ANTLR start "T__33"
procedure TCLexer.mT__33();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__33;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:17:7: ( ''short'' )
        // C.g:17:9: ''short''
        begin
        match('short');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__33// $ANTLR start "T__34"
procedure TCLexer.mT__34();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__34;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:18:7: ( ''int'' )
        // C.g:18:9: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__34// $ANTLR start "T__35"
procedure TCLexer.mT__35();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__35;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:19:7: ( ''long'' )
        // C.g:19:9: ''long''
        begin
        match('long');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__35// $ANTLR start "T__36"
procedure TCLexer.mT__36();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__36;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:20:7: ( ''float'' )
        // C.g:20:9: ''float''
        begin
        match('float');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__36// $ANTLR start "T__37"
procedure TCLexer.mT__37();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__37;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:21:7: ( ''double'' )
        // C.g:21:9: ''double''
        begin
        match('double');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__37// $ANTLR start "T__38"
procedure TCLexer.mT__38();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__38;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:22:7: ( ''signed'' )
        // C.g:22:9: ''signed''
        begin
        match('signed');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__38// $ANTLR start "T__39"
procedure TCLexer.mT__39();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__39;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:23:7: ( ''unsigned'' )
        // C.g:23:9: ''unsigned''
        begin
        match('unsigned');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__39// $ANTLR start "T__40"
procedure TCLexer.mT__40();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__40;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:24:7: ( ''{'' )
        // C.g:24:9: ''{''
        begin
        match($007B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__40// $ANTLR start "T__41"
procedure TCLexer.mT__41();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__41;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:25:7: ( ''}'' )
        // C.g:25:9: ''}''
        begin
        match($007D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__41// $ANTLR start "T__42"
procedure TCLexer.mT__42();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__42;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:26:7: ( ''struct'' )
        // C.g:26:9: ''struct''
        begin
        match('struct');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__42// $ANTLR start "T__43"
procedure TCLexer.mT__43();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__43;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:27:7: ( ''union'' )
        // C.g:27:9: ''union''
        begin
        match('union');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__43// $ANTLR start "T__44"
procedure TCLexer.mT__44();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__44;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:28:7: ( '':'' )
        // C.g:28:9: '':''
        begin
        match($003A);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__44// $ANTLR start "T__45"
procedure TCLexer.mT__45();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__45;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:29:7: ( ''enum'' )
        // C.g:29:9: ''enum''
        begin
        match('enum');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__45// $ANTLR start "T__46"
procedure TCLexer.mT__46();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__46;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:30:7: ( ''const'' )
        // C.g:30:9: ''const''
        begin
        match('const');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__46// $ANTLR start "T__47"
procedure TCLexer.mT__47();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__47;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:31:7: ( ''volatile'' )
        // C.g:31:9: ''volatile''
        begin
        match('volatile');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__47// $ANTLR start "T__48"
procedure TCLexer.mT__48();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__48;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:32:7: ( ''('' )
        // C.g:32:9: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__48// $ANTLR start "T__49"
procedure TCLexer.mT__49();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__49;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:33:7: ( '')'' )
        // C.g:33:9: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__49// $ANTLR start "T__50"
procedure TCLexer.mT__50();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__50;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:34:7: ( ''['' )
        // C.g:34:9: ''[''
        begin
        match($005B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__50// $ANTLR start "T__51"
procedure TCLexer.mT__51();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__51;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:35:7: ( '']'' )
        // C.g:35:9: '']''
        begin
        match($005D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__51// $ANTLR start "T__52"
procedure TCLexer.mT__52();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__52;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:36:7: ( ''*'' )
        // C.g:36:9: ''*''
        begin
        match($002A);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__52// $ANTLR start "T__53"
procedure TCLexer.mT__53();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__53;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:37:7: ( ''...'' )
        // C.g:37:9: ''...''
        begin
        match('...');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__53// $ANTLR start "T__54"
procedure TCLexer.mT__54();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__54;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:38:7: ( ''+'' )
        // C.g:38:9: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__54// $ANTLR start "T__55"
procedure TCLexer.mT__55();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__55;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:39:7: ( ''-'' )
        // C.g:39:9: ''-''
        begin
        match($002D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__55// $ANTLR start "T__56"
procedure TCLexer.mT__56();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__56;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:40:7: ( ''/'' )
        // C.g:40:9: ''/''
        begin
        match($002F);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__56// $ANTLR start "T__57"
procedure TCLexer.mT__57();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__57;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:41:7: ( ''%'' )
        // C.g:41:9: ''%''
        begin
        match($0025);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__57// $ANTLR start "T__58"
procedure TCLexer.mT__58();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__58;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:42:7: ( ''++'' )
        // C.g:42:9: ''++''
        begin
        match('++');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__58// $ANTLR start "T__59"
procedure TCLexer.mT__59();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__59;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:43:7: ( ''--'' )
        // C.g:43:9: ''--''
        begin
        match('--');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__59// $ANTLR start "T__60"
procedure TCLexer.mT__60();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__60;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:44:7: ( ''sizeof'' )
        // C.g:44:9: ''sizeof''
        begin
        match('sizeof');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__60// $ANTLR start "T__61"
procedure TCLexer.mT__61();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__61;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:45:7: ( ''.'' )
        // C.g:45:9: ''.''
        begin
        match($002E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__61// $ANTLR start "T__62"
procedure TCLexer.mT__62();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__62;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:46:7: ( ''->'' )
        // C.g:46:9: ''->''
        begin
        match('->');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__62// $ANTLR start "T__63"
procedure TCLexer.mT__63();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__63;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:47:7: ( ''&'' )
        // C.g:47:9: ''&''
        begin
        match($0026);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__63// $ANTLR start "T__64"
procedure TCLexer.mT__64();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__64;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:48:7: ( ''~'' )
        // C.g:48:9: ''~''
        begin
        match($007E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__64// $ANTLR start "T__65"
procedure TCLexer.mT__65();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__65;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:49:7: ( ''!'' )
        // C.g:49:9: ''!''
        begin
        match($0021);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__65// $ANTLR start "T__66"
procedure TCLexer.mT__66();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__66;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:50:7: ( ''*='' )
        // C.g:50:9: ''*=''
        begin
        match('*=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__66// $ANTLR start "T__67"
procedure TCLexer.mT__67();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__67;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:51:7: ( ''/='' )
        // C.g:51:9: ''/=''
        begin
        match('/=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__67// $ANTLR start "T__68"
procedure TCLexer.mT__68();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__68;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:52:7: ( ''%='' )
        // C.g:52:9: ''%=''
        begin
        match('%=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__68// $ANTLR start "T__69"
procedure TCLexer.mT__69();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__69;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:53:7: ( ''+='' )
        // C.g:53:9: ''+=''
        begin
        match('+=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__69// $ANTLR start "T__70"
procedure TCLexer.mT__70();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__70;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:54:7: ( ''-='' )
        // C.g:54:9: ''-=''
        begin
        match('-=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__70// $ANTLR start "T__71"
procedure TCLexer.mT__71();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__71;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:55:7: ( ''<<='' )
        // C.g:55:9: ''<<=''
        begin
        match('<<=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__71// $ANTLR start "T__72"
procedure TCLexer.mT__72();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__72;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:56:7: ( ''>>='' )
        // C.g:56:9: ''>>=''
        begin
        match('>>=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__72// $ANTLR start "T__73"
procedure TCLexer.mT__73();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__73;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:57:7: ( ''&='' )
        // C.g:57:9: ''&=''
        begin
        match('&=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__73// $ANTLR start "T__74"
procedure TCLexer.mT__74();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__74;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:58:7: ( ''^='' )
        // C.g:58:9: ''^=''
        begin
        match('^=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__74// $ANTLR start "T__75"
procedure TCLexer.mT__75();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__75;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:59:7: ( ''|='' )
        // C.g:59:9: ''|=''
        begin
        match('|=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__75// $ANTLR start "T__76"
procedure TCLexer.mT__76();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__76;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:60:7: ( ''?'' )
        // C.g:60:9: ''?''
        begin
        match($003F);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__76// $ANTLR start "T__77"
procedure TCLexer.mT__77();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__77;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:61:7: ( ''||'' )
        // C.g:61:9: ''||''
        begin
        match('||');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__77// $ANTLR start "T__78"
procedure TCLexer.mT__78();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__78;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:62:7: ( ''&&'' )
        // C.g:62:9: ''&&''
        begin
        match('&&');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__78// $ANTLR start "T__79"
procedure TCLexer.mT__79();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__79;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:63:7: ( ''|'' )
        // C.g:63:9: ''|''
        begin
        match($007C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__79// $ANTLR start "T__80"
procedure TCLexer.mT__80();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__80;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:64:7: ( ''^'' )
        // C.g:64:9: ''^''
        begin
        match($005E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__80// $ANTLR start "T__81"
procedure TCLexer.mT__81();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__81;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:65:7: ( ''=='' )
        // C.g:65:9: ''==''
        begin
        match('==');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__81// $ANTLR start "T__82"
procedure TCLexer.mT__82();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__82;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:66:7: ( ''!='' )
        // C.g:66:9: ''!=''
        begin
        match('!=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__82// $ANTLR start "T__83"
procedure TCLexer.mT__83();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__83;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:67:7: ( ''<'' )
        // C.g:67:9: ''<''
        begin
        match($003C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__83// $ANTLR start "T__84"
procedure TCLexer.mT__84();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__84;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:68:7: ( ''>'' )
        // C.g:68:9: ''>''
        begin
        match($003E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__84// $ANTLR start "T__85"
procedure TCLexer.mT__85();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__85;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:69:7: ( ''<='' )
        // C.g:69:9: ''<=''
        begin
        match('<=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__85// $ANTLR start "T__86"
procedure TCLexer.mT__86();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__86;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:70:7: ( ''>='' )
        // C.g:70:9: ''>=''
        begin
        match('>=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__86// $ANTLR start "T__87"
procedure TCLexer.mT__87();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__87;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:71:7: ( ''<<'' )
        // C.g:71:9: ''<<''
        begin
        match('<<');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__87// $ANTLR start "T__88"
procedure TCLexer.mT__88();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__88;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:72:7: ( ''>>'' )
        // C.g:72:9: ''>>''
        begin
        match('>>');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__88// $ANTLR start "T__89"
procedure TCLexer.mT__89();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__89;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:73:7: ( ''case'' )
        // C.g:73:9: ''case''
        begin
        match('case');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__89// $ANTLR start "T__90"
procedure TCLexer.mT__90();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__90;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:74:7: ( ''default'' )
        // C.g:74:9: ''default''
        begin
        match('default');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__90// $ANTLR start "T__91"
procedure TCLexer.mT__91();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__91;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:75:7: ( ''if'' )
        // C.g:75:9: ''if''
        begin
        match('if');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__91// $ANTLR start "T__92"
procedure TCLexer.mT__92();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__92;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:76:7: ( ''else'' )
        // C.g:76:9: ''else''
        begin
        match('else');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__92// $ANTLR start "T__93"
procedure TCLexer.mT__93();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__93;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:77:7: ( ''switch'' )
        // C.g:77:9: ''switch''
        begin
        match('switch');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__93// $ANTLR start "T__94"
procedure TCLexer.mT__94();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__94;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:78:7: ( ''while'' )
        // C.g:78:9: ''while''
        begin
        match('while');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__94// $ANTLR start "T__95"
procedure TCLexer.mT__95();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__95;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:79:7: ( ''do'' )
        // C.g:79:9: ''do''
        begin
        match('do');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__95// $ANTLR start "T__96"
procedure TCLexer.mT__96();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__96;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:80:7: ( ''for'' )
        // C.g:80:9: ''for''
        begin
        match('for');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__96// $ANTLR start "T__97"
procedure TCLexer.mT__97();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__97;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:81:7: ( ''goto'' )
        // C.g:81:9: ''goto''
        begin
        match('goto');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__97// $ANTLR start "T__98"
procedure TCLexer.mT__98();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__98;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:82:7: ( ''continue'' )
        // C.g:82:9: ''continue''
        begin
        match('continue');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__98// $ANTLR start "T__99"
procedure TCLexer.mT__99();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__99;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:83:7: ( ''break'' )
        // C.g:83:9: ''break''
        begin
        match('break');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__99// $ANTLR start "T__100"
procedure TCLexer.mT__100();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__100;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:84:8: ( ''return'' )
        // C.g:84:10: ''return''
        begin
        match('return');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__100// $ANTLR start "IDENTIFIER"
procedure TCLexer.mIDENTIFIER();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := IDENTIFIER;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:452:2: ( LETTER ( LETTER | ''0'' .. ''9'' )* )
        // C.g:452:4: LETTER ( LETTER | ''0'' .. ''9'' )*
        begin
        mLETTER(); 

        // closureBlock:C.g:452:11: ( LETTER | ''0'' .. ''9'' )*
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
        	    // C.g:
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
procedure TCLexer.mLETTER();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:C.g:457:2: ( ''$'' | ''A'' .. ''Z'' | ''a'' .. ''z'' | ''_'' )
        // C.g:
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
procedure TCLexer.mCHARACTER_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := CHARACTER_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:464:5: ( ''\'''' ( EscapeSequence | ~ ( ''\'''' | ''\\'' ) ) ''\'''' )
        // C.g:464:9: ''\'''' ( EscapeSequence | ~ ( ''\'''' | ''\\'' ) ) ''\''''
        begin
        match($0027);

        // block:C.g:464:14: ( EscapeSequence | ~ ( ''\'''' | ''\\'' ) )
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=$005C)) ) then 
        begin
          _alt[2]:=1;
        end
        else if ( (((_LA[2,0]>=$0000) and 
        ( _LA[2,0]<=$0026)) or ((_LA[2,0]>=$0028) and 
        ( _LA[2,0]<=$005B)) or ((_LA[2,0]>=$005D) and 
        ( _LA[2,0]<=$FFFF))) ) then 
        begin
          _alt[2]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 2, 0, input);    

        end;
        case (_alt[2]) of
             1 :
                begin
                // C.g:464:16: EscapeSequence
                begin
                mEscapeSequence(); 


                end;
                end;
             2 :
                begin
                // C.g:464:33: ~ ( ''\'''' | ''\\'' )
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
// $ANTLR end CHARACTER_LITERAL// $ANTLR start "STRING_LITERAL"
procedure TCLexer.mSTRING_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := STRING_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:468:5: ( ''"'' ( EscapeSequence | ~ ( ''\\'' | ''"'' ) )* ''"'' )
        // C.g:468:8: ''"'' ( EscapeSequence | ~ ( ''\\'' | ''"'' ) )* ''"''
        begin
        match($0022);

        // closureBlock:C.g:468:12: ( EscapeSequence | ~ ( ''\\'' | ''"'' ) )*
        repeat 
            _alt[3]:=3;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=$005C)) ) then 
            begin
              _alt[3]:=1;
            end
            else if ( (((_LA[3,0]>=$0000) and 
            ( _LA[3,0]<=$0021)) or ((_LA[3,0]>=$0023) and 
            ( _LA[3,0]<=$005B)) or ((_LA[3,0]>=$005D) and 
            ( _LA[3,0]<=$FFFF))) ) then 
            begin
              _alt[3]:=2;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // C.g:468:14: EscapeSequence
        	    begin
        	    mEscapeSequence(); 


        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:468:31: ~ ( ''\\'' | ''"'' )
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
procedure TCLexer.mHEX_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := HEX_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:471:13: ( ''0'' ( ''x'' | ''X'' ) ( HexDigit )+ ( IntegerTypeSuffix )? )
        // C.g:471:15: ''0'' ( ''x'' | ''X'' ) ( HexDigit )+ ( IntegerTypeSuffix )?
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

        // positiveClosureBlock:C.g:471:29: ( HexDigit )+
        _cnt[4]:=0;
        repeat 
            _alt[4]:=2;
            //before decision
            _LA[4,0] := input.LA(1);

            if ( (((_LA[4,0]>=$0030) and 
            ( _LA[4,0]<=$0039)) or ((_LA[4,0]>=$0041) and 
            ( _LA[4,0]<=$0046)) or ((_LA[4,0]>=$0061) and 
            ( _LA[4,0]<=$0066))) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            //after decision
            case (_alt[4]) of 
        	 1 :
        	    begin
        	    // C.g:471:29: HexDigit
        	    begin
        	    mHexDigit(); 


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[4] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(4, input);
                end;
            end;
            _cnt[4]:=_cnt[4]+1;
        until (false);

        // block:C.g:471:39: ( IntegerTypeSuffix )?
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=$004C) or (_LA[5,0]=$0055) or (_LA[5,0]=$006C) or (_LA[5,0]=$0075)) ) then 
        begin
          _alt[5]:=1;
        end
        ;
        case (_alt[5]) of
             1 :
                begin
                // C.g:471:39: IntegerTypeSuffix
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
// $ANTLR end HEX_LITERAL// $ANTLR start "DECIMAL_LITERAL"
procedure TCLexer.mDECIMAL_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := DECIMAL_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:473:17: ( ( ''0'' | ''1'' .. ''9'' ( ''0'' .. ''9'' )* ) ( IntegerTypeSuffix )? )
        // C.g:473:19: ( ''0'' | ''1'' .. ''9'' ( ''0'' .. ''9'' )* ) ( IntegerTypeSuffix )?
        begin
        // block:C.g:473:19: ( ''0'' | ''1'' .. ''9'' ( ''0'' .. ''9'' )* )
        _alt[7]:=2;
        _LA[7,0] := input.LA(1);

        if ( ((_LA[7,0]=$0030)) ) then 
        begin
          _alt[7]:=1;
        end
        else if ( (((_LA[7,0]>=$0031) and 
        ( _LA[7,0]<=$0039))) ) then 
        begin
          _alt[7]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 7, 0, input);    

        end;
        case (_alt[7]) of
             1 :
                begin
                // C.g:473:20: ''0''
                begin
                match($0030);


                end;
                end;
             2 :
                begin
                // C.g:473:26: ''1'' .. ''9'' ( ''0'' .. ''9'' )*
                begin
                matchRange($0031,$0039); 

                // closureBlock:C.g:473:35: ( ''0'' .. ''9'' )*
                repeat 
                    _alt[6]:=2;
                    _LA[6,0] := input.LA(1);

                    if ( (((_LA[6,0]>=$0030) and 
                    ( _LA[6,0]<=$0039))) ) then 
                    begin
                      _alt[6]:=1;
                    end

                    ;

                    case (_alt[6]) of
                	 1 :
                	    begin
                	    // C.g:473:35: ''0'' .. ''9''
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

        // block:C.g:473:46: ( IntegerTypeSuffix )?
        _alt[8]:=2;
        _LA[8,0] := input.LA(1);

        if ( ((_LA[8,0]=$004C) or (_LA[8,0]=$0055) or (_LA[8,0]=$006C) or (_LA[8,0]=$0075)) ) then 
        begin
          _alt[8]:=1;
        end
        ;
        case (_alt[8]) of
             1 :
                begin
                // C.g:473:46: IntegerTypeSuffix
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
// $ANTLR end DECIMAL_LITERAL// $ANTLR start "OCTAL_LITERAL"
procedure TCLexer.mOCTAL_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := OCTAL_LITERAL;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:475:15: ( ''0'' ( ''0'' .. ''7'' )+ ( IntegerTypeSuffix )? )
        // C.g:475:17: ''0'' ( ''0'' .. ''7'' )+ ( IntegerTypeSuffix )?
        begin
        match($0030);

        // positiveClosureBlock:C.g:475:21: ( ''0'' .. ''7'' )+
        _cnt[9]:=0;
        repeat 
            _alt[9]:=2;
            //before decision
            _LA[9,0] := input.LA(1);

            if ( (((_LA[9,0]>=$0030) and 
            ( _LA[9,0]<=$0037))) ) then 
            begin
              _alt[9]:=1;
            end

            ;

            //after decision
            case (_alt[9]) of 
        	 1 :
        	    begin
        	    // C.g:475:22: ''0'' .. ''7''
        	    begin
        	    matchRange($0030,$0037); 


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[9] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(9, input);
                end;
            end;
            _cnt[9]:=_cnt[9]+1;
        until (false);

        // block:C.g:475:33: ( IntegerTypeSuffix )?
        _alt[10]:=2;
        _LA[10,0] := input.LA(1);

        if ( ((_LA[10,0]=$004C) or (_LA[10,0]=$0055) or (_LA[10,0]=$006C) or (_LA[10,0]=$0075)) ) then 
        begin
          _alt[10]:=1;
        end
        ;
        case (_alt[10]) of
             1 :
                begin
                // C.g:475:33: IntegerTypeSuffix
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
// $ANTLR end OCTAL_LITERAL// $ANTLR start "HexDigit"
procedure TCLexer.mHexDigit();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:C.g:478:10: ( ( ''0'' .. ''9'' | ''a'' .. ''f'' | ''A'' .. ''F'' ) )
        // C.g:478:12: ( ''0'' .. ''9'' | ''a'' .. ''f'' | ''A'' .. ''F'' )
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
procedure TCLexer.mIntegerTypeSuffix();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:C.g:482:2: ( ( ''u'' | ''U'' )? ( ''l'' | ''L'' ) | ( ''u'' | ''U'' ) ( ''l'' | ''L'' )? )
        _alt[13]:=2;
        _LA[13,0] := input.LA(1);

        if ( ((_LA[13,0]=$0055) or (_LA[13,0]=$0075)) ) then 
        begin
          _LA[13,1] := input.LA(2);

          if ( ((_LA[13,1]=$004C) or (_LA[13,1]=$006C)) ) then 
          begin
            _alt[13]:=1;
          end
          else begin
              _alt[13]:=2;end;
        end
        else if ( ((_LA[13,0]=$004C) or (_LA[13,0]=$006C)) ) then 
        begin
          _alt[13]:=1;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 13, 0, input);    

        end;
        case (_alt[13]) of 
             1 :
                begin
                // C.g:482:4: ( ''u'' | ''U'' )? ( ''l'' | ''L'' )
                begin
                // block:C.g:482:4: ( ''u'' | ''U'' )?
                _alt[11]:=2;
                _LA[11,0] := input.LA(1);

                if ( ((_LA[11,0]=$0055) or (_LA[11,0]=$0075)) ) then 
                begin
                  _alt[11]:=1;
                end
                ;
                case (_alt[11]) of
                     1 :
                        begin
                        // C.g:
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
                // C.g:483:4: ( ''u'' | ''U'' ) ( ''l'' | ''L'' )?
                begin
                if ( (input.LA(1)=$0055) or (input.LA(1)=$0075) ) then
                begin
                    input.consume();

                end
                else 
                begin
                    recover(EMismatchedSetException.CreateWithBitset(nil, input));
                    raise EMismatchedSetException.CreateWithBitset(nil, input);end;

                // block:C.g:483:15: ( ''l'' | ''L'' )?
                _alt[12]:=2;
                _LA[12,0] := input.LA(1);

                if ( ((_LA[12,0]=$004C) or (_LA[12,0]=$006C)) ) then 
                begin
                  _alt[12]:=1;
                end
                ;
                case (_alt[12]) of
                     1 :
                        begin
                        // C.g:
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
// $ANTLR end IntegerTypeSuffix// $ANTLR start "FLOATING_POINT_LITERAL"
procedure TCLexer.mFLOATING_POINT_LITERAL();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := FLOATING_POINT_LITERAL;
        _channel := 0;
        // ruleBlock:C.g:487:5: ( ( ''0'' .. ''9'' )+ ''.'' ( ''0'' .. ''9'' )* ( Exponent )? ( FloatTypeSuffix )? | ''.'' ( ''0'' .. ''9'' )+ ( Exponent )? ( FloatTypeSuffix )? | ( ''0'' .. ''9'' )+ Exponent ( FloatTypeSuffix )? | ( ''0'' .. ''9'' )+ ( Exponent )? FloatTypeSuffix )
        _alt[25]:=4;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[25] := getDfa25.predict(input);
        case (_alt[25]) of 
             1 :
                begin
                // C.g:487:9: ( ''0'' .. ''9'' )+ ''.'' ( ''0'' .. ''9'' )* ( Exponent )? ( FloatTypeSuffix )?
                begin
                // positiveClosureBlock:C.g:487:9: ( ''0'' .. ''9'' )+
                _cnt[14]:=0;
                repeat 
                    _alt[14]:=2;
                    //before decision
                    _LA[14,0] := input.LA(1);

                    if ( (((_LA[14,0]>=$0030) and 
                    ( _LA[14,0]<=$0039))) ) then 
                    begin
                      _alt[14]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[14]) of 
                	 1 :
                	    begin
                	    // C.g:487:10: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[14] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(14, input);
                        end;
                    end;
                    _cnt[14]:=_cnt[14]+1;
                until (false);

                match($002E);

                // closureBlock:C.g:487:25: ( ''0'' .. ''9'' )*
                repeat 
                    _alt[15]:=2;
                    _LA[15,0] := input.LA(1);

                    if ( (((_LA[15,0]>=$0030) and 
                    ( _LA[15,0]<=$0039))) ) then 
                    begin
                      _alt[15]:=1;
                    end

                    ;

                    case (_alt[15]) of
                	 1 :
                	    begin
                	    // C.g:487:26: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);

                // block:C.g:487:37: ( Exponent )?
                _alt[16]:=2;
                _LA[16,0] := input.LA(1);

                if ( ((_LA[16,0]=$0045) or (_LA[16,0]=$0065)) ) then 
                begin
                  _alt[16]:=1;
                end
                ;
                case (_alt[16]) of
                     1 :
                        begin
                        // C.g:487:37: Exponent
                        begin
                        mExponent(); 


                        end;
                        end;

                end;

                // block:C.g:487:47: ( FloatTypeSuffix )?
                _alt[17]:=2;
                _LA[17,0] := input.LA(1);

                if ( ((_LA[17,0]=$0044) or (_LA[17,0]=$0046) or (_LA[17,0]=$0064) or (_LA[17,0]=$0066)) ) then 
                begin
                  _alt[17]:=1;
                end
                ;
                case (_alt[17]) of
                     1 :
                        begin
                        // C.g:487:47: FloatTypeSuffix
                        begin
                        mFloatTypeSuffix(); 


                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // C.g:488:9: ''.'' ( ''0'' .. ''9'' )+ ( Exponent )? ( FloatTypeSuffix )?
                begin
                match($002E);

                // positiveClosureBlock:C.g:488:13: ( ''0'' .. ''9'' )+
                _cnt[18]:=0;
                repeat 
                    _alt[18]:=2;
                    //before decision
                    _LA[18,0] := input.LA(1);

                    if ( (((_LA[18,0]>=$0030) and 
                    ( _LA[18,0]<=$0039))) ) then 
                    begin
                      _alt[18]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[18]) of 
                	 1 :
                	    begin
                	    // C.g:488:14: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[18] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(18, input);
                        end;
                    end;
                    _cnt[18]:=_cnt[18]+1;
                until (false);

                // block:C.g:488:25: ( Exponent )?
                _alt[19]:=2;
                _LA[19,0] := input.LA(1);

                if ( ((_LA[19,0]=$0045) or (_LA[19,0]=$0065)) ) then 
                begin
                  _alt[19]:=1;
                end
                ;
                case (_alt[19]) of
                     1 :
                        begin
                        // C.g:488:25: Exponent
                        begin
                        mExponent(); 


                        end;
                        end;

                end;

                // block:C.g:488:35: ( FloatTypeSuffix )?
                _alt[20]:=2;
                _LA[20,0] := input.LA(1);

                if ( ((_LA[20,0]=$0044) or (_LA[20,0]=$0046) or (_LA[20,0]=$0064) or (_LA[20,0]=$0066)) ) then 
                begin
                  _alt[20]:=1;
                end
                ;
                case (_alt[20]) of
                     1 :
                        begin
                        // C.g:488:35: FloatTypeSuffix
                        begin
                        mFloatTypeSuffix(); 


                        end;
                        end;

                end;


                end;
                end;
             3 :
                begin
                // C.g:489:9: ( ''0'' .. ''9'' )+ Exponent ( FloatTypeSuffix )?
                begin
                // positiveClosureBlock:C.g:489:9: ( ''0'' .. ''9'' )+
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
                	    // C.g:489:10: ''0'' .. ''9''
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

                mExponent(); 

                // block:C.g:489:30: ( FloatTypeSuffix )?
                _alt[22]:=2;
                _LA[22,0] := input.LA(1);

                if ( ((_LA[22,0]=$0044) or (_LA[22,0]=$0046) or (_LA[22,0]=$0064) or (_LA[22,0]=$0066)) ) then 
                begin
                  _alt[22]:=1;
                end
                ;
                case (_alt[22]) of
                     1 :
                        begin
                        // C.g:489:30: FloatTypeSuffix
                        begin
                        mFloatTypeSuffix(); 


                        end;
                        end;

                end;


                end;
                end;
             4 :
                begin
                // C.g:490:9: ( ''0'' .. ''9'' )+ ( Exponent )? FloatTypeSuffix
                begin
                // positiveClosureBlock:C.g:490:9: ( ''0'' .. ''9'' )+
                _cnt[23]:=0;
                repeat 
                    _alt[23]:=2;
                    //before decision
                    _LA[23,0] := input.LA(1);

                    if ( (((_LA[23,0]>=$0030) and 
                    ( _LA[23,0]<=$0039))) ) then 
                    begin
                      _alt[23]:=1;
                    end

                    ;

                    //after decision
                    case (_alt[23]) of 
                	 1 :
                	    begin
                	    // C.g:490:10: ''0'' .. ''9''
                	    begin
                	    matchRange($0030,$0039); 


                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[23] >= 1 ) then
                	        break ;
                	        raise EEarlyExitException.CreateWithDecision(23, input);
                        end;
                    end;
                    _cnt[23]:=_cnt[23]+1;
                until (false);

                // block:C.g:490:21: ( Exponent )?
                _alt[24]:=2;
                _LA[24,0] := input.LA(1);

                if ( ((_LA[24,0]=$0045) or (_LA[24,0]=$0065)) ) then 
                begin
                  _alt[24]:=1;
                end
                ;
                case (_alt[24]) of
                     1 :
                        begin
                        // C.g:490:21: Exponent
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
// $ANTLR end FLOATING_POINT_LITERAL// $ANTLR start "Exponent"
procedure TCLexer.mExponent();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:C.g:494:10: ( ( ''e'' | ''E'' ) ( ''+'' | ''-'' )? ( ''0'' .. ''9'' )+ )
        // C.g:494:12: ( ''e'' | ''E'' ) ( ''+'' | ''-'' )? ( ''0'' .. ''9'' )+
        begin
        if ( (input.LA(1)=$0045) or (input.LA(1)=$0065) ) then
        begin
            input.consume();

        end
        else 
        begin
            recover(EMismatchedSetException.CreateWithBitset(nil, input));
            raise EMismatchedSetException.CreateWithBitset(nil, input);end;

        // block:C.g:494:22: ( ''+'' | ''-'' )?
        _alt[26]:=2;
        _LA[26,0] := input.LA(1);

        if ( ((_LA[26,0]=$002B) or (_LA[26,0]=$002D)) ) then 
        begin
          _alt[26]:=1;
        end
        ;
        case (_alt[26]) of
             1 :
                begin
                // C.g:
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

        // positiveClosureBlock:C.g:494:33: ( ''0'' .. ''9'' )+
        _cnt[27]:=0;
        repeat 
            _alt[27]:=2;
            //before decision
            _LA[27,0] := input.LA(1);

            if ( (((_LA[27,0]>=$0030) and 
            ( _LA[27,0]<=$0039))) ) then 
            begin
              _alt[27]:=1;
            end

            ;

            //after decision
            case (_alt[27]) of 
        	 1 :
        	    begin
        	    // C.g:494:34: ''0'' .. ''9''
        	    begin
        	    matchRange($0030,$0039); 


        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[27] >= 1 ) then
        	        break ;
        	        raise EEarlyExitException.CreateWithDecision(27, input);
                end;
            end;
            _cnt[27]:=_cnt[27]+1;
        until (false);


        end;

    finally 
    end;
end;
// $ANTLR end Exponent// $ANTLR start "FloatTypeSuffix"
procedure TCLexer.mFloatTypeSuffix();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:C.g:497:17: ( ( ''f'' | ''F'' | ''d'' | ''D'' ) )
        // C.g:497:19: ( ''f'' | ''F'' | ''d'' | ''D'' )
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
// $ANTLR end FloatTypeSuffix// $ANTLR start "EscapeSequence"
procedure TCLexer.mEscapeSequence();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:C.g:501:5: ( ''\\'' ( ''b'' | ''t'' | ''n'' | ''f'' | ''r'' | ''\"'' | ''\'''' | ''\\'' ) | OctalEscape )
        _alt[28]:=2;
        _LA[28,0] := input.LA(1);

        if ( ((_LA[28,0]=$005C)) ) then 
        begin
          _LA[28,1] := input.LA(2);

          if ( ((_LA[28,1]=$0022) or (_LA[28,1]=$0027) or (_LA[28,1]=$005C) or (_LA[28,1]=$0062) or (_LA[28,1]=$0066) or (_LA[28,1]=$006E) or (_LA[28,1]=$0072) or (_LA[28,1]=$0074)) ) then 
          begin
            _alt[28]:=1;
          end
          else if ( (((_LA[28,1]>=$0030) and 
          ( _LA[28,1]<=$0037))) ) then 
          begin
            _alt[28]:=2;
          end
          else begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 28, 1, input);    

          end;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 28, 0, input);    

        end;
        case (_alt[28]) of 
             1 :
                begin
                // C.g:501:9: ''\\'' ( ''b'' | ''t'' | ''n'' | ''f'' | ''r'' | ''\"'' | ''\'''' | ''\\'' )
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
                // C.g:502:9: OctalEscape
                begin
                mOctalEscape(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end EscapeSequence// $ANTLR start "OctalEscape"
procedure TCLexer.mOctalEscape();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:C.g:507:5: ( ''\\'' ( ''0'' .. ''3'' ) ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' ) | ''\\'' ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' ) | ''\\'' ( ''0'' .. ''7'' ) )
        _alt[29]:=3;
        _LA[29,0] := input.LA(1);

        if ( ((_LA[29,0]=$005C)) ) then 
        begin
          _LA[29,1] := input.LA(2);

          if ( (((_LA[29,1]>=$0030) and 
          ( _LA[29,1]<=$0033))) ) then 
          begin
            _LA[29,2] := input.LA(3);

            if ( (((_LA[29,2]>=$0030) and 
            ( _LA[29,2]<=$0037))) ) then 
            begin
              _LA[29,5] := input.LA(4);

              if ( (((_LA[29,5]>=$0030) and 
              ( _LA[29,5]<=$0037))) ) then 
              begin
                _alt[29]:=1;
              end
              else begin
                  _alt[29]:=2;end;
            end
            else begin
                _alt[29]:=3;end;
          end
          else if ( (((_LA[29,1]>=$0034) and 
          ( _LA[29,1]<=$0037))) ) then 
          begin
            _LA[29,3] := input.LA(3);

            if ( (((_LA[29,3]>=$0030) and 
            ( _LA[29,3]<=$0037))) ) then 
            begin
              _alt[29]:=2;
            end
            else begin
                _alt[29]:=3;end;
          end
          else begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 29, 1, input);    

          end;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 29, 0, input);    

        end;
        case (_alt[29]) of 
             1 :
                begin
                // C.g:507:9: ''\\'' ( ''0'' .. ''3'' ) ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' )
                begin
                match($005C);

                // blockSingleAlt:C.g:507:14: ( ''0'' .. ''3'' )
                // C.g:507:15: ''0'' .. ''3''
                begin
                matchRange($0030,$0033); 


                end;

                // blockSingleAlt:C.g:507:25: ( ''0'' .. ''7'' )
                // C.g:507:26: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;

                // blockSingleAlt:C.g:507:36: ( ''0'' .. ''7'' )
                // C.g:507:37: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;


                end;
                end;
             2 :
                begin
                // C.g:508:9: ''\\'' ( ''0'' .. ''7'' ) ( ''0'' .. ''7'' )
                begin
                match($005C);

                // blockSingleAlt:C.g:508:14: ( ''0'' .. ''7'' )
                // C.g:508:15: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;

                // blockSingleAlt:C.g:508:25: ( ''0'' .. ''7'' )
                // C.g:508:26: ''0'' .. ''7''
                begin
                matchRange($0030,$0037); 


                end;


                end;
                end;
             3 :
                begin
                // C.g:509:9: ''\\'' ( ''0'' .. ''7'' )
                begin
                match($005C);

                // blockSingleAlt:C.g:509:14: ( ''0'' .. ''7'' )
                // C.g:509:15: ''0'' .. ''7''
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
procedure TCLexer.mUnicodeEscape();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlockSingleAlt:C.g:514:5: ( ''\\'' ''u'' HexDigit HexDigit HexDigit HexDigit )
        // C.g:514:9: ''\\'' ''u'' HexDigit HexDigit HexDigit HexDigit
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
// $ANTLR end UnicodeEscape// $ANTLR start "WS"
procedure TCLexer.mWS();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := WS;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:517:5: ( ( '' '' | ''\r'' | ''\t'' | ''\u000C'' | ''\n'' ) )
        // C.g:517:8: ( '' '' | ''\r'' | ''\t'' | ''\u000C'' | ''\n'' )
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
procedure TCLexer.mCOMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:521:5: ( ''/*'' ( options {greedy=false; } : . )* ''*/'' )
        // C.g:521:9: ''/*'' ( options {greedy=false; } : . )* ''*/''
        begin
        match('/*');


        // closureBlock:C.g:521:14: ( options {greedy=false; } : . )*
        repeat 
            _alt[30]:=2;
            _LA[30,0] := input.LA(1);

            if ( ((_LA[30,0]=$002A)) ) then 
            begin
              _LA[30,1] := input.LA(2);

              if ( ((_LA[30,1]=$002F)) ) then 
              begin
                _alt[30]:=2;
              end
              else if ( (((_LA[30,1]>=$0000) and 
              ( _LA[30,1]<=$002E)) or ((_LA[30,1]>=$0030) and 
              ( _LA[30,1]<=$FFFF))) ) then 
              begin
                _alt[30]:=1;
              end

              ;

            end
            else if ( (((_LA[30,0]>=$0000) and 
            ( _LA[30,0]<=$0029)) or ((_LA[30,0]>=$002B) and 
            ( _LA[30,0]<=$FFFF))) ) then 
            begin
              _alt[30]:=1;
            end

            ;

            case (_alt[30]) of
        	 1 :
        	    begin
        	    // C.g:521:42: .
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
procedure TCLexer.mLINE_COMMENT();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LINE_COMMENT;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:525:5: ( ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n'' )
        // C.g:525:7: ''//'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n''
        begin
        match('//');


        // closureBlock:C.g:525:12: (~ ( ''\n'' | ''\r'' ) )*
        repeat 
            _alt[31]:=2;
            _LA[31,0] := input.LA(1);

            if ( (((_LA[31,0]>=$0000) and 
            ( _LA[31,0]<=$0009)) or ((_LA[31,0]>=$000B) and 
            ( _LA[31,0]<=$000C)) or ((_LA[31,0]>=$000E) and 
            ( _LA[31,0]<=$FFFF))) ) then 
            begin
              _alt[31]:=1;
            end

            ;

            case (_alt[31]) of
        	 1 :
        	    begin
        	    // C.g:525:12: ~ ( ''\n'' | ''\r'' )
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

        // block:C.g:525:26: ( ''\r'' )?
        _alt[32]:=2;
        _LA[32,0] := input.LA(1);

        if ( ((_LA[32,0]=$000D)) ) then 
        begin
          _alt[32]:=1;
        end
        ;
        case (_alt[32]) of
             1 :
                begin
                // C.g:525:26: ''\r''
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
// $ANTLR end LINE_COMMENT// $ANTLR start "LINE_COMMAND"
procedure TCLexer.mLINE_COMMAND();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := LINE_COMMAND;
        _channel := 0;
        // ruleBlockSingleAlt:C.g:530:5: ( ''#'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n'' )
        // C.g:530:7: ''#'' (~ ( ''\n'' | ''\r'' ) )* ( ''\r'' )? ''\n''
        begin
        match($0023);

        // closureBlock:C.g:530:11: (~ ( ''\n'' | ''\r'' ) )*
        repeat 
            _alt[33]:=2;
            _LA[33,0] := input.LA(1);

            if ( (((_LA[33,0]>=$0000) and 
            ( _LA[33,0]<=$0009)) or ((_LA[33,0]>=$000B) and 
            ( _LA[33,0]<=$000C)) or ((_LA[33,0]>=$000E) and 
            ( _LA[33,0]<=$FFFF))) ) then 
            begin
              _alt[33]:=1;
            end

            ;

            case (_alt[33]) of
        	 1 :
        	    begin
        	    // C.g:530:11: ~ ( ''\n'' | ''\r'' )
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

        // block:C.g:530:25: ( ''\r'' )?
        _alt[34]:=2;
        _LA[34,0] := input.LA(1);

        if ( ((_LA[34,0]=$000D)) ) then 
        begin
          _alt[34]:=1;
        end
        ;
        case (_alt[34]) of
             1 :
                begin
                // C.g:530:25: ''\r''
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
// $ANTLR end LINE_COMMAND// $ANTLR start "Tokens"
procedure TCLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:C.g:1:8: ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL | OCTAL_LITERAL | FLOATING_POINT_LITERAL | WS | COMMENT | LINE_COMMENT | LINE_COMMAND )
        _alt[35]:=89;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[35] := getDfa35.predict(input);
        case (_alt[35]) of 
             1 :
                begin
                // C.g:1:10: T__23
                begin
                mT__23(); 


                end;
                end;
             2 :
                begin
                // C.g:1:16: T__24
                begin
                mT__24(); 


                end;
                end;
             3 :
                begin
                // C.g:1:22: T__25
                begin
                mT__25(); 


                end;
                end;
             4 :
                begin
                // C.g:1:28: T__26
                begin
                mT__26(); 


                end;
                end;
             5 :
                begin
                // C.g:1:34: T__27
                begin
                mT__27(); 


                end;
                end;
             6 :
                begin
                // C.g:1:40: T__28
                begin
                mT__28(); 


                end;
                end;
             7 :
                begin
                // C.g:1:46: T__29
                begin
                mT__29(); 


                end;
                end;
             8 :
                begin
                // C.g:1:52: T__30
                begin
                mT__30(); 


                end;
                end;
             9 :
                begin
                // C.g:1:58: T__31
                begin
                mT__31(); 


                end;
                end;
             10 :
                begin
                // C.g:1:64: T__32
                begin
                mT__32(); 


                end;
                end;
             11 :
                begin
                // C.g:1:70: T__33
                begin
                mT__33(); 


                end;
                end;
             12 :
                begin
                // C.g:1:76: T__34
                begin
                mT__34(); 


                end;
                end;
             13 :
                begin
                // C.g:1:82: T__35
                begin
                mT__35(); 


                end;
                end;
             14 :
                begin
                // C.g:1:88: T__36
                begin
                mT__36(); 


                end;
                end;
             15 :
                begin
                // C.g:1:94: T__37
                begin
                mT__37(); 


                end;
                end;
             16 :
                begin
                // C.g:1:100: T__38
                begin
                mT__38(); 


                end;
                end;
             17 :
                begin
                // C.g:1:106: T__39
                begin
                mT__39(); 


                end;
                end;
             18 :
                begin
                // C.g:1:112: T__40
                begin
                mT__40(); 


                end;
                end;
             19 :
                begin
                // C.g:1:118: T__41
                begin
                mT__41(); 


                end;
                end;
             20 :
                begin
                // C.g:1:124: T__42
                begin
                mT__42(); 


                end;
                end;
             21 :
                begin
                // C.g:1:130: T__43
                begin
                mT__43(); 


                end;
                end;
             22 :
                begin
                // C.g:1:136: T__44
                begin
                mT__44(); 


                end;
                end;
             23 :
                begin
                // C.g:1:142: T__45
                begin
                mT__45(); 


                end;
                end;
             24 :
                begin
                // C.g:1:148: T__46
                begin
                mT__46(); 


                end;
                end;
             25 :
                begin
                // C.g:1:154: T__47
                begin
                mT__47(); 


                end;
                end;
             26 :
                begin
                // C.g:1:160: T__48
                begin
                mT__48(); 


                end;
                end;
             27 :
                begin
                // C.g:1:166: T__49
                begin
                mT__49(); 


                end;
                end;
             28 :
                begin
                // C.g:1:172: T__50
                begin
                mT__50(); 


                end;
                end;
             29 :
                begin
                // C.g:1:178: T__51
                begin
                mT__51(); 


                end;
                end;
             30 :
                begin
                // C.g:1:184: T__52
                begin
                mT__52(); 


                end;
                end;
             31 :
                begin
                // C.g:1:190: T__53
                begin
                mT__53(); 


                end;
                end;
             32 :
                begin
                // C.g:1:196: T__54
                begin
                mT__54(); 


                end;
                end;
             33 :
                begin
                // C.g:1:202: T__55
                begin
                mT__55(); 


                end;
                end;
             34 :
                begin
                // C.g:1:208: T__56
                begin
                mT__56(); 


                end;
                end;
             35 :
                begin
                // C.g:1:214: T__57
                begin
                mT__57(); 


                end;
                end;
             36 :
                begin
                // C.g:1:220: T__58
                begin
                mT__58(); 


                end;
                end;
             37 :
                begin
                // C.g:1:226: T__59
                begin
                mT__59(); 


                end;
                end;
             38 :
                begin
                // C.g:1:232: T__60
                begin
                mT__60(); 


                end;
                end;
             39 :
                begin
                // C.g:1:238: T__61
                begin
                mT__61(); 


                end;
                end;
             40 :
                begin
                // C.g:1:244: T__62
                begin
                mT__62(); 


                end;
                end;
             41 :
                begin
                // C.g:1:250: T__63
                begin
                mT__63(); 


                end;
                end;
             42 :
                begin
                // C.g:1:256: T__64
                begin
                mT__64(); 


                end;
                end;
             43 :
                begin
                // C.g:1:262: T__65
                begin
                mT__65(); 


                end;
                end;
             44 :
                begin
                // C.g:1:268: T__66
                begin
                mT__66(); 


                end;
                end;
             45 :
                begin
                // C.g:1:274: T__67
                begin
                mT__67(); 


                end;
                end;
             46 :
                begin
                // C.g:1:280: T__68
                begin
                mT__68(); 


                end;
                end;
             47 :
                begin
                // C.g:1:286: T__69
                begin
                mT__69(); 


                end;
                end;
             48 :
                begin
                // C.g:1:292: T__70
                begin
                mT__70(); 


                end;
                end;
             49 :
                begin
                // C.g:1:298: T__71
                begin
                mT__71(); 


                end;
                end;
             50 :
                begin
                // C.g:1:304: T__72
                begin
                mT__72(); 


                end;
                end;
             51 :
                begin
                // C.g:1:310: T__73
                begin
                mT__73(); 


                end;
                end;
             52 :
                begin
                // C.g:1:316: T__74
                begin
                mT__74(); 


                end;
                end;
             53 :
                begin
                // C.g:1:322: T__75
                begin
                mT__75(); 


                end;
                end;
             54 :
                begin
                // C.g:1:328: T__76
                begin
                mT__76(); 


                end;
                end;
             55 :
                begin
                // C.g:1:334: T__77
                begin
                mT__77(); 


                end;
                end;
             56 :
                begin
                // C.g:1:340: T__78
                begin
                mT__78(); 


                end;
                end;
             57 :
                begin
                // C.g:1:346: T__79
                begin
                mT__79(); 


                end;
                end;
             58 :
                begin
                // C.g:1:352: T__80
                begin
                mT__80(); 


                end;
                end;
             59 :
                begin
                // C.g:1:358: T__81
                begin
                mT__81(); 


                end;
                end;
             60 :
                begin
                // C.g:1:364: T__82
                begin
                mT__82(); 


                end;
                end;
             61 :
                begin
                // C.g:1:370: T__83
                begin
                mT__83(); 


                end;
                end;
             62 :
                begin
                // C.g:1:376: T__84
                begin
                mT__84(); 


                end;
                end;
             63 :
                begin
                // C.g:1:382: T__85
                begin
                mT__85(); 


                end;
                end;
             64 :
                begin
                // C.g:1:388: T__86
                begin
                mT__86(); 


                end;
                end;
             65 :
                begin
                // C.g:1:394: T__87
                begin
                mT__87(); 


                end;
                end;
             66 :
                begin
                // C.g:1:400: T__88
                begin
                mT__88(); 


                end;
                end;
             67 :
                begin
                // C.g:1:406: T__89
                begin
                mT__89(); 


                end;
                end;
             68 :
                begin
                // C.g:1:412: T__90
                begin
                mT__90(); 


                end;
                end;
             69 :
                begin
                // C.g:1:418: T__91
                begin
                mT__91(); 


                end;
                end;
             70 :
                begin
                // C.g:1:424: T__92
                begin
                mT__92(); 


                end;
                end;
             71 :
                begin
                // C.g:1:430: T__93
                begin
                mT__93(); 


                end;
                end;
             72 :
                begin
                // C.g:1:436: T__94
                begin
                mT__94(); 


                end;
                end;
             73 :
                begin
                // C.g:1:442: T__95
                begin
                mT__95(); 


                end;
                end;
             74 :
                begin
                // C.g:1:448: T__96
                begin
                mT__96(); 


                end;
                end;
             75 :
                begin
                // C.g:1:454: T__97
                begin
                mT__97(); 


                end;
                end;
             76 :
                begin
                // C.g:1:460: T__98
                begin
                mT__98(); 


                end;
                end;
             77 :
                begin
                // C.g:1:466: T__99
                begin
                mT__99(); 


                end;
                end;
             78 :
                begin
                // C.g:1:472: T__100
                begin
                mT__100(); 


                end;
                end;
             79 :
                begin
                // C.g:1:479: IDENTIFIER
                begin
                mIDENTIFIER(); 


                end;
                end;
             80 :
                begin
                // C.g:1:490: CHARACTER_LITERAL
                begin
                mCHARACTER_LITERAL(); 


                end;
                end;
             81 :
                begin
                // C.g:1:508: STRING_LITERAL
                begin
                mSTRING_LITERAL(); 


                end;
                end;
             82 :
                begin
                // C.g:1:523: HEX_LITERAL
                begin
                mHEX_LITERAL(); 


                end;
                end;
             83 :
                begin
                // C.g:1:535: DECIMAL_LITERAL
                begin
                mDECIMAL_LITERAL(); 


                end;
                end;
             84 :
                begin
                // C.g:1:551: OCTAL_LITERAL
                begin
                mOCTAL_LITERAL(); 


                end;
                end;
             85 :
                begin
                // C.g:1:565: FLOATING_POINT_LITERAL
                begin
                mFLOATING_POINT_LITERAL(); 


                end;
                end;
             86 :
                begin
                // C.g:1:588: WS
                begin
                mWS(); 


                end;
                end;
             87 :
                begin
                // C.g:1:591: COMMENT
                begin
                mCOMMENT(); 


                end;
                end;
             88 :
                begin
                // C.g:1:599: LINE_COMMENT
                begin
                mLINE_COMMENT(); 


                end;
                end;
             89 :
                begin
                // C.g:1:612: LINE_COMMAND
                begin
                mLINE_COMMAND(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TCLexer.getDfa25:IDFA;
begin
  if not Assigned(dfa25) then
    dfa25:=TAntlrDFA25.Create(self);
  Result:=dfa25;  
end;

constructor TCLexer.TAntlrDFA25.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=25;
  feot:=unpackEncodedString('\7\uffff\1\10\2\uffff');
  feof:=unpackEncodedString('\12\uffff');

  FMinc:=unpackEncodedString('\2\56\2\uffff\1\53\1\uffff\2\60\2\uffff');

  FMaxc:=unpackEncodedString('\1\71\1\146\2\uffff\1\71\1\uffff\1\71\1\146'+
    '\2\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\1\1\uffff\1\4\2\uffff\2\3');
  fspecial:=unpackEncodedString('\12\uffff');
  AddTransition(unpackEncodedString('\1\2\1\uffff\12\1'));
  AddTransition(unpackEncodedString('\1\3\1\uffff\12\1\12\uffff\1\5\1\4'+
  '\1\5\35\uffff\1\5\1\4\1\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\6\1\uffff\1\6\2\uffff\12\7'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\12\7'));
  AddTransition(unpackEncodedString('\12\7\12\uffff\1\11\1\uffff\1\11\35'+
  '\uffff\1\11\1\uffff\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCLexer.TAntlrDFA25.getDescription():string;
begin
  Result:='486:1: FLOATING_POINT_LITERAL : ( ( ''0'' .. ''9'' )+ ''.'' ( ''0'' .. ''9'' )* ( Exponent'+
  ' )? ( FloatTypeSuffix )? | ''.'' ( ''0'' .. ''9'' )+ ( Exponent )? ( FloatTypeSuffix )'+
  '? | ( ''0'' .. ''9'' )+ Exponent ( FloatTypeSuffix )? | ( ''0'' .. ''9'' )+ ( Exponent )'+
  '? FloatTypeSuffix );';
end;




function TCLexer.getDfa35:IDFA;
begin
  if not Assigned(dfa35) then
    dfa35:=TAntlrDFA35.Create(self);
  Result:=dfa35;  
end;

constructor TCLexer.TAntlrDFA35.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=35;
  feot:=unpackEncodedString('\1\uffff\1\50\2\uffff\1\61\13\50\7\uffff\1'+
    '\110\1\112\1\116\1\122\1\126\1\130\1\133\1\uffff\1\135\1\140\1\143\1'+
    '\145\1\150\1\uffff\3\50\3\uffff\2\156\2\uffff\1\50\2\uffff\16\50\1\u0083'+
    '\3\50\1\u0088\2\50\27\uffff\1\u008d\2\uffff\1\u008f\7\uffff\3\50\1\uffff'+
    '\1\u0093\1\uffff\1\156\22\50\1\u00a7\1\uffff\2\50\1\u00aa\1\50\1\uffff'+
    '\3\50\4\uffff\3\50\1\uffff\2\50\1\u00b4\1\u00b5\6\50\1\u00bc\2\50\1'+
    '\u00bf\1\50\1\u00c1\2\50\1\u00c4\1\uffff\1\u00c5\1\50\1\uffff\5\50\1'+
    '\u00cc\3\50\2\uffff\2\50\1\u00d2\3\50\1\uffff\2\50\1\uffff\1\50\1\uffff'+
    '\1\u00d9\1\50\2\uffff\1\u00db\3\50\1\u00df\1\u00e0\1\uffff\1\u00e1\1'+
    '\50\1\u00e3\1\u00e4\1\u00e5\1\uffff\1\u00e6\1\u00e7\1\u00e8\1\50\1\u00ea'+
    '\1\50\1\uffff\1\50\1\uffff\1\u00ed\2\50\3\uffff\1\u00f0\6\uffff\1\50'+
    '\1\uffff\2\50\1\uffff\1\u00f4\1\50\1\uffff\1\u00f6\1\u00f7\1\u00f8\1'+
    '\uffff\1\u00f9\4\uffff');
  feof:=unpackEncodedString('\u00fa\uffff');

  FMinc:=unpackEncodedString('\1\11\1\171\2\uffff\1\75\1\154\1\150\1\165'+
    '\1\145\1\157\1\141\1\146\1\157\1\154\1\145\1\156\7\uffff\1\75\1\56\1'+
    '\53\1\55\1\52\1\75\1\46\1\uffff\1\75\1\74\3\75\1\uffff\1\150\1\157\1'+
    '\162\3\uffff\2\56\2\uffff\1\160\2\uffff\1\164\1\165\1\163\1\141\1\157'+
    '\1\147\1\151\1\164\1\147\1\151\1\141\1\156\1\163\1\164\1\44\1\156\1'+
    '\157\1\162\1\44\1\146\1\151\27\uffff\1\75\2\uffff\1\75\7\uffff\1\151'+
    '\1\164\1\145\1\uffff\1\56\1\uffff\1\56\2\145\1\155\1\145\1\164\1\165'+
    '\1\162\1\156\1\145\1\164\1\157\1\151\1\165\1\144\1\141\1\162\1\163\1'+
    '\145\1\44\1\uffff\1\147\1\141\1\44\1\142\1\uffff\1\141\1\151\1\157\4'+
    '\uffff\1\154\1\157\1\141\1\uffff\1\144\1\162\2\44\1\151\1\143\1\164'+
    '\1\145\1\157\1\143\1\44\1\163\1\162\1\44\1\164\1\44\1\164\1\151\1\44'+
    '\1\uffff\1\44\1\164\1\uffff\1\154\1\165\1\147\1\156\1\145\1\44\1\153'+
    '\1\145\1\156\2\uffff\1\143\1\164\1\44\1\144\1\146\1\150\1\uffff\1\164'+
    '\1\156\1\uffff\1\151\1\uffff\1\44\1\156\2\uffff\1\44\1\145\1\154\1\156'+
    '\2\44\1\uffff\1\44\1\146\3\44\1\uffff\3\44\1\145\1\44\1\154\1\uffff'+
    '\1\165\1\uffff\1\44\1\164\1\145\3\uffff\1\44\6\uffff\1\162\1\uffff\2'+
    '\145\1\uffff\1\44\1\144\1\uffff\3\44\1\uffff\1\44\4\uffff');

  FMaxc:=unpackEncodedString('\1\176\1\171\2\uffff\1\75\1\170\1\167\1\165'+
    '\1\145\2\157\1\156\3\157\1\156\7\uffff\1\75\1\71\1\75\1\76\3\75\1\uffff'+
    '\2\75\1\76\1\75\1\174\1\uffff\1\150\1\157\1\162\3\uffff\1\170\1\146'+
    '\2\uffff\1\160\2\uffff\1\164\1\165\1\163\1\162\1\157\1\172\1\151\2\164'+
    '\1\154\1\141\1\156\1\163\1\164\1\172\1\156\1\157\1\162\1\172\1\146\1'+
    '\163\27\uffff\1\75\2\uffff\1\75\7\uffff\1\151\1\164\1\145\1\uffff\1'+
    '\146\1\uffff\1\146\2\145\1\155\1\145\1\164\1\165\1\162\1\156\1\145\1'+
    '\164\1\157\1\151\1\165\1\144\1\141\1\162\1\164\1\145\1\172\1\uffff\1'+
    '\147\1\141\1\172\1\142\1\uffff\1\141\1\151\1\157\4\uffff\1\154\1\157'+
    '\1\141\1\uffff\1\144\1\162\2\172\1\151\1\143\1\164\1\145\1\157\1\143'+
    '\1\172\1\163\1\162\1\172\1\164\1\172\1\164\1\151\1\172\1\uffff\1\172'+
    '\1\164\1\uffff\1\154\1\165\1\147\1\156\1\145\1\172\1\153\1\145\1\156'+
    '\2\uffff\1\143\1\164\1\172\1\144\1\146\1\150\1\uffff\1\164\1\156\1\uffff'+
    '\1\151\1\uffff\1\172\1\156\2\uffff\1\172\1\145\1\154\1\156\2\172\1\uffff'+
    '\1\172\1\146\3\172\1\uffff\3\172\1\145\1\172\1\154\1\uffff\1\165\1\uffff'+
    '\1\172\1\164\1\145\3\uffff\1\172\6\uffff\1\162\1\uffff\2\145\1\uffff'+
    '\1\172\1\144\1\uffff\3\172\1\uffff\1\172\4\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\3\14\uffff\1\22\1\23\1\26'+
    '\1\32\1\33\1\34\1\35\7\uffff\1\52\5\uffff\1\66\3\uffff\1\117\1\120\1'+
    '\121\2\uffff\1\126\1\131\1\uffff\1\73\1\4\25\uffff\1\54\1\36\1\37\1'+
    '\47\1\125\1\44\1\57\1\40\1\45\1\50\1\60\1\41\1\55\1\127\1\130\1\42\1'+
    '\56\1\43\1\63\1\70\1\51\1\74\1\53\1\uffff\1\77\1\75\1\uffff\1\100\1'+
    '\76\1\64\1\72\1\65\1\67\1\71\3\uffff\1\122\1\uffff\1\123\24\uffff\1'+
    '\105\4\uffff\1\111\3\uffff\1\61\1\101\1\62\1\102\3\uffff\1\124\23\uffff'+
    '\1\14\2\uffff\1\112\11\uffff\1\27\1\106\6\uffff\1\7\2\uffff\1\11\1\uffff'+
    '\1\12\2\uffff\1\103\1\15\6\uffff\1\113\5\uffff\1\13\6\uffff\1\30\1\uffff'+
    '\1\16\3\uffff\1\25\1\110\1\115\1\uffff\1\5\1\6\1\24\1\20\1\46\1\107'+
    '\1\uffff\1\116\2\uffff\1\17\2\uffff\1\1\3\uffff\1\104\1\uffff\1\10\1'+
    '\31\1\114\1\21');
  fspecial:=unpackEncodedString('\u00fa\uffff');
  AddTransition(unpackEncodedString('\2\55\1\uffff\2\55\22\uffff\1\55\1'+
  '\37\1\52\1\56\1\50\1\34\1\35\1\51\1\23\1\24\1\27\1\31\1\3\1\32\1\30\1'+
  '\33\1\53\11\54\1\22\1\2\1\40\1\4\1\41\1\44\1\uffff\32\50\1\25\1\uffff'+
  '\1\26\1\42\1\50\1\uffff\1\7\1\47\1\12\1\16\1\5\1\15\1\46\1\50\1\13\2\50'+
  '\1\14\5\50\1\10\1\6\1\1\1\17\1\11\1\45\3\50\1\20\1\43\1\21\1\36'));
  AddTransition(unpackEncodedString('\1\57'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\60'));
  AddTransition(unpackEncodedString('\1\64\1\uffff\1\63\11\uffff\1\62'));
  AddTransition(unpackEncodedString('\1\66\1\67\12\uffff\1\65\2\uffff\1'+
  '\70'));
  AddTransition(unpackEncodedString('\1\71'));
  AddTransition(unpackEncodedString('\1\72'));
  AddTransition(unpackEncodedString('\1\73'));
  AddTransition(unpackEncodedString('\1\76\6\uffff\1\74\6\uffff\1\75'));
  AddTransition(unpackEncodedString('\1\100\7\uffff\1\77'));
  AddTransition(unpackEncodedString('\1\101'));
  AddTransition(unpackEncodedString('\1\102\2\uffff\1\103'));
  AddTransition(unpackEncodedString('\1\105\11\uffff\1\104'));
  AddTransition(unpackEncodedString('\1\106'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\107'));
  AddTransition(unpackEncodedString('\1\111\1\uffff\12\113'));
  AddTransition(unpackEncodedString('\1\114\21\uffff\1\115'));
  AddTransition(unpackEncodedString('\1\117\17\uffff\1\121\1\120'));
  AddTransition(unpackEncodedString('\1\124\4\uffff\1\125\15\uffff\1\123'));
  AddTransition(unpackEncodedString('\1\127'));
  AddTransition(unpackEncodedString('\1\132\26\uffff\1\131'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\134'));
  AddTransition(unpackEncodedString('\1\136\1\137'));
  AddTransition(unpackEncodedString('\1\142\1\141'));
  AddTransition(unpackEncodedString('\1\144'));
  AddTransition(unpackEncodedString('\1\146\76\uffff\1\147'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\151'));
  AddTransition(unpackEncodedString('\1\152'));
  AddTransition(unpackEncodedString('\1\153'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\113\1\uffff\10\155\2\113\12\uffff'+
  '\3\113\21\uffff\1\154\13\uffff\3\113\21\uffff\1\154'));
  AddTransition(unpackEncodedString('\1\113\1\uffff\12\157\12\uffff\3\113'+
  '\35\uffff\3\113'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\160'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\161'));
  AddTransition(unpackEncodedString('\1\162'));
  AddTransition(unpackEncodedString('\1\163'));
  AddTransition(unpackEncodedString('\1\164\20\uffff\1\165'));
  AddTransition(unpackEncodedString('\1\166'));
  AddTransition(unpackEncodedString('\1\167\22\uffff\1\170'));
  AddTransition(unpackEncodedString('\1\171'));
  AddTransition(unpackEncodedString('\1\172'));
  AddTransition(unpackEncodedString('\1\173\14\uffff\1\174'));
  AddTransition(unpackEncodedString('\1\175\2\uffff\1\176'));
  AddTransition(unpackEncodedString('\1\177'));
  AddTransition(unpackEncodedString('\1\u0080'));
  AddTransition(unpackEncodedString('\1\u0081'));
  AddTransition(unpackEncodedString('\1\u0082'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u0084'));
  AddTransition(unpackEncodedString('\1\u0085'));
  AddTransition(unpackEncodedString('\1\u0086'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\24\50\1\u0087\5\50'));
  AddTransition(unpackEncodedString('\1\u0089'));
  AddTransition(unpackEncodedString('\1\u008b\11\uffff\1\u008a'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u008c'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u008e'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0090'));
  AddTransition(unpackEncodedString('\1\u0091'));
  AddTransition(unpackEncodedString('\1\u0092'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\113\1\uffff\10\155\2\113\12\uffff'+
  '\3\113\35\uffff\3\113'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\113\1\uffff\12\157\12\uffff\3\113'+
  '\35\uffff\3\113'));
  AddTransition(unpackEncodedString('\1\u0094'));
  AddTransition(unpackEncodedString('\1\u0095'));
  AddTransition(unpackEncodedString('\1\u0096'));
  AddTransition(unpackEncodedString('\1\u0097'));
  AddTransition(unpackEncodedString('\1\u0098'));
  AddTransition(unpackEncodedString('\1\u0099'));
  AddTransition(unpackEncodedString('\1\u009a'));
  AddTransition(unpackEncodedString('\1\u009b'));
  AddTransition(unpackEncodedString('\1\u009c'));
  AddTransition(unpackEncodedString('\1\u009d'));
  AddTransition(unpackEncodedString('\1\u009e'));
  AddTransition(unpackEncodedString('\1\u009f'));
  AddTransition(unpackEncodedString('\1\u00a0'));
  AddTransition(unpackEncodedString('\1\u00a1'));
  AddTransition(unpackEncodedString('\1\u00a2'));
  AddTransition(unpackEncodedString('\1\u00a3'));
  AddTransition(unpackEncodedString('\1\u00a4\1\u00a5'));
  AddTransition(unpackEncodedString('\1\u00a6'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00a8'));
  AddTransition(unpackEncodedString('\1\u00a9'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00ab'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00ac'));
  AddTransition(unpackEncodedString('\1\u00ad'));
  AddTransition(unpackEncodedString('\1\u00ae'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00af'));
  AddTransition(unpackEncodedString('\1\u00b0'));
  AddTransition(unpackEncodedString('\1\u00b1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00b2'));
  AddTransition(unpackEncodedString('\1\u00b3'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00b6'));
  AddTransition(unpackEncodedString('\1\u00b7'));
  AddTransition(unpackEncodedString('\1\u00b8'));
  AddTransition(unpackEncodedString('\1\u00b9'));
  AddTransition(unpackEncodedString('\1\u00ba'));
  AddTransition(unpackEncodedString('\1\u00bb'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00bd'));
  AddTransition(unpackEncodedString('\1\u00be'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00c0'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00c2'));
  AddTransition(unpackEncodedString('\1\u00c3'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00c6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00c7'));
  AddTransition(unpackEncodedString('\1\u00c8'));
  AddTransition(unpackEncodedString('\1\u00c9'));
  AddTransition(unpackEncodedString('\1\u00ca'));
  AddTransition(unpackEncodedString('\1\u00cb'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00cd'));
  AddTransition(unpackEncodedString('\1\u00ce'));
  AddTransition(unpackEncodedString('\1\u00cf'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00d0'));
  AddTransition(unpackEncodedString('\1\u00d1'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00d3'));
  AddTransition(unpackEncodedString('\1\u00d4'));
  AddTransition(unpackEncodedString('\1\u00d5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00d6'));
  AddTransition(unpackEncodedString('\1\u00d7'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00d8'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00da'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00dc'));
  AddTransition(unpackEncodedString('\1\u00dd'));
  AddTransition(unpackEncodedString('\1\u00de'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00e2'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00e9'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00eb'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00ec'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00ee'));
  AddTransition(unpackEncodedString('\1\u00ef'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00f1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00f2'));
  AddTransition(unpackEncodedString('\1\u00f3'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\u00f5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\50\13\uffff\12\50\7\uffff\32\50'+
  '\4\uffff\1\50\1\uffff\32\50'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCLexer.TAntlrDFA35.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | '+
  'T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | '+
  'T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | '+
  'T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | '+
  'T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | '+
  'T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | '+
  'T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | '+
  'T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 |'+
  ' IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL'+
  ' | OCTAL_LITERAL | FLOATING_POINT_LITERAL | WS | COMMENT | LINE_COMMENT | LINE_C'+
  'OMMAND );';
end;



 


end.