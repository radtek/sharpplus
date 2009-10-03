// $ANTLR 3.1.2 Java__.g 2009-07-23 21:37:52
unit JavaLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TJavaLexer = class(TAntlrLexer)
    public
      const T__29=29;
      const T__28=28;
      const T__27=27;
      const T__26=26;
      const FloatTypeSuffix=15;
      const T__25=25;
      const OctalLiteral=10;
      const T__24=24;
      const EOF=-1;
      const Identifier=4;
      const T__93=93;
      const T__94=94;
      const T__91=91;
      const T__92=92;
      const T__90=90;
      const COMMENT=22;
      const T__99=99;
      const T__98=98;
      const T__97=97;
      const T__96=96;
      const T__95=95;
      const T__80=80;
      const T__81=81;
      const T__82=82;
      const T__83=83;
      const LINE_COMMENT=23;
      const IntegerTypeSuffix=13;
      const T__85=85;
      const T__84=84;
      const T__87=87;
      const T__86=86;
      const T__89=89;
      const T__88=88;
      const T__71=71;
      const WS=21;
      const T__72=72;
      const T__70=70;
      const FloatingPointLiteral=6;
      const JavaIDDigit=20;
      const T__76=76;
      const T__75=75;
      const T__74=74;
      const Letter=19;
      const EscapeSequence=16;
      const T__73=73;
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
      const CharacterLiteral=7;
      const Exponent=14;
      const T__61=61;
      const T__60=60;
      const HexDigit=12;
      const T__55=55;
      const T__56=56;
      const T__57=57;
      const T__58=58;
      const T__51=51;
      const T__52=52;
      const T__53=53;
      const T__54=54;
      const T__107=107;
      const T__108=108;
      const T__109=109;
      const T__59=59;
      const T__103=103;
      const T__104=104;
      const T__105=105;
      const T__106=106;
      const T__111=111;
      const T__110=110;
      const T__113=113;
      const T__112=112;
      const T__50=50;
      const T__42=42;
      const HexLiteral=9;
      const T__43=43;
      const T__40=40;
      const T__41=41;
      const T__46=46;
      const T__47=47;
      const T__44=44;
      const T__45=45;
      const T__48=48;
      const T__49=49;
      const T__102=102;
      const T__101=101;
      const T__100=100;
      const Tokens=114;
      const DecimalLiteral=11;
      const StringLiteral=8;
      const T__30=30;
      const T__31=31;
      const T__32=32;
      const T__33=33;
      const T__34=34;
      const ENUM=5;
      const T__35=35;
      const T__36=36;
      const T__37=37;
      const T__38=38;
      const T__39=39;
      const UnicodeEscape=17;
      const OctalEscape=18;
    // delegates
    public 
        gJavaLexerRules:TAntlrBaseRecognizer{TJava_JavaLexerRules} ;
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

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

    // $ANTLR start "T__101"
    procedure mT__101();
    // $ANTLR end T__101

    // $ANTLR start "T__102"
    procedure mT__102();
    // $ANTLR end T__102

    // $ANTLR start "T__103"
    procedure mT__103();
    // $ANTLR end T__103

    // $ANTLR start "T__104"
    procedure mT__104();
    // $ANTLR end T__104

    // $ANTLR start "T__105"
    procedure mT__105();
    // $ANTLR end T__105

    // $ANTLR start "T__106"
    procedure mT__106();
    // $ANTLR end T__106

    // $ANTLR start "T__107"
    procedure mT__107();
    // $ANTLR end T__107

    // $ANTLR start "T__108"
    procedure mT__108();
    // $ANTLR end T__108

    // $ANTLR start "T__109"
    procedure mT__109();
    // $ANTLR end T__109

    // $ANTLR start "T__110"
    procedure mT__110();
    // $ANTLR end T__110

    // $ANTLR start "T__111"
    procedure mT__111();
    // $ANTLR end T__111

    // $ANTLR start "T__112"
    procedure mT__112();
    // $ANTLR end T__112

    // $ANTLR start "T__113"
    procedure mT__113();
    // $ANTLR end T__113

    procedure mTokens();override;

    protected

     
          type TAntlrDFA1=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa1:IDFA;
        protected
          dfa1:IDFA;
    end;

implementation
uses  JclStacks,
    // delegates
    Java_JavaLexerRules,
    // delegators
 
     JclHashSets ;

constructor TJavaLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
gJavaLexerRules := TJava_JavaLexerRules.CreateWithStream(input, state, self);         
end;

destructor TJavaLexer.Destroy;
begin
gJavaLexerRules.free;
 inherited;
end;

function TJavaLexer.GetGrammarFileName():String;
begin
  Result:='Java__.g';
end;

// $ANTLR start "T__24"
procedure TJavaLexer.mT__24();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__24;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:7:7: ( ''package'' )
        // Java__.g:7:9: ''package''
        begin
        match('package');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__24// $ANTLR start "T__25"
procedure TJavaLexer.mT__25();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__25;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:8:7: ( '';'' )
        // Java__.g:8:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__25// $ANTLR start "T__26"
procedure TJavaLexer.mT__26();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__26;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:9:7: ( ''import'' )
        // Java__.g:9:9: ''import''
        begin
        match('import');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__26// $ANTLR start "T__27"
procedure TJavaLexer.mT__27();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__27;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:10:7: ( ''static'' )
        // Java__.g:10:9: ''static''
        begin
        match('static');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__27// $ANTLR start "T__28"
procedure TJavaLexer.mT__28();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__28;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:11:7: ( ''.'' )
        // Java__.g:11:9: ''.''
        begin
        match($002E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__28// $ANTLR start "T__29"
procedure TJavaLexer.mT__29();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__29;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:12:7: ( ''*'' )
        // Java__.g:12:9: ''*''
        begin
        match($002A);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__29// $ANTLR start "T__30"
procedure TJavaLexer.mT__30();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__30;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:13:7: ( ''class'' )
        // Java__.g:13:9: ''class''
        begin
        match('class');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__30// $ANTLR start "T__31"
procedure TJavaLexer.mT__31();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__31;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:14:7: ( ''extends'' )
        // Java__.g:14:9: ''extends''
        begin
        match('extends');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__31// $ANTLR start "T__32"
procedure TJavaLexer.mT__32();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__32;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:15:7: ( ''implements'' )
        // Java__.g:15:9: ''implements''
        begin
        match('implements');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__32// $ANTLR start "T__33"
procedure TJavaLexer.mT__33();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__33;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:16:7: ( ''<'' )
        // Java__.g:16:9: ''<''
        begin
        match($003C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__33// $ANTLR start "T__34"
procedure TJavaLexer.mT__34();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__34;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:17:7: ( '','' )
        // Java__.g:17:9: '',''
        begin
        match($002C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__34// $ANTLR start "T__35"
procedure TJavaLexer.mT__35();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__35;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:18:7: ( ''>'' )
        // Java__.g:18:9: ''>''
        begin
        match($003E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__35// $ANTLR start "T__36"
procedure TJavaLexer.mT__36();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__36;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:19:7: ( ''&'' )
        // Java__.g:19:9: ''&''
        begin
        match($0026);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__36// $ANTLR start "T__37"
procedure TJavaLexer.mT__37();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__37;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:20:7: ( ''{'' )
        // Java__.g:20:9: ''{''
        begin
        match($007B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__37// $ANTLR start "T__38"
procedure TJavaLexer.mT__38();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__38;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:21:7: ( ''}'' )
        // Java__.g:21:9: ''}''
        begin
        match($007D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__38// $ANTLR start "T__39"
procedure TJavaLexer.mT__39();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__39;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:22:7: ( ''interface'' )
        // Java__.g:22:9: ''interface''
        begin
        match('interface');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__39// $ANTLR start "T__40"
procedure TJavaLexer.mT__40();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__40;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:23:7: ( ''void'' )
        // Java__.g:23:9: ''void''
        begin
        match('void');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__40// $ANTLR start "T__41"
procedure TJavaLexer.mT__41();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__41;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:24:7: ( ''['' )
        // Java__.g:24:9: ''[''
        begin
        match($005B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__41// $ANTLR start "T__42"
procedure TJavaLexer.mT__42();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__42;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:25:7: ( '']'' )
        // Java__.g:25:9: '']''
        begin
        match($005D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__42// $ANTLR start "T__43"
procedure TJavaLexer.mT__43();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__43;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:26:7: ( ''throws'' )
        // Java__.g:26:9: ''throws''
        begin
        match('throws');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__43// $ANTLR start "T__44"
procedure TJavaLexer.mT__44();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__44;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:27:7: ( ''='' )
        // Java__.g:27:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__44// $ANTLR start "T__45"
procedure TJavaLexer.mT__45();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__45;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:28:7: ( ''public'' )
        // Java__.g:28:9: ''public''
        begin
        match('public');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__45// $ANTLR start "T__46"
procedure TJavaLexer.mT__46();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__46;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:29:7: ( ''protected'' )
        // Java__.g:29:9: ''protected''
        begin
        match('protected');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__46// $ANTLR start "T__47"
procedure TJavaLexer.mT__47();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__47;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:30:7: ( ''private'' )
        // Java__.g:30:9: ''private''
        begin
        match('private');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__47// $ANTLR start "T__48"
procedure TJavaLexer.mT__48();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__48;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:31:7: ( ''abstract'' )
        // Java__.g:31:9: ''abstract''
        begin
        match('abstract');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__48// $ANTLR start "T__49"
procedure TJavaLexer.mT__49();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__49;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:32:7: ( ''final'' )
        // Java__.g:32:9: ''final''
        begin
        match('final');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__49// $ANTLR start "T__50"
procedure TJavaLexer.mT__50();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__50;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:33:7: ( ''native'' )
        // Java__.g:33:9: ''native''
        begin
        match('native');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__50// $ANTLR start "T__51"
procedure TJavaLexer.mT__51();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__51;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:34:7: ( ''synchronized'' )
        // Java__.g:34:9: ''synchronized''
        begin
        match('synchronized');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__51// $ANTLR start "T__52"
procedure TJavaLexer.mT__52();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__52;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:35:7: ( ''transient'' )
        // Java__.g:35:9: ''transient''
        begin
        match('transient');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__52// $ANTLR start "T__53"
procedure TJavaLexer.mT__53();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__53;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:36:7: ( ''volatile'' )
        // Java__.g:36:9: ''volatile''
        begin
        match('volatile');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__53// $ANTLR start "T__54"
procedure TJavaLexer.mT__54();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__54;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:37:7: ( ''strictfp'' )
        // Java__.g:37:9: ''strictfp''
        begin
        match('strictfp');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__54// $ANTLR start "T__55"
procedure TJavaLexer.mT__55();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__55;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:38:7: ( ''boolean'' )
        // Java__.g:38:9: ''boolean''
        begin
        match('boolean');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__55// $ANTLR start "T__56"
procedure TJavaLexer.mT__56();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__56;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:39:7: ( ''char'' )
        // Java__.g:39:9: ''char''
        begin
        match('char');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__56// $ANTLR start "T__57"
procedure TJavaLexer.mT__57();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__57;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:40:7: ( ''byte'' )
        // Java__.g:40:9: ''byte''
        begin
        match('byte');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__57// $ANTLR start "T__58"
procedure TJavaLexer.mT__58();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__58;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:41:7: ( ''short'' )
        // Java__.g:41:9: ''short''
        begin
        match('short');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__58// $ANTLR start "T__59"
procedure TJavaLexer.mT__59();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__59;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:42:7: ( ''int'' )
        // Java__.g:42:9: ''int''
        begin
        match('int');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__59// $ANTLR start "T__60"
procedure TJavaLexer.mT__60();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__60;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:43:7: ( ''long'' )
        // Java__.g:43:9: ''long''
        begin
        match('long');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__60// $ANTLR start "T__61"
procedure TJavaLexer.mT__61();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__61;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:44:7: ( ''float'' )
        // Java__.g:44:9: ''float''
        begin
        match('float');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__61// $ANTLR start "T__62"
procedure TJavaLexer.mT__62();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__62;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:45:7: ( ''double'' )
        // Java__.g:45:9: ''double''
        begin
        match('double');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__62// $ANTLR start "T__63"
procedure TJavaLexer.mT__63();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__63;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:46:7: ( ''?'' )
        // Java__.g:46:9: ''?''
        begin
        match($003F);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__63// $ANTLR start "T__64"
procedure TJavaLexer.mT__64();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__64;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:47:7: ( ''super'' )
        // Java__.g:47:9: ''super''
        begin
        match('super');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__64// $ANTLR start "T__65"
procedure TJavaLexer.mT__65();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__65;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:48:7: ( ''('' )
        // Java__.g:48:9: ''(''
        begin
        match($0028);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__65// $ANTLR start "T__66"
procedure TJavaLexer.mT__66();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__66;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:49:7: ( '')'' )
        // Java__.g:49:9: '')''
        begin
        match($0029);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__66// $ANTLR start "T__67"
procedure TJavaLexer.mT__67();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__67;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:50:7: ( ''...'' )
        // Java__.g:50:9: ''...''
        begin
        match('...');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__67// $ANTLR start "T__68"
procedure TJavaLexer.mT__68();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__68;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:51:7: ( ''@'' )
        // Java__.g:51:9: ''@''
        begin
        match($0040);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__68// $ANTLR start "T__69"
procedure TJavaLexer.mT__69();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__69;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:52:7: ( ''default'' )
        // Java__.g:52:9: ''default''
        begin
        match('default');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__69// $ANTLR start "T__70"
procedure TJavaLexer.mT__70();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__70;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:53:7: ( ''+='' )
        // Java__.g:53:9: ''+=''
        begin
        match('+=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__70// $ANTLR start "T__71"
procedure TJavaLexer.mT__71();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__71;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:54:7: ( ''-='' )
        // Java__.g:54:9: ''-=''
        begin
        match('-=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__71// $ANTLR start "T__72"
procedure TJavaLexer.mT__72();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__72;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:55:7: ( ''*='' )
        // Java__.g:55:9: ''*=''
        begin
        match('*=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__72// $ANTLR start "T__73"
procedure TJavaLexer.mT__73();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__73;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:56:7: ( ''/='' )
        // Java__.g:56:9: ''/=''
        begin
        match('/=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__73// $ANTLR start "T__74"
procedure TJavaLexer.mT__74();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__74;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:57:7: ( ''&='' )
        // Java__.g:57:9: ''&=''
        begin
        match('&=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__74// $ANTLR start "T__75"
procedure TJavaLexer.mT__75();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__75;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:58:7: ( ''|='' )
        // Java__.g:58:9: ''|=''
        begin
        match('|=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__75// $ANTLR start "T__76"
procedure TJavaLexer.mT__76();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__76;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:59:7: ( ''^='' )
        // Java__.g:59:9: ''^=''
        begin
        match('^=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__76// $ANTLR start "T__77"
procedure TJavaLexer.mT__77();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__77;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:60:7: ( ''%='' )
        // Java__.g:60:9: ''%=''
        begin
        match('%=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__77// $ANTLR start "T__78"
procedure TJavaLexer.mT__78();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__78;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:61:7: ( '':'' )
        // Java__.g:61:9: '':''
        begin
        match($003A);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__78// $ANTLR start "T__79"
procedure TJavaLexer.mT__79();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__79;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:62:7: ( ''||'' )
        // Java__.g:62:9: ''||''
        begin
        match('||');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__79// $ANTLR start "T__80"
procedure TJavaLexer.mT__80();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__80;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:63:7: ( ''&&'' )
        // Java__.g:63:9: ''&&''
        begin
        match('&&');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__80// $ANTLR start "T__81"
procedure TJavaLexer.mT__81();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__81;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:64:7: ( ''|'' )
        // Java__.g:64:9: ''|''
        begin
        match($007C);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__81// $ANTLR start "T__82"
procedure TJavaLexer.mT__82();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__82;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:65:7: ( ''^'' )
        // Java__.g:65:9: ''^''
        begin
        match($005E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__82// $ANTLR start "T__83"
procedure TJavaLexer.mT__83();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__83;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:66:7: ( ''=='' )
        // Java__.g:66:9: ''==''
        begin
        match('==');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__83// $ANTLR start "T__84"
procedure TJavaLexer.mT__84();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__84;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:67:7: ( ''!='' )
        // Java__.g:67:9: ''!=''
        begin
        match('!=');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__84// $ANTLR start "T__85"
procedure TJavaLexer.mT__85();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__85;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:68:7: ( ''instanceof'' )
        // Java__.g:68:9: ''instanceof''
        begin
        match('instanceof');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__85// $ANTLR start "T__86"
procedure TJavaLexer.mT__86();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__86;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:69:7: ( ''+'' )
        // Java__.g:69:9: ''+''
        begin
        match($002B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__86// $ANTLR start "T__87"
procedure TJavaLexer.mT__87();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__87;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:70:7: ( ''-'' )
        // Java__.g:70:9: ''-''
        begin
        match($002D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__87// $ANTLR start "T__88"
procedure TJavaLexer.mT__88();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__88;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:71:7: ( ''/'' )
        // Java__.g:71:9: ''/''
        begin
        match($002F);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__88// $ANTLR start "T__89"
procedure TJavaLexer.mT__89();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__89;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:72:7: ( ''%'' )
        // Java__.g:72:9: ''%''
        begin
        match($0025);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__89// $ANTLR start "T__90"
procedure TJavaLexer.mT__90();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__90;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:73:7: ( ''++'' )
        // Java__.g:73:9: ''++''
        begin
        match('++');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__90// $ANTLR start "T__91"
procedure TJavaLexer.mT__91();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__91;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:74:7: ( ''--'' )
        // Java__.g:74:9: ''--''
        begin
        match('--');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__91// $ANTLR start "T__92"
procedure TJavaLexer.mT__92();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__92;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:75:7: ( ''~'' )
        // Java__.g:75:9: ''~''
        begin
        match($007E);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__92// $ANTLR start "T__93"
procedure TJavaLexer.mT__93();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__93;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:76:7: ( ''!'' )
        // Java__.g:76:9: ''!''
        begin
        match($0021);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__93// $ANTLR start "T__94"
procedure TJavaLexer.mT__94();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__94;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:77:7: ( ''this'' )
        // Java__.g:77:9: ''this''
        begin
        match('this');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__94// $ANTLR start "T__95"
procedure TJavaLexer.mT__95();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__95;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:78:7: ( ''new'' )
        // Java__.g:78:9: ''new''
        begin
        match('new');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__95// $ANTLR start "T__96"
procedure TJavaLexer.mT__96();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__96;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:79:7: ( ''null'' )
        // Java__.g:79:9: ''null''
        begin
        match('null');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__96// $ANTLR start "T__97"
procedure TJavaLexer.mT__97();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__97;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:80:7: ( ''true'' )
        // Java__.g:80:9: ''true''
        begin
        match('true');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__97// $ANTLR start "T__98"
procedure TJavaLexer.mT__98();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__98;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:81:7: ( ''false'' )
        // Java__.g:81:9: ''false''
        begin
        match('false');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__98// $ANTLR start "T__99"
procedure TJavaLexer.mT__99();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__99;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:82:7: ( ''assert'' )
        // Java__.g:82:9: ''assert''
        begin
        match('assert');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__99// $ANTLR start "T__100"
procedure TJavaLexer.mT__100();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__100;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:83:8: ( ''if'' )
        // Java__.g:83:10: ''if''
        begin
        match('if');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__100// $ANTLR start "T__101"
procedure TJavaLexer.mT__101();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__101;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:84:8: ( ''else'' )
        // Java__.g:84:10: ''else''
        begin
        match('else');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__101// $ANTLR start "T__102"
procedure TJavaLexer.mT__102();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__102;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:85:8: ( ''for'' )
        // Java__.g:85:10: ''for''
        begin
        match('for');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__102// $ANTLR start "T__103"
procedure TJavaLexer.mT__103();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__103;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:86:8: ( ''while'' )
        // Java__.g:86:10: ''while''
        begin
        match('while');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__103// $ANTLR start "T__104"
procedure TJavaLexer.mT__104();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__104;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:87:8: ( ''do'' )
        // Java__.g:87:10: ''do''
        begin
        match('do');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__104// $ANTLR start "T__105"
procedure TJavaLexer.mT__105();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__105;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:88:8: ( ''try'' )
        // Java__.g:88:10: ''try''
        begin
        match('try');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__105// $ANTLR start "T__106"
procedure TJavaLexer.mT__106();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__106;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:89:8: ( ''finally'' )
        // Java__.g:89:10: ''finally''
        begin
        match('finally');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__106// $ANTLR start "T__107"
procedure TJavaLexer.mT__107();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__107;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:90:8: ( ''switch'' )
        // Java__.g:90:10: ''switch''
        begin
        match('switch');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__107// $ANTLR start "T__108"
procedure TJavaLexer.mT__108();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__108;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:91:8: ( ''return'' )
        // Java__.g:91:10: ''return''
        begin
        match('return');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__108// $ANTLR start "T__109"
procedure TJavaLexer.mT__109();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__109;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:92:8: ( ''throw'' )
        // Java__.g:92:10: ''throw''
        begin
        match('throw');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__109// $ANTLR start "T__110"
procedure TJavaLexer.mT__110();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__110;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:93:8: ( ''break'' )
        // Java__.g:93:10: ''break''
        begin
        match('break');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__110// $ANTLR start "T__111"
procedure TJavaLexer.mT__111();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__111;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:94:8: ( ''continue'' )
        // Java__.g:94:10: ''continue''
        begin
        match('continue');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__111// $ANTLR start "T__112"
procedure TJavaLexer.mT__112();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__112;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:95:8: ( ''catch'' )
        // Java__.g:95:10: ''catch''
        begin
        match('catch');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__112// $ANTLR start "T__113"
procedure TJavaLexer.mT__113();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__113;
        _channel := 0;
        // ruleBlockSingleAlt:Java__.g:96:8: ( ''case'' )
        // Java__.g:96:10: ''case''
        begin
        match('case');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__113// $ANTLR start "Tokens"
procedure TJavaLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Java__.g:1:8: ( T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | T__101 | T__102 | T__103 | T__104 | T__105 | T__106 | T__107 | T__108 | T__109 | T__110 | T__111 | T__112 | T__113 | JavaLexerRules. Tokens )
        _alt[1]:=91;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The JavaLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[1] := getDfa1.predict(input);
        case (_alt[1]) of 
             1 :
                begin
                // Java__.g:1:10: T__24
                begin
                mT__24(); 


                end;
                end;
             2 :
                begin
                // Java__.g:1:16: T__25
                begin
                mT__25(); 


                end;
                end;
             3 :
                begin
                // Java__.g:1:22: T__26
                begin
                mT__26(); 


                end;
                end;
             4 :
                begin
                // Java__.g:1:28: T__27
                begin
                mT__27(); 


                end;
                end;
             5 :
                begin
                // Java__.g:1:34: T__28
                begin
                mT__28(); 


                end;
                end;
             6 :
                begin
                // Java__.g:1:40: T__29
                begin
                mT__29(); 


                end;
                end;
             7 :
                begin
                // Java__.g:1:46: T__30
                begin
                mT__30(); 


                end;
                end;
             8 :
                begin
                // Java__.g:1:52: T__31
                begin
                mT__31(); 


                end;
                end;
             9 :
                begin
                // Java__.g:1:58: T__32
                begin
                mT__32(); 


                end;
                end;
             10 :
                begin
                // Java__.g:1:64: T__33
                begin
                mT__33(); 


                end;
                end;
             11 :
                begin
                // Java__.g:1:70: T__34
                begin
                mT__34(); 


                end;
                end;
             12 :
                begin
                // Java__.g:1:76: T__35
                begin
                mT__35(); 


                end;
                end;
             13 :
                begin
                // Java__.g:1:82: T__36
                begin
                mT__36(); 


                end;
                end;
             14 :
                begin
                // Java__.g:1:88: T__37
                begin
                mT__37(); 


                end;
                end;
             15 :
                begin
                // Java__.g:1:94: T__38
                begin
                mT__38(); 


                end;
                end;
             16 :
                begin
                // Java__.g:1:100: T__39
                begin
                mT__39(); 


                end;
                end;
             17 :
                begin
                // Java__.g:1:106: T__40
                begin
                mT__40(); 


                end;
                end;
             18 :
                begin
                // Java__.g:1:112: T__41
                begin
                mT__41(); 


                end;
                end;
             19 :
                begin
                // Java__.g:1:118: T__42
                begin
                mT__42(); 


                end;
                end;
             20 :
                begin
                // Java__.g:1:124: T__43
                begin
                mT__43(); 


                end;
                end;
             21 :
                begin
                // Java__.g:1:130: T__44
                begin
                mT__44(); 


                end;
                end;
             22 :
                begin
                // Java__.g:1:136: T__45
                begin
                mT__45(); 


                end;
                end;
             23 :
                begin
                // Java__.g:1:142: T__46
                begin
                mT__46(); 


                end;
                end;
             24 :
                begin
                // Java__.g:1:148: T__47
                begin
                mT__47(); 


                end;
                end;
             25 :
                begin
                // Java__.g:1:154: T__48
                begin
                mT__48(); 


                end;
                end;
             26 :
                begin
                // Java__.g:1:160: T__49
                begin
                mT__49(); 


                end;
                end;
             27 :
                begin
                // Java__.g:1:166: T__50
                begin
                mT__50(); 


                end;
                end;
             28 :
                begin
                // Java__.g:1:172: T__51
                begin
                mT__51(); 


                end;
                end;
             29 :
                begin
                // Java__.g:1:178: T__52
                begin
                mT__52(); 


                end;
                end;
             30 :
                begin
                // Java__.g:1:184: T__53
                begin
                mT__53(); 


                end;
                end;
             31 :
                begin
                // Java__.g:1:190: T__54
                begin
                mT__54(); 


                end;
                end;
             32 :
                begin
                // Java__.g:1:196: T__55
                begin
                mT__55(); 


                end;
                end;
             33 :
                begin
                // Java__.g:1:202: T__56
                begin
                mT__56(); 


                end;
                end;
             34 :
                begin
                // Java__.g:1:208: T__57
                begin
                mT__57(); 


                end;
                end;
             35 :
                begin
                // Java__.g:1:214: T__58
                begin
                mT__58(); 


                end;
                end;
             36 :
                begin
                // Java__.g:1:220: T__59
                begin
                mT__59(); 


                end;
                end;
             37 :
                begin
                // Java__.g:1:226: T__60
                begin
                mT__60(); 


                end;
                end;
             38 :
                begin
                // Java__.g:1:232: T__61
                begin
                mT__61(); 


                end;
                end;
             39 :
                begin
                // Java__.g:1:238: T__62
                begin
                mT__62(); 


                end;
                end;
             40 :
                begin
                // Java__.g:1:244: T__63
                begin
                mT__63(); 


                end;
                end;
             41 :
                begin
                // Java__.g:1:250: T__64
                begin
                mT__64(); 


                end;
                end;
             42 :
                begin
                // Java__.g:1:256: T__65
                begin
                mT__65(); 


                end;
                end;
             43 :
                begin
                // Java__.g:1:262: T__66
                begin
                mT__66(); 


                end;
                end;
             44 :
                begin
                // Java__.g:1:268: T__67
                begin
                mT__67(); 


                end;
                end;
             45 :
                begin
                // Java__.g:1:274: T__68
                begin
                mT__68(); 


                end;
                end;
             46 :
                begin
                // Java__.g:1:280: T__69
                begin
                mT__69(); 


                end;
                end;
             47 :
                begin
                // Java__.g:1:286: T__70
                begin
                mT__70(); 


                end;
                end;
             48 :
                begin
                // Java__.g:1:292: T__71
                begin
                mT__71(); 


                end;
                end;
             49 :
                begin
                // Java__.g:1:298: T__72
                begin
                mT__72(); 


                end;
                end;
             50 :
                begin
                // Java__.g:1:304: T__73
                begin
                mT__73(); 


                end;
                end;
             51 :
                begin
                // Java__.g:1:310: T__74
                begin
                mT__74(); 


                end;
                end;
             52 :
                begin
                // Java__.g:1:316: T__75
                begin
                mT__75(); 


                end;
                end;
             53 :
                begin
                // Java__.g:1:322: T__76
                begin
                mT__76(); 


                end;
                end;
             54 :
                begin
                // Java__.g:1:328: T__77
                begin
                mT__77(); 


                end;
                end;
             55 :
                begin
                // Java__.g:1:334: T__78
                begin
                mT__78(); 


                end;
                end;
             56 :
                begin
                // Java__.g:1:340: T__79
                begin
                mT__79(); 


                end;
                end;
             57 :
                begin
                // Java__.g:1:346: T__80
                begin
                mT__80(); 


                end;
                end;
             58 :
                begin
                // Java__.g:1:352: T__81
                begin
                mT__81(); 


                end;
                end;
             59 :
                begin
                // Java__.g:1:358: T__82
                begin
                mT__82(); 


                end;
                end;
             60 :
                begin
                // Java__.g:1:364: T__83
                begin
                mT__83(); 


                end;
                end;
             61 :
                begin
                // Java__.g:1:370: T__84
                begin
                mT__84(); 


                end;
                end;
             62 :
                begin
                // Java__.g:1:376: T__85
                begin
                mT__85(); 


                end;
                end;
             63 :
                begin
                // Java__.g:1:382: T__86
                begin
                mT__86(); 


                end;
                end;
             64 :
                begin
                // Java__.g:1:388: T__87
                begin
                mT__87(); 


                end;
                end;
             65 :
                begin
                // Java__.g:1:394: T__88
                begin
                mT__88(); 


                end;
                end;
             66 :
                begin
                // Java__.g:1:400: T__89
                begin
                mT__89(); 


                end;
                end;
             67 :
                begin
                // Java__.g:1:406: T__90
                begin
                mT__90(); 


                end;
                end;
             68 :
                begin
                // Java__.g:1:412: T__91
                begin
                mT__91(); 


                end;
                end;
             69 :
                begin
                // Java__.g:1:418: T__92
                begin
                mT__92(); 


                end;
                end;
             70 :
                begin
                // Java__.g:1:424: T__93
                begin
                mT__93(); 


                end;
                end;
             71 :
                begin
                // Java__.g:1:430: T__94
                begin
                mT__94(); 


                end;
                end;
             72 :
                begin
                // Java__.g:1:436: T__95
                begin
                mT__95(); 


                end;
                end;
             73 :
                begin
                // Java__.g:1:442: T__96
                begin
                mT__96(); 


                end;
                end;
             74 :
                begin
                // Java__.g:1:448: T__97
                begin
                mT__97(); 


                end;
                end;
             75 :
                begin
                // Java__.g:1:454: T__98
                begin
                mT__98(); 


                end;
                end;
             76 :
                begin
                // Java__.g:1:460: T__99
                begin
                mT__99(); 


                end;
                end;
             77 :
                begin
                // Java__.g:1:466: T__100
                begin
                mT__100(); 


                end;
                end;
             78 :
                begin
                // Java__.g:1:473: T__101
                begin
                mT__101(); 


                end;
                end;
             79 :
                begin
                // Java__.g:1:480: T__102
                begin
                mT__102(); 


                end;
                end;
             80 :
                begin
                // Java__.g:1:487: T__103
                begin
                mT__103(); 


                end;
                end;
             81 :
                begin
                // Java__.g:1:494: T__104
                begin
                mT__104(); 


                end;
                end;
             82 :
                begin
                // Java__.g:1:501: T__105
                begin
                mT__105(); 


                end;
                end;
             83 :
                begin
                // Java__.g:1:508: T__106
                begin
                mT__106(); 


                end;
                end;
             84 :
                begin
                // Java__.g:1:515: T__107
                begin
                mT__107(); 


                end;
                end;
             85 :
                begin
                // Java__.g:1:522: T__108
                begin
                mT__108(); 


                end;
                end;
             86 :
                begin
                // Java__.g:1:529: T__109
                begin
                mT__109(); 


                end;
                end;
             87 :
                begin
                // Java__.g:1:536: T__110
                begin
                mT__110(); 


                end;
                end;
             88 :
                begin
                // Java__.g:1:543: T__111
                begin
                mT__111(); 


                end;
                end;
             89 :
                begin
                // Java__.g:1:550: T__112
                begin
                mT__112(); 


                end;
                end;
             90 :
                begin
                // Java__.g:1:557: T__113
                begin
                mT__113(); 


                end;
                end;
             91 :
                begin
                // Java__.g:1:564: JavaLexerRules. Tokens
                begin
                TJava_JavaLexerRules(gJavaLexerRules).mTokens(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TJavaLexer.getDfa1:IDFA;
begin
  if not Assigned(dfa1) then
    dfa1:=TAntlrDFA1.Create(self);
  Result:=dfa1;  
end;

constructor TJavaLexer.TAntlrDFA1.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=1;
  feot:=unpackEncodedString('\1\uffff\1\51\1\uffff\2\51\1\66\1\70\2\51\3'+
    '\uffff\1\101\2\uffff\1\51\2\uffff\1\51\1\106\6\51\4\uffff\1\130\1\133'+
    '\1\135\1\140\1\142\1\144\1\uffff\1\146\1\uffff\2\51\1\uffff\5\51\1\160'+
    '\5\51\4\uffff\6\51\3\uffff\3\51\2\uffff\15\51\1\u0093\1\51\21\uffff'+
    '\7\51\1\u009e\1\51\1\uffff\23\51\1\u00b3\5\51\1\u00b9\1\51\1\u00bb\6'+
    '\51\1\uffff\12\51\1\uffff\10\51\1\u00d4\2\51\1\u00d7\1\51\1\u00d9\1'+
    '\u00da\2\51\1\u00dd\1\51\1\u00df\1\uffff\5\51\1\uffff\1\51\1\uffff\1'+
    '\u00e6\1\51\1\u00e8\1\51\1\u00ea\17\51\1\u00fa\1\u00fb\1\51\1\u00fd'+
    '\1\uffff\1\51\1\u00ff\1\uffff\1\51\2\uffff\1\51\1\u0103\1\uffff\1\51'+
    '\1\uffff\2\51\1\u0108\1\u0109\1\u010a\1\51\1\uffff\1\51\1\uffff\1\u010d'+
    '\1\uffff\2\51\1\u0110\2\51\1\u0113\2\51\1\u0116\3\51\1\u011a\2\51\2'+
    '\uffff\1\u011d\1\uffff\1\51\1\uffff\2\51\1\u0121\1\uffff\2\51\1\u0124'+
    '\1\51\3\uffff\1\u0126\1\51\1\uffff\1\u0128\1\51\1\uffff\1\u012a\1\u012b'+
    '\1\uffff\1\51\1\u012d\1\uffff\3\51\1\uffff\2\51\1\uffff\1\51\1\u0134'+
    '\1\51\1\uffff\2\51\1\uffff\1\u0138\1\uffff\1\u0139\1\uffff\1\u013a\2'+
    '\uffff\1\51\1\uffff\3\51\1\u013f\1\51\1\u0141\1\uffff\1\u0142\1\51\1'+
    '\u0144\3\uffff\1\u0145\1\51\1\u0147\1\51\1\uffff\1\51\2\uffff\1\u014a'+
    '\2\uffff\1\u014b\1\uffff\1\u014c\1\51\3\uffff\1\51\1\u014f\1\uffff');
  feof:=unpackEncodedString('\u0150\uffff');

  FMinc:=unpackEncodedString('\1\11\1\141\1\uffff\1\146\1\150\1\56\1\75'+
    '\1\141\1\154\3\uffff\1\46\2\uffff\1\157\2\uffff\1\150\1\75\1\142\2\141'+
    '\2\157\1\145\4\uffff\1\53\1\55\1\52\3\75\1\uffff\1\75\1\uffff\1\150'+
    '\1\145\1\uffff\1\143\1\142\1\151\1\160\1\163\1\44\1\141\1\156\1\157'+
    '\1\160\1\151\4\uffff\2\141\1\156\1\163\1\164\1\163\3\uffff\2\151\1\141'+
    '\2\uffff\2\163\1\156\1\157\1\154\1\162\1\164\1\167\1\154\1\157\1\164'+
    '\1\145\1\156\1\44\1\146\21\uffff\1\151\1\164\1\153\1\154\1\164\1\166'+
    '\1\154\1\44\1\164\1\uffff\1\164\1\151\1\143\1\162\1\145\1\164\1\163'+
    '\1\162\1\164\1\143\3\145\1\144\1\141\1\157\1\163\1\156\1\145\1\44\1'+
    '\164\1\145\2\141\1\163\1\44\1\151\1\44\2\154\1\145\1\141\1\147\1\142'+
    '\1\uffff\1\141\1\154\1\165\1\141\1\151\1\145\1\141\1\162\1\145\1\162'+
    '\1\uffff\1\141\1\151\1\143\1\150\1\164\1\162\1\143\1\163\1\44\1\151'+
    '\1\150\1\44\1\156\2\44\1\164\1\167\1\44\1\163\1\44\1\uffff\2\162\1\154'+
    '\1\164\1\145\1\uffff\1\166\1\uffff\1\44\1\145\1\44\1\153\1\44\1\154'+
    '\1\165\1\145\1\162\1\147\2\143\2\164\1\155\1\146\1\156\1\143\1\164\1'+
    '\162\2\44\1\150\1\44\1\uffff\1\156\1\44\1\uffff\1\144\2\uffff\1\151'+
    '\1\44\1\uffff\1\151\1\uffff\1\141\1\164\3\44\1\145\1\uffff\1\141\1\uffff'+
    '\1\44\1\uffff\1\145\1\154\1\44\1\156\1\145\1\44\1\164\1\145\1\44\1\145'+
    '\1\141\1\143\1\44\1\146\1\157\2\uffff\1\44\1\uffff\1\165\1\uffff\1\163'+
    '\1\154\1\44\1\uffff\1\145\1\143\1\44\1\171\3\uffff\1\44\1\156\1\uffff'+
    '\1\44\1\164\1\uffff\2\44\1\uffff\1\145\1\44\1\uffff\1\156\1\143\1\145'+
    '\1\uffff\1\160\1\156\1\uffff\1\145\1\44\1\145\1\uffff\1\156\1\164\1'+
    '\uffff\1\44\1\uffff\1\44\1\uffff\1\44\2\uffff\1\144\1\uffff\1\164\1'+
    '\145\1\157\1\44\1\151\1\44\1\uffff\1\44\1\164\1\44\3\uffff\1\44\1\163'+
    '\1\44\1\146\1\uffff\1\172\2\uffff\1\44\2\uffff\1\44\1\uffff\1\44\1\145'+
    '\3\uffff\1\144\1\44\1\uffff');

  FMaxc:=unpackEncodedString('\1\ufaff\1\165\1\uffff\1\156\1\171\1\71\1'+
    '\75\1\157\1\170\3\uffff\1\75\2\uffff\1\157\2\uffff\1\162\1\75\1\163'+
    '\1\157\1\165\1\171\2\157\4\uffff\3\75\1\174\2\75\1\uffff\1\75\1\uffff'+
    '\1\150\1\145\1\uffff\1\143\1\142\1\157\1\160\1\164\1\ufaff\1\162\1\156'+
    '\1\157\1\160\1\151\4\uffff\2\141\1\156\2\164\1\163\3\uffff\1\154\1\162'+
    '\1\171\2\uffff\2\163\1\156\1\157\1\154\1\162\1\164\1\167\1\154\1\157'+
    '\1\164\1\145\1\156\1\ufaff\1\146\21\uffff\1\151\1\164\1\153\1\154\1'+
    '\164\1\166\1\157\1\ufaff\1\164\1\uffff\1\164\1\151\1\143\1\162\1\145'+
    '\1\164\1\163\1\162\1\164\1\143\3\145\1\144\1\141\1\157\1\163\1\156\1'+
    '\145\1\ufaff\1\164\1\145\2\141\1\163\1\ufaff\1\151\1\ufaff\2\154\1\145'+
    '\1\141\1\147\1\142\1\uffff\1\141\1\154\1\165\1\141\1\151\1\145\1\141'+
    '\1\162\1\145\1\162\1\uffff\1\141\1\151\1\143\1\150\1\164\1\162\1\143'+
    '\1\163\1\ufaff\1\151\1\150\1\ufaff\1\156\2\ufaff\1\164\1\167\1\ufaff'+
    '\1\163\1\ufaff\1\uffff\2\162\1\154\1\164\1\145\1\uffff\1\166\1\uffff'+
    '\1\ufaff\1\145\1\ufaff\1\153\1\ufaff\1\154\1\165\1\145\1\162\1\147\2'+
    '\143\2\164\1\155\1\146\1\156\1\143\1\164\1\162\2\ufaff\1\150\1\ufaff'+
    '\1\uffff\1\156\1\ufaff\1\uffff\1\144\2\uffff\1\151\1\ufaff\1\uffff\1'+
    '\151\1\uffff\1\141\1\164\3\ufaff\1\145\1\uffff\1\141\1\uffff\1\ufaff'+
    '\1\uffff\1\145\1\154\1\ufaff\1\156\1\145\1\ufaff\1\164\1\145\1\ufaff'+
    '\1\145\1\141\1\143\1\ufaff\1\146\1\157\2\uffff\1\ufaff\1\uffff\1\165'+
    '\1\uffff\1\163\1\154\1\ufaff\1\uffff\1\145\1\143\1\ufaff\1\171\3\uffff'+
    '\1\ufaff\1\156\1\uffff\1\ufaff\1\164\1\uffff\2\ufaff\1\uffff\1\145\1'+
    '\ufaff\1\uffff\1\156\1\143\1\145\1\uffff\1\160\1\156\1\uffff\1\145\1'+
    '\ufaff\1\145\1\uffff\1\156\1\164\1\uffff\1\ufaff\1\uffff\1\ufaff\1\uffff'+
    '\1\ufaff\2\uffff\1\144\1\uffff\1\164\1\145\1\157\1\ufaff\1\151\1\ufaff'+
    '\1\uffff\1\ufaff\1\164\1\ufaff\3\uffff\1\ufaff\1\163\1\ufaff\1\146\1'+
    '\uffff\1\172\2\uffff\1\ufaff\2\uffff\1\ufaff\1\uffff\1\ufaff\1\145\3'+
    '\uffff\1\144\1\ufaff\1\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\6\uffff\1\12\1\13\1\14\1\uffff'+
    '\1\16\1\17\1\uffff\1\22\1\23\10\uffff\1\50\1\52\1\53\1\55\6\uffff\1'+
    '\67\1\uffff\1\105\2\uffff\1\133\13\uffff\1\54\1\5\1\61\1\6\6\uffff\1'+
    '\63\1\71\1\15\3\uffff\1\74\1\25\17\uffff\1\57\1\103\1\77\1\60\1\104'+
    '\1\100\1\62\1\101\1\64\1\70\1\72\1\65\1\73\1\66\1\102\1\75\1\106\11'+
    '\uffff\1\115\42\uffff\1\121\12\uffff\1\44\24\uffff\1\122\5\uffff\1\117'+
    '\1\uffff\1\110\30\uffff\1\41\2\uffff\1\132\1\uffff\1\116\1\21\2\uffff'+
    '\1\107\1\uffff\1\112\6\uffff\1\111\1\uffff\1\42\1\uffff\1\45\17\uffff'+
    '\1\43\1\51\1\uffff\1\7\1\uffff\1\131\3\uffff\1\126\4\uffff\1\32\1\46'+
    '\1\113\2\uffff\1\127\2\uffff\1\120\2\uffff\1\26\2\uffff\1\3\3\uffff'+
    '\1\4\2\uffff\1\124\3\uffff\1\24\2\uffff\1\114\1\uffff\1\33\1\uffff\1'+
    '\47\1\uffff\1\125\1\1\1\uffff\1\30\6\uffff\1\10\3\uffff\1\123\1\40\1'+
    '\56\4\uffff\1\37\1\uffff\1\130\1\36\1\uffff\1\31\1\27\1\uffff\1\20\2'+
    '\uffff\1\35\1\11\1\76\2\uffff\1\34');
  fspecial:=unpackEncodedString('\u0150\uffff');
  AddTransition(unpackEncodedString('\2\51\1\uffff\2\51\22\uffff\1\51\1'+
  '\45\1\51\1\uffff\1\51\1\43\1\14\1\51\1\33\1\34\1\6\1\36\1\12\1\37\1\5'+
  '\1\40\12\51\1\44\1\2\1\11\1\23\1\13\1\32\1\35\32\51\1\20\1\uffff\1\21'+
  '\1\42\1\51\1\uffff\1\24\1\27\1\7\1\31\1\10\1\25\2\51\1\3\2\51\1\30\1\51'+
  '\1\26\1\51\1\1\1\51\1\50\1\4\1\22\1\51\1\17\1\47\3\51\1\15\1\41\1\16\1'+
  '\46\101\uffff\27\51\1\uffff\37\51\1\uffff\u1f08\51\u1040\uffff\u0150\51'+
  '\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2\uffff\u5200\51\u5900'+
  '\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\52\20\uffff\1\54\2\uffff\1\53'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\57\6\uffff\1\55\1\56'));
  AddTransition(unpackEncodedString('\1\62\13\uffff\1\60\1\63\1\uffff\1'+
  '\64\1\uffff\1\61'));
  AddTransition(unpackEncodedString('\1\65\1\uffff\12\51'));
  AddTransition(unpackEncodedString('\1\67'));
  AddTransition(unpackEncodedString('\1\74\6\uffff\1\72\3\uffff\1\71\2\uffff'+
  '\1\73'));
  AddTransition(unpackEncodedString('\1\76\13\uffff\1\75'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\100\26\uffff\1\77'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\102'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\103\11\uffff\1\104'));
  AddTransition(unpackEncodedString('\1\105'));
  AddTransition(unpackEncodedString('\1\107\20\uffff\1\110'));
  AddTransition(unpackEncodedString('\1\113\7\uffff\1\111\2\uffff\1\112'+
  '\2\uffff\1\114'));
  AddTransition(unpackEncodedString('\1\115\3\uffff\1\116\17\uffff\1\117'));
  AddTransition(unpackEncodedString('\1\120\2\uffff\1\122\6\uffff\1\121'));
  AddTransition(unpackEncodedString('\1\123'));
  AddTransition(unpackEncodedString('\1\125\11\uffff\1\124'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\127\21\uffff\1\126'));
  AddTransition(unpackEncodedString('\1\132\17\uffff\1\131'));
  AddTransition(unpackEncodedString('\1\51\4\uffff\1\51\15\uffff\1\134'));
  AddTransition(unpackEncodedString('\1\136\76\uffff\1\137'));
  AddTransition(unpackEncodedString('\1\141'));
  AddTransition(unpackEncodedString('\1\143'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\145'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\147'));
  AddTransition(unpackEncodedString('\1\150'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\151'));
  AddTransition(unpackEncodedString('\1\152'));
  AddTransition(unpackEncodedString('\1\154\5\uffff\1\153'));
  AddTransition(unpackEncodedString('\1\155'));
  AddTransition(unpackEncodedString('\1\157\1\156'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\161\20\uffff\1\162'));
  AddTransition(unpackEncodedString('\1\163'));
  AddTransition(unpackEncodedString('\1\164'));
  AddTransition(unpackEncodedString('\1\165'));
  AddTransition(unpackEncodedString('\1\166'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\167'));
  AddTransition(unpackEncodedString('\1\170'));
  AddTransition(unpackEncodedString('\1\171'));
  AddTransition(unpackEncodedString('\1\173\1\172'));
  AddTransition(unpackEncodedString('\1\174'));
  AddTransition(unpackEncodedString('\1\175'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\176\2\uffff\1\177'));
  AddTransition(unpackEncodedString('\1\u0081\10\uffff\1\u0080'));
  AddTransition(unpackEncodedString('\1\u0082\23\uffff\1\u0083\3\uffff\1'+
  '\u0084'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0085'));
  AddTransition(unpackEncodedString('\1\u0086'));
  AddTransition(unpackEncodedString('\1\u0087'));
  AddTransition(unpackEncodedString('\1\u0088'));
  AddTransition(unpackEncodedString('\1\u0089'));
  AddTransition(unpackEncodedString('\1\u008a'));
  AddTransition(unpackEncodedString('\1\u008b'));
  AddTransition(unpackEncodedString('\1\u008c'));
  AddTransition(unpackEncodedString('\1\u008d'));
  AddTransition(unpackEncodedString('\1\u008e'));
  AddTransition(unpackEncodedString('\1\u008f'));
  AddTransition(unpackEncodedString('\1\u0090'));
  AddTransition(unpackEncodedString('\1\u0091'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\24\51\1\u0092\5\51\105\uffff\27\51\1\uffff\37\51'+
  '\1\uffff\u1f08\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff'+
  '\u092e\51\u10d2\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0094'));
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
  AddTransition(unpackEncodedString('\1\u0095'));
  AddTransition(unpackEncodedString('\1\u0096'));
  AddTransition(unpackEncodedString('\1\u0097'));
  AddTransition(unpackEncodedString('\1\u0098'));
  AddTransition(unpackEncodedString('\1\u0099'));
  AddTransition(unpackEncodedString('\1\u009a'));
  AddTransition(unpackEncodedString('\1\u009c\2\uffff\1\u009b'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\4\51\1\u009d\25\51\105\uffff\27\51\1\uffff\37\51'+
  '\1\uffff\u1f08\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff'+
  '\u092e\51\u10d2\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u009f'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00a0'));
  AddTransition(unpackEncodedString('\1\u00a1'));
  AddTransition(unpackEncodedString('\1\u00a2'));
  AddTransition(unpackEncodedString('\1\u00a3'));
  AddTransition(unpackEncodedString('\1\u00a4'));
  AddTransition(unpackEncodedString('\1\u00a5'));
  AddTransition(unpackEncodedString('\1\u00a6'));
  AddTransition(unpackEncodedString('\1\u00a7'));
  AddTransition(unpackEncodedString('\1\u00a8'));
  AddTransition(unpackEncodedString('\1\u00a9'));
  AddTransition(unpackEncodedString('\1\u00aa'));
  AddTransition(unpackEncodedString('\1\u00ab'));
  AddTransition(unpackEncodedString('\1\u00ac'));
  AddTransition(unpackEncodedString('\1\u00ad'));
  AddTransition(unpackEncodedString('\1\u00ae'));
  AddTransition(unpackEncodedString('\1\u00af'));
  AddTransition(unpackEncodedString('\1\u00b0'));
  AddTransition(unpackEncodedString('\1\u00b1'));
  AddTransition(unpackEncodedString('\1\u00b2'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00b4'));
  AddTransition(unpackEncodedString('\1\u00b5'));
  AddTransition(unpackEncodedString('\1\u00b6'));
  AddTransition(unpackEncodedString('\1\u00b7'));
  AddTransition(unpackEncodedString('\1\u00b8'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00ba'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00bc'));
  AddTransition(unpackEncodedString('\1\u00bd'));
  AddTransition(unpackEncodedString('\1\u00be'));
  AddTransition(unpackEncodedString('\1\u00bf'));
  AddTransition(unpackEncodedString('\1\u00c0'));
  AddTransition(unpackEncodedString('\1\u00c1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00c2'));
  AddTransition(unpackEncodedString('\1\u00c3'));
  AddTransition(unpackEncodedString('\1\u00c4'));
  AddTransition(unpackEncodedString('\1\u00c5'));
  AddTransition(unpackEncodedString('\1\u00c6'));
  AddTransition(unpackEncodedString('\1\u00c7'));
  AddTransition(unpackEncodedString('\1\u00c8'));
  AddTransition(unpackEncodedString('\1\u00c9'));
  AddTransition(unpackEncodedString('\1\u00ca'));
  AddTransition(unpackEncodedString('\1\u00cb'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00cc'));
  AddTransition(unpackEncodedString('\1\u00cd'));
  AddTransition(unpackEncodedString('\1\u00ce'));
  AddTransition(unpackEncodedString('\1\u00cf'));
  AddTransition(unpackEncodedString('\1\u00d0'));
  AddTransition(unpackEncodedString('\1\u00d1'));
  AddTransition(unpackEncodedString('\1\u00d2'));
  AddTransition(unpackEncodedString('\1\u00d3'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00d5'));
  AddTransition(unpackEncodedString('\1\u00d6'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00d8'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00db'));
  AddTransition(unpackEncodedString('\1\u00dc'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00de'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00e0'));
  AddTransition(unpackEncodedString('\1\u00e1'));
  AddTransition(unpackEncodedString('\1\u00e2'));
  AddTransition(unpackEncodedString('\1\u00e3'));
  AddTransition(unpackEncodedString('\1\u00e4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00e5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00e7'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00e9'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00eb'));
  AddTransition(unpackEncodedString('\1\u00ec'));
  AddTransition(unpackEncodedString('\1\u00ed'));
  AddTransition(unpackEncodedString('\1\u00ee'));
  AddTransition(unpackEncodedString('\1\u00ef'));
  AddTransition(unpackEncodedString('\1\u00f0'));
  AddTransition(unpackEncodedString('\1\u00f1'));
  AddTransition(unpackEncodedString('\1\u00f2'));
  AddTransition(unpackEncodedString('\1\u00f3'));
  AddTransition(unpackEncodedString('\1\u00f4'));
  AddTransition(unpackEncodedString('\1\u00f5'));
  AddTransition(unpackEncodedString('\1\u00f6'));
  AddTransition(unpackEncodedString('\1\u00f7'));
  AddTransition(unpackEncodedString('\1\u00f8'));
  AddTransition(unpackEncodedString('\1\u00f9'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u00fc'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u00fe'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0100'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0101'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\22\51\1\u0102\7\51\105\uffff\27\51\1\uffff\37\51'+
  '\1\uffff\u1f08\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff'+
  '\u092e\51\u10d2\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0104'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0105'));
  AddTransition(unpackEncodedString('\1\u0106'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\13\51\1\u0107\16\51\105\uffff\27\51\1\uffff\37\51'+
  '\1\uffff\u1f08\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff'+
  '\u092e\51\u10d2\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u010b'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u010c'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u010e'));
  AddTransition(unpackEncodedString('\1\u010f'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0111'));
  AddTransition(unpackEncodedString('\1\u0112'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0114'));
  AddTransition(unpackEncodedString('\1\u0115'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0117'));
  AddTransition(unpackEncodedString('\1\u0118'));
  AddTransition(unpackEncodedString('\1\u0119'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u011b'));
  AddTransition(unpackEncodedString('\1\u011c'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u011e'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u011f'));
  AddTransition(unpackEncodedString('\1\u0120'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0122'));
  AddTransition(unpackEncodedString('\1\u0123'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0125'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0127'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0129'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u012c'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u012e'));
  AddTransition(unpackEncodedString('\1\u012f'));
  AddTransition(unpackEncodedString('\1\u0130'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0131'));
  AddTransition(unpackEncodedString('\1\u0132'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0133'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0135'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0136'));
  AddTransition(unpackEncodedString('\1\u0137'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u013b'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u013c'));
  AddTransition(unpackEncodedString('\1\u013d'));
  AddTransition(unpackEncodedString('\1\u013e'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0140'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0143'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0146'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u0148'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u0149'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString('\1\u014d'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\u014e'));
  AddTransition(unpackEncodedString('\1\51\13\uffff\12\51\7\uffff\32\51'+
  '\4\uffff\1\51\1\uffff\32\51\105\uffff\27\51\1\uffff\37\51\1\uffff\u1f08'+
  '\51\u1040\uffff\u0150\51\u0170\uffff\u0080\51\u0080\uffff\u092e\51\u10d2'+
  '\uffff\u5200\51\u5900\uffff\u0200\51'));
  AddTransition(unpackEncodedString(''));
end;

function TJavaLexer.TAntlrDFA1.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | '+
  'T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | '+
  'T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | '+
  'T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | '+
  'T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | '+
  'T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | '+
  'T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | '+
  'T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | T__101 '+
  '| T__102 | T__103 | T__104 | T__105 | T__106 | T__107 | T__108 | T__109 | T__110'+
  ' | T__111 | T__112 | T__113 | JavaLexerRules. Tokens );';
end;



 


end.