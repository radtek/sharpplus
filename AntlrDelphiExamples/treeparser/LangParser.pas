// $ANTLR 3.2 10 03, 2009 17:07:46 Lang.g 2009-10-03 17:20:09
unit LangParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const WS=9;
    const FLOATTYPE=7;
    const T__10=10;
    const INT=8;
    const ID=5;
    const EOF=-1;
    const TDECL=4;
    const INTTYPE=6;              
type
  TLangParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_decl_in_start39:IBitSet;
    FOLLOW_dtype_in_decl48:IBitSet;
    FOLLOW_ID_in_decl50:IBitSet;
    FOLLOW_10_in_decl52:IBitSet;
    FOLLOW_set_in_dtype0:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    protected 
      adaptor:ITreeAdaptor;

    public
      procedure setTreeAdaptor(AAdaptor:ITreeAdaptor); 
      function getTreeAdaptor():ITreeAdaptor;
    public
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public

    public
        type ILangParser_start_return=interface(IParserRuleReturnScope)
        ['{9953EA4B-AA78-4FC2-98E3-F48788899E2E}']
        end;   
        type start_return =class( TParserRuleReturnScope , ILangParser_start_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "start"
    // Lang.g:10:1: start : decl ;
    function start():ILangParser_start_return{IParserRuleReturnScope};
    // $ANTLR end start

    public
        type ILangParser_decl_return=interface(IParserRuleReturnScope)
        ['{60CAF5A4-8C12-41AF-A017-DD0E779517D9}']
        end;   
        type decl_return =class( TParserRuleReturnScope , ILangParser_decl_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "decl"
    // Lang.g:12:1: decl : dtype ID '';'' -> ^( TDECL dtype ID ) ;
    function decl():ILangParser_decl_return{IParserRuleReturnScope};
    // $ANTLR end decl

    public
        type ILangParser_dtype_return=interface(IParserRuleReturnScope)
        ['{FC8E513A-5AC0-4487-97D1-ECFA5E71FBD3}']
        end;   
        type dtype_return =class( TParserRuleReturnScope , ILangParser_dtype_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "dtype"
    // Lang.g:14:1: dtype : ( INTTYPE | FLOATTYPE );
    function dtype():ILangParser_dtype_return{IParserRuleReturnScope};
    // $ANTLR end dtype

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TLangParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TLangParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
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

procedure TLangParser.InitBitsets;
begin
  FOLLOW_decl_in_start39 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_decl48 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_ID_in_decl50 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_10_in_decl52 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_dtype0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TLangParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TLangParser.GetGrammarFileName():String;
begin
  Result:='Lang.g'; 
end;




{
function TLangParser.TLangParser_start_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "start"
// Lang.g:10:1: start : decl ;
function TLangParser.start():ILangParser_start_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ILangParser_start_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  decl1:ILangParser_decl_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := start_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Lang.g:10:7: ( decl )
        // Lang.g:10:9: decl
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_decl_in_start39);
        decl1:=decl();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], decl1.getTree());

        end;

        retval.stop := input.LT(-1);

            retval.tree := ITree(getTreeAdaptor.rulePostProcessing(root[0]));
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ITree;

      end;
    end;
    finally 
    end;
    Result:=retval//start_return(retval.getobject);;
end;


{
function TLangParser.TLangParser_decl_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "decl"
// Lang.g:12:1: decl : dtype ID '';'' -> ^( TDECL dtype ID ) ;
function TLangParser.decl():ILangParser_decl_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ILangParser_decl_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID3:IToken;
  char_literal4:IToken;
  dtype2:ILangParser_dtype_return{IParserRuleReturnScope}; 


  ID3_tree:ITree;
  char_literal4_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('10')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 10');
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('dtype')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule dtype');
  end;
begin
    initRule;
    retval := decl_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Lang.g:12:6: ( dtype ID '';'' -> ^( TDECL dtype ID ) )
        // Lang.g:12:8: dtype ID '';''
        begin
        pushFollow(FOLLOW_dtype_in_decl48);
        dtype2:=dtype();

        state._fsp:=state._fsp-1;

        _stream[SIndex('dtype')].add(dtype2.getTree());
        ID3:=match(input,ID,FOLLOW_ID_in_decl50) as IToken; 
         
        _stream[SIndex('ID')].add(ID3);

        char_literal4:=match(input,10,FOLLOW_10_in_decl52) as IToken; 
         
        _stream[SIndex('10')].add(char_literal4);



        // AST REWRITE
        // elements: ID, dtype
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 12:21: -> ^( TDECL dtype ID )
        begin
            // Lang.g:12:24: ^( TDECL dtype ID )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(TDECL, 'TDECL'), root[1]));

            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('dtype')].nextTree());
            //-4
            getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());

            //-5
            getTreeAdaptor.addChild(root[0], root[1]);
            end;

        end;

        retval.tree := root[0];
        end;

        retval.stop := input.LT(-1);

            retval.tree := ITree(getTreeAdaptor.rulePostProcessing(root[0]));
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ITree;

      end;
    end;
    finally 
    end;
    Result:=retval//decl_return(retval.getobject);;
end;


{
function TLangParser.TLangParser_dtype_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "dtype"
// Lang.g:14:1: dtype : ( INTTYPE | FLOATTYPE );
function TLangParser.dtype():ILangParser_dtype_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ILangParser_dtype_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  set5:IToken;

  set5_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := dtype_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Lang.g:14:7: ( INTTYPE | FLOATTYPE )
        // Lang.g:
        begin
        root[0] := ITree(getTreeAdaptor.null());

        set5:=IToken(input.LT(1));
        if ( ((input.LA(1)>=INTTYPE) and (input.LA(1)<=FLOATTYPE)) ) then
        begin
            input.consume();
            getTreeAdaptor.addChild(root[0], ITree(getTreeAdaptor.CreateWithToken(set5)));
            state.errorRecovery:=false;
        end
        else 
        begin
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

        retval.stop := input.LT(-1);

            retval.tree := ITree(getTreeAdaptor.rulePostProcessing(root[0]));
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ITree;

      end;
    end;
    finally 
    end;
    Result:=retval//dtype_return(retval.getobject);;
end;


 

procedure TLangParser.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TLangParser.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.