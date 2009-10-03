// $ANTLR 3.1.2 Simple__.g 2009-07-23 21:42:44
unit SimpleLexer;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

type
    TSimpleLexer = class(TAntlrLexer)
    public
      const WS=12;
      const T__16=16;
      const T__15=15;
      const LINE_COMMENT=11;
      const T__14=14;
      const T_STRING=9;
      const T__13=13;
      const ESC=7;
      const CHAR=8;
      const INT=5;
      const FLOAT=6;
      const ID=4;
      const COMMENT=10;
      const Tokens=17;
      const EOF=-1;
    // delegates
    public 
        gCommonLexer:TAntlrBaseRecognizer{TSimple_CommonLexer} ;
    // delegators
      
      constructor CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
      destructor Destroy;override;
      function GetGrammarFileName():String;

    // $ANTLR start "T__13"
    procedure mT__13();
    // $ANTLR end T__13

    // $ANTLR start "T__14"
    procedure mT__14();
    // $ANTLR end T__14

    // $ANTLR start "T__15"
    procedure mT__15();
    // $ANTLR end T__15

    // $ANTLR start "T__16"
    procedure mT__16();
    // $ANTLR end T__16

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
    Simple_CommonLexer,
    // delegators
 
     JclHashSets ;

constructor TSimpleLexer.CreateWithStream(input:ICharStream;AState:TRecognizerSharedState);
begin
  Inherited CreateWithStream(input, AState);
  //InitMembers
  
gCommonLexer := TSimple_CommonLexer.CreateWithStream(input, state, self);         
end;

destructor TSimpleLexer.Destroy;
begin
gCommonLexer.free;
 inherited;
end;

function TSimpleLexer.GetGrammarFileName():String;
begin
  Result:='Simple__.g';
end;

// $ANTLR start "T__13"
procedure TSimpleLexer.mT__13();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__13;
        _channel := 0;
        // ruleBlockSingleAlt:Simple__.g:7:7: ( ''program'' )
        // Simple__.g:7:9: ''program''
        begin
        match('program');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__13// $ANTLR start "T__14"
procedure TSimpleLexer.mT__14();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__14;
        _channel := 0;
        // ruleBlockSingleAlt:Simple__.g:8:7: ( '';'' )
        // Simple__.g:8:9: '';''
        begin
        match($003B);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__14// $ANTLR start "T__15"
procedure TSimpleLexer.mT__15();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__15;
        _channel := 0;
        // ruleBlockSingleAlt:Simple__.g:9:7: ( ''var'' )
        // Simple__.g:9:9: ''var''
        begin
        match('var');



        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__15// $ANTLR start "T__16"
procedure TSimpleLexer.mT__16();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        _type := T__16;
        _channel := 0;
        // ruleBlockSingleAlt:Simple__.g:10:7: ( ''='' )
        // Simple__.g:10:9: ''=''
        begin
        match($003D);


        end;

        state._type := _type;
        state.channel := _channel;
    finally 
    end;
end;
// $ANTLR end T__16// $ANTLR start "Tokens"
procedure TSimpleLexer.mTokens();
var
  
  _type:Integer;
  _channel:Integer;
  _alt:array [0..255] of Integer;
begin
    try 
        // ruleBlock:Simple__.g:1:8: ( T__13 | T__14 | T__15 | T__16 | CommonLexer. Tokens )
        _alt[1]:=5;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SimpleLexer attribute is inherited via the parser, lexer, ...
         *}
        _alt[1] := getDfa1.predict(input);
        case (_alt[1]) of 
             1 :
                begin
                // Simple__.g:1:10: T__13
                begin
                mT__13(); 


                end;
                end;
             2 :
                begin
                // Simple__.g:1:16: T__14
                begin
                mT__14(); 


                end;
                end;
             3 :
                begin
                // Simple__.g:1:22: T__15
                begin
                mT__15(); 


                end;
                end;
             4 :
                begin
                // Simple__.g:1:28: T__16
                begin
                mT__16(); 


                end;
                end;
             5 :
                begin
                // Simple__.g:1:34: CommonLexer. Tokens
                begin
                TSimple_CommonLexer(gCommonLexer).mTokens(); 


                end;
                end;

        end;
    finally 
    end;
end;
// $ANTLR end Tokens



function TSimpleLexer.getDfa1:IDFA;
begin
  if not Assigned(dfa1) then
    dfa1:=TAntlrDFA1.Create(self);
  Result:=dfa1;  
end;

constructor TSimpleLexer.TAntlrDFA1.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=1;
  feot:=unpackEncodedString('\1\uffff\1\5\1\uffff\1\5\2\uffff\3\5\1\13\1'+
    '\5\1\uffff\2\5\1\17\1\uffff');
  feof:=unpackEncodedString('\20\uffff');

  FMinc:=unpackEncodedString('\1\11\1\162\1\uffff\1\141\2\uffff\1\157\1'+
    '\162\1\147\1\60\1\162\1\uffff\1\141\1\155\1\60\1\uffff');

  FMaxc:=unpackEncodedString('\1\172\1\162\1\uffff\1\141\2\uffff\1\157\1'+
    '\162\1\147\1\172\1\162\1\uffff\1\141\1\155\1\172\1\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\uffff\1\4\1\5\5\uffff\1\3'+
    '\3\uffff\1\1');
  fspecial:=unpackEncodedString('\20\uffff');
  AddTransition(unpackEncodedString('\2\5\2\uffff\1\5\22\uffff\1\5\1\uffff'+
  '\1\5\4\uffff\1\5\6\uffff\14\5\1\uffff\1\2\1\uffff\1\4\3\uffff\32\5\4\uffff'+
  '\1\5\1\uffff\17\5\1\1\5\5\1\3\4\5'));
  AddTransition(unpackEncodedString('\1\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\7'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\10'));
  AddTransition(unpackEncodedString('\1\11'));
  AddTransition(unpackEncodedString('\1\12'));
  AddTransition(unpackEncodedString('\12\5\7\uffff\32\5\4\uffff\1\5\1\uffff'+
  '\32\5'));
  AddTransition(unpackEncodedString('\1\14'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\15'));
  AddTransition(unpackEncodedString('\1\16'));
  AddTransition(unpackEncodedString('\12\5\7\uffff\32\5\4\uffff\1\5\1\uffff'+
  '\32\5'));
  AddTransition(unpackEncodedString(''));
end;

function TSimpleLexer.TAntlrDFA1.getDescription():string;
begin
  Result:='1:1: Tokens : ( T__13 | T__14 | T__15 | T__16 | CommonLexer. Tokens );';
end;



 


end.