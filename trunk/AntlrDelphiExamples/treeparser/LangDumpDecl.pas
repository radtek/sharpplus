// $ANTLR 3.1.2 LangDumpDecl.g 2009-07-23 21:46:38
unit LangDumpDecl;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

    const WS=9;
    const FLOATTYPE=7;
    const T__10=10;
    const INT=8;
    const ID=5;
    const INTTYPE=6;
    const TDECL=4;
    const EOF=-1;              
type
  TLangDumpDecl = class(TAntlrTreeParser)
  public
    tokenNames:TStrings;
    FOLLOW_TDECL_in_decl46:IBitSet;
    FOLLOW_dtype_in_decl48:IBitSet;
    FOLLOW_declarator_in_decl50:IBitSet;
    FOLLOW_INTTYPE_in_dtype82:IBitSet;
    FOLLOW_ID_in_declarator96:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "decl"
    // LangDumpDecl.g:8:1: decl : ^( TDECL dtype declarator ) ;
    function decl():Integer;
    // $ANTLR end decl


    // $ANTLR start "dtype"
    // LangDumpDecl.g:13:1: dtype : INTTYPE ;
    function dtype():Integer;
    // $ANTLR end dtype

    public
        type ILangDumpDecl_declarator_return=interface(ITreeRuleReturnScope)
        ['{21174EC8-D332-4666-928A-2778AC4C073C}']
        end;   
        type declarator_return =class( TTreeRuleReturnScope , ILangDumpDecl_declarator_return)
        private
        public

        end;

    // $ANTLR start "declarator"
    // LangDumpDecl.g:15:1: declarator : ID ;
    function declarator():ILangDumpDecl_declarator_return{ITreeRuleReturnScope};
    // $ANTLR end declarator

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TLangDumpDecl.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TLangDumpDecl.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"TDECL"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"INTTYPE"');
  tokenNames.Add('"FLOATTYPE"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"'';''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TLangDumpDecl.InitBitsets;
begin
  FOLLOW_TDECL_in_decl46 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_dtype_in_decl48 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_declarator_in_decl50 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INTTYPE_in_dtype82 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_declarator96 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TLangDumpDecl.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TLangDumpDecl.GetGrammarFileName():String;
begin
  Result:='LangDumpDecl.g'; 
end;

// $ANTLR start "decl"
// LangDumpDecl.g:8:1: decl : ^( TDECL dtype declarator ) ;
function TLangDumpDecl.decl():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  declarator1:ILangDumpDecl_declarator_return{ITreeRuleReturnScope}; 


begin
    try 
      try
        // ruleBlockSingleAlt:LangDumpDecl.g:8:6: ( ^( TDECL dtype declarator ) )
        // LangDumpDecl.g:8:8: ^( TDECL dtype declarator )
        begin
        match(input,TDECL,FOLLOW_TDECL_in_decl46); 


        match(input, DOWN, nil); 
        pushFollow(FOLLOW_dtype_in_decl48);
        dtype();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_declarator_in_decl50);
        declarator1:=declarator();

        state._fsp:=state._fsp-1;


        match(input, UP, nil); 

        Writeln('int '+(IIF(Assigned(declarator1), input.getTokenStream().toString(
          input.getTreeAdaptor().getTokenStartIndex(declarator1.start),
          input.getTreeAdaptor().getTokenStopIndex(declarator1.start)),'')));

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "dtype"
// LangDumpDecl.g:13:1: dtype : INTTYPE ;
function TLangDumpDecl.dtype():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:LangDumpDecl.g:13:7: ( INTTYPE )
        // LangDumpDecl.g:13:9: INTTYPE
        begin
        match(input,INTTYPE,FOLLOW_INTTYPE_in_dtype82); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;

// $ANTLR start "declarator"
// LangDumpDecl.g:15:1: declarator : ID ;
function TLangDumpDecl.declarator():ILangDumpDecl_declarator_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ILangDumpDecl_declarator_return{ITreeRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    retval := declarator_return.Create();
    retval.start := input.LT(1);

    try 
      try
        // ruleBlockSingleAlt:LangDumpDecl.g:16:6: ( ID )
        // LangDumpDecl.g:16:8: ID
        begin
        match(input,ID,FOLLOW_ID_in_declarator96); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval//declarator_return(retval.getobject);;
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.