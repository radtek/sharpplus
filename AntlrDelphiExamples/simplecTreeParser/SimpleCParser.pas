// $ANTLR 3.2 10 03, 2009 17:07:46 SimpleC.g 2009-10-03 17:18:18
unit SimpleCParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const LT=18;
    const T__26=26;
    const T__25=25;
    const T__24=24;
    const T__23=23;
    const T__22=22;
    const T__21=21;
    const CHAR=15;
    const TBLOCK=9;
    const FUNC_HDR=6;
    const INT=12;
    const FUNC_DEF=8;
    const INT_TYPE=14;
    const ID=10;
    const EOF=-1;
    const FUNC_DECL=7;
    const ARG_DEF=5;
    const WS=20;
    const DFOR=13;
    const PLUS=19;
    const VOID=16;
    const EQ=11;
    const VAR_DEF=4;
    const EQEQ=17;              
type
  TSimpleCParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_declaration_in_prog85:IBitSet;
    FOLLOW_variable_in_declaration105:IBitSet;
    FOLLOW_functionHeader_in_declaration115:IBitSet;
    FOLLOW_21_in_declaration117:IBitSet;
    FOLLOW_functionHeader_in_declaration135:IBitSet;
    FOLLOW_block_in_declaration137:IBitSet;
    FOLLOW_dtype_in_variable166:IBitSet;
    FOLLOW_declarator_in_variable168:IBitSet;
    FOLLOW_21_in_variable170:IBitSet;
    FOLLOW_ID_in_declarator199:IBitSet;
    FOLLOW_dtype_in_functionHeader219:IBitSet;
    FOLLOW_ID_in_functionHeader221:IBitSet;
    FOLLOW_22_in_functionHeader223:IBitSet;
    FOLLOW_formalParameter_in_functionHeader227:IBitSet;
    FOLLOW_23_in_functionHeader231:IBitSet;
    FOLLOW_formalParameter_in_functionHeader233:IBitSet;
    FOLLOW_24_in_functionHeader241:IBitSet;
    FOLLOW_dtype_in_formalParameter281:IBitSet;
    FOLLOW_declarator_in_formalParameter283:IBitSet;
    FOLLOW_set_in_dtype0:IBitSet;
    FOLLOW_25_in_block376:IBitSet;
    FOLLOW_variable_in_block390:IBitSet;
    FOLLOW_stat_in_block405:IBitSet;
    FOLLOW_26_in_block416:IBitSet;
    FOLLOW_forStat_in_stat449:IBitSet;
    FOLLOW_expr_in_stat457:IBitSet;
    FOLLOW_21_in_stat459:IBitSet;
    FOLLOW_block_in_stat468:IBitSet;
    FOLLOW_assignStat_in_stat476:IBitSet;
    FOLLOW_21_in_stat478:IBitSet;
    FOLLOW_21_in_stat487:IBitSet;
    FOLLOW_DFOR_in_forStat507:IBitSet;
    FOLLOW_22_in_forStat509:IBitSet;
    FOLLOW_assignStat_in_forStat513:IBitSet;
    FOLLOW_21_in_forStat515:IBitSet;
    FOLLOW_expr_in_forStat517:IBitSet;
    FOLLOW_21_in_forStat519:IBitSet;
    FOLLOW_assignStat_in_forStat523:IBitSet;
    FOLLOW_24_in_forStat525:IBitSet;
    FOLLOW_block_in_forStat527:IBitSet;
    FOLLOW_ID_in_assignStat570:IBitSet;
    FOLLOW_EQ_in_assignStat572:IBitSet;
    FOLLOW_expr_in_assignStat574:IBitSet;
    FOLLOW_condExpr_in_expr598:IBitSet;
    FOLLOW_aexpr_in_condExpr617:IBitSet;
    FOLLOW_EQEQ_in_condExpr622:IBitSet;
    FOLLOW_LT_in_condExpr627:IBitSet;
    FOLLOW_aexpr_in_condExpr631:IBitSet;
    FOLLOW_atom_in_aexpr653:IBitSet;
    FOLLOW_PLUS_in_aexpr657:IBitSet;
    FOLLOW_atom_in_aexpr660:IBitSet;
    FOLLOW_ID_in_atom680:IBitSet;
    FOLLOW_INT_in_atom694:IBitSet;
    FOLLOW_22_in_atom708:IBitSet;
    FOLLOW_expr_in_atom710:IBitSet;
    FOLLOW_24_in_atom712:IBitSet;
    

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
        type ISimpleCParser_prog_return=interface(IParserRuleReturnScope)
        ['{9AEAED5B-0388-4105-8055-34B7A7CD4FD5}']
        end;   
        type prog_return =class( TParserRuleReturnScope , ISimpleCParser_prog_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "prog"
    // SimpleC.g:16:1: prog : ( declaration )+ ;
    function prog():ISimpleCParser_prog_return{IParserRuleReturnScope};
    // $ANTLR end prog

    public
        type ISimpleCParser_declaration_return=interface(IParserRuleReturnScope)
        ['{1122B5D1-FE9C-4E36-A4A4-7C0B2E623411}']
        end;   
        type declaration_return =class( TParserRuleReturnScope , ISimpleCParser_declaration_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "declaration"
    // SimpleC.g:20:1: declaration : ( variable | functionHeader '';'' -> ^( FUNC_DECL functionHeader ) | functionHeader block -> ^( FUNC_DEF functionHeader block ) );
    function declaration():ISimpleCParser_declaration_return{IParserRuleReturnScope};
    // $ANTLR end declaration

    public
        type ISimpleCParser_variable_return=interface(IParserRuleReturnScope)
        ['{34BBE39C-F3CF-4A02-8D73-BBCF5DC50955}']
        end;   
        type variable_return =class( TParserRuleReturnScope , ISimpleCParser_variable_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "variable"
    // SimpleC.g:26:1: variable : dtype declarator '';'' -> ^( VAR_DEF dtype declarator ) ;
    function variable():ISimpleCParser_variable_return{IParserRuleReturnScope};
    // $ANTLR end variable

    public
        type ISimpleCParser_declarator_return=interface(IParserRuleReturnScope)
        ['{633D9D2F-0560-4DCB-951B-DF2EB5B91407}']
        end;   
        type declarator_return =class( TParserRuleReturnScope , ISimpleCParser_declarator_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "declarator"
    // SimpleC.g:30:1: declarator : ID ;
    function declarator():ISimpleCParser_declarator_return{IParserRuleReturnScope};
    // $ANTLR end declarator

    public
        type ISimpleCParser_functionHeader_return=interface(IParserRuleReturnScope)
        ['{E571E61E-4396-4673-8A22-3F2771D2A78B}']
        end;   
        type functionHeader_return =class( TParserRuleReturnScope , ISimpleCParser_functionHeader_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "functionHeader"
    // SimpleC.g:34:1: functionHeader : dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')'' -> ^( FUNC_HDR dtype ID ( formalParameter )* ) ;
    function functionHeader():ISimpleCParser_functionHeader_return{IParserRuleReturnScope};
    // $ANTLR end functionHeader

    public
        type ISimpleCParser_formalParameter_return=interface(IParserRuleReturnScope)
        ['{FC6D7E48-0716-4C94-B9E6-583FABF755BF}']
        end;   
        type formalParameter_return =class( TParserRuleReturnScope , ISimpleCParser_formalParameter_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "formalParameter"
    // SimpleC.g:39:1: formalParameter : dtype declarator -> ^( ARG_DEF dtype declarator ) ;
    function formalParameter():ISimpleCParser_formalParameter_return{IParserRuleReturnScope};
    // $ANTLR end formalParameter

    public
        type ISimpleCParser_dtype_return=interface(IParserRuleReturnScope)
        ['{C63E6580-BA17-4680-B37B-C2E286407C88}']
        end;   
        type dtype_return =class( TParserRuleReturnScope , ISimpleCParser_dtype_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "dtype"
    // SimpleC.g:43:1: dtype : ( ''int'' | ''char'' | ''void'' | ID );
    function dtype():ISimpleCParser_dtype_return{IParserRuleReturnScope};
    // $ANTLR end dtype

    public
        type ISimpleCParser_block_return=interface(IParserRuleReturnScope)
        ['{FE9AD9C0-B45B-4A6E-BEB8-58BD52D96C14}']
        end;   
        type block_return =class( TParserRuleReturnScope , ISimpleCParser_block_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "block"
    // SimpleC.g:50:1: block : lc= ''{'' ( variable )* ( stat )* ''}'' -> ^( TBLOCK[$lc,''BLOCK''] ( variable )* ( stat )* ) ;
    function block():ISimpleCParser_block_return{IParserRuleReturnScope};
    // $ANTLR end block

    public
        type ISimpleCParser_stat_return=interface(IParserRuleReturnScope)
        ['{5CEFCA33-828E-439F-94FF-F6E2952EE651}']
        end;   
        type stat_return =class( TParserRuleReturnScope , ISimpleCParser_stat_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "stat"
    // SimpleC.g:58:1: stat : ( forStat | expr '';'' | block | assignStat '';'' | '';'' );
    function stat():ISimpleCParser_stat_return{IParserRuleReturnScope};
    // $ANTLR end stat

    public
        type ISimpleCParser_forStat_return=interface(IParserRuleReturnScope)
        ['{BE1B1AF5-3B1E-4234-966D-58C6593BCA4C}']
        end;   
        type forStat_return =class( TParserRuleReturnScope , ISimpleCParser_forStat_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "forStat"
    // SimpleC.g:65:1: forStat : ''for'' ''('' start= assignStat '';'' expr '';'' next= assignStat '')'' block -> ^( ''for'' $start expr $next block ) ;
    function forStat():ISimpleCParser_forStat_return{IParserRuleReturnScope};
    // $ANTLR end forStat

    public
        type ISimpleCParser_assignStat_return=interface(IParserRuleReturnScope)
        ['{1874023F-8F19-4D95-A75B-B6CA72C376E3}']
        end;   
        type assignStat_return =class( TParserRuleReturnScope , ISimpleCParser_assignStat_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "assignStat"
    // SimpleC.g:70:1: assignStat : ID EQ expr -> ^( EQ ID expr ) ;
    function assignStat():ISimpleCParser_assignStat_return{IParserRuleReturnScope};
    // $ANTLR end assignStat

    public
        type ISimpleCParser_expr_return=interface(IParserRuleReturnScope)
        ['{CD89F20E-A790-40E5-A4E6-E0863D91EDF2}']
        end;   
        type expr_return =class( TParserRuleReturnScope , ISimpleCParser_expr_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "expr"
    // SimpleC.g:74:1: expr : condExpr ;
    function expr():ISimpleCParser_expr_return{IParserRuleReturnScope};
    // $ANTLR end expr

    public
        type ISimpleCParser_condExpr_return=interface(IParserRuleReturnScope)
        ['{BCEFA19D-0C69-4335-A945-D4ADDDA9F7D8}']
        end;   
        type condExpr_return =class( TParserRuleReturnScope , ISimpleCParser_condExpr_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "condExpr"
    // SimpleC.g:77:1: condExpr : aexpr ( ( ''=='' | ''<'' ) aexpr )? ;
    function condExpr():ISimpleCParser_condExpr_return{IParserRuleReturnScope};
    // $ANTLR end condExpr

    public
        type ISimpleCParser_aexpr_return=interface(IParserRuleReturnScope)
        ['{BC8FC75F-4451-413F-8476-70B13C256142}']
        end;   
        type aexpr_return =class( TParserRuleReturnScope , ISimpleCParser_aexpr_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "aexpr"
    // SimpleC.g:81:1: aexpr : atom ( ''+'' atom )* ;
    function aexpr():ISimpleCParser_aexpr_return{IParserRuleReturnScope};
    // $ANTLR end aexpr

    public
        type ISimpleCParser_atom_return=interface(IParserRuleReturnScope)
        ['{0C1E3799-C990-4919-B69E-D2E5768B9675}']
        end;   
        type atom_return =class( TParserRuleReturnScope , ISimpleCParser_atom_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "atom"
    // SimpleC.g:85:1: atom : ( ID | INT | ''('' expr '')'' -> expr );
    function atom():ISimpleCParser_atom_return{IParserRuleReturnScope};
    // $ANTLR end atom

    // Delegated rules

  protected

     
          type TAntlrDFA2=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa2:IDFA;
        protected
          dfa2:IDFA;
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TSimpleCParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSimpleCParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"VAR_DEF"');
  tokenNames.Add('"ARG_DEF"');
  tokenNames.Add('"FUNC_HDR"');
  tokenNames.Add('"FUNC_DECL"');
  tokenNames.Add('"FUNC_DEF"');
  tokenNames.Add('"TBLOCK"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"EQ"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"DFOR"');
  tokenNames.Add('"INT_TYPE"');
  tokenNames.Add('"CHAR"');
  tokenNames.Add('"VOID"');
  tokenNames.Add('"EQEQ"');
  tokenNames.Add('"LT"');
  tokenNames.Add('"PLUS"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'',''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"''{''"');
  tokenNames.Add('"''}''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TSimpleCParser.InitBitsets;
begin
  FOLLOW_declaration_in_prog85 := TAntlrBitSet.CreateWithBits([$000000000001C402]);
  FOLLOW_variable_in_declaration105 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_functionHeader_in_declaration115 := TAntlrBitSet.CreateWithBits([$0000000000200000]);
  FOLLOW_21_in_declaration117 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_functionHeader_in_declaration135 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_block_in_declaration137 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_variable166 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_declarator_in_variable168 := TAntlrBitSet.CreateWithBits([$0000000000200000]);
  FOLLOW_21_in_variable170 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_declarator199 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_functionHeader219 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_ID_in_functionHeader221 := TAntlrBitSet.CreateWithBits([$0000000000400000]);
  FOLLOW_22_in_functionHeader223 := TAntlrBitSet.CreateWithBits([$000000000101C400]);
  FOLLOW_formalParameter_in_functionHeader227 := TAntlrBitSet.CreateWithBits([$0000000001800000]);
  FOLLOW_23_in_functionHeader231 := TAntlrBitSet.CreateWithBits([$000000000001C400]);
  FOLLOW_formalParameter_in_functionHeader233 := TAntlrBitSet.CreateWithBits([$0000000001800000]);
  FOLLOW_24_in_functionHeader241 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_dtype_in_formalParameter281 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_declarator_in_formalParameter283 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_dtype0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_25_in_block376 := TAntlrBitSet.CreateWithBits([$000000000661F400]);
  FOLLOW_variable_in_block390 := TAntlrBitSet.CreateWithBits([$000000000661F400]);
  FOLLOW_stat_in_block405 := TAntlrBitSet.CreateWithBits([$0000000006603400]);
  FOLLOW_26_in_block416 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_forStat_in_stat449 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expr_in_stat457 := TAntlrBitSet.CreateWithBits([$0000000000200000]);
  FOLLOW_21_in_stat459 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_stat468 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_assignStat_in_stat476 := TAntlrBitSet.CreateWithBits([$0000000000200000]);
  FOLLOW_21_in_stat478 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_21_in_stat487 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_DFOR_in_forStat507 := TAntlrBitSet.CreateWithBits([$0000000000400000]);
  FOLLOW_22_in_forStat509 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_assignStat_in_forStat513 := TAntlrBitSet.CreateWithBits([$0000000000200000]);
  FOLLOW_21_in_forStat515 := TAntlrBitSet.CreateWithBits([$0000000000401400]);
  FOLLOW_expr_in_forStat517 := TAntlrBitSet.CreateWithBits([$0000000000200000]);
  FOLLOW_21_in_forStat519 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_assignStat_in_forStat523 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_forStat525 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_block_in_forStat527 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_assignStat570 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_EQ_in_assignStat572 := TAntlrBitSet.CreateWithBits([$0000000000401400]);
  FOLLOW_expr_in_assignStat574 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_condExpr_in_expr598 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_aexpr_in_condExpr617 := TAntlrBitSet.CreateWithBits([$0000000000060002]);
  FOLLOW_EQEQ_in_condExpr622 := TAntlrBitSet.CreateWithBits([$0000000000401400]);
  FOLLOW_LT_in_condExpr627 := TAntlrBitSet.CreateWithBits([$0000000000401400]);
  FOLLOW_aexpr_in_condExpr631 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_atom_in_aexpr653 := TAntlrBitSet.CreateWithBits([$0000000000080002]);
  FOLLOW_PLUS_in_aexpr657 := TAntlrBitSet.CreateWithBits([$0000000000401400]);
  FOLLOW_atom_in_aexpr660 := TAntlrBitSet.CreateWithBits([$0000000000080002]);
  FOLLOW_ID_in_atom680 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_INT_in_atom694 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_22_in_atom708 := TAntlrBitSet.CreateWithBits([$0000000000401400]);
  FOLLOW_expr_in_atom710 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_atom712 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TSimpleCParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSimpleCParser.GetGrammarFileName():String;
begin
  Result:='SimpleC.g'; 
end;




{
function TSimpleCParser.TSimpleCParser_prog_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "prog"
// SimpleC.g:16:1: prog : ( declaration )+ ;
function TSimpleCParser.prog():ISimpleCParser_prog_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_prog_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  declaration1:ISimpleCParser_declaration_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := prog_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:17:5: ( ( declaration )+ )
        // SimpleC.g:17:9: ( declaration )+
        begin
        root[0] := ITree(getTreeAdaptor.null());

        // positiveClosureBlock:SimpleC.g:17:9: ( declaration )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=ID) or ((_LA[1,0]>=INT_TYPE) and 
            ( _LA[1,0]<=VOID))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // SimpleC.g:17:9: declaration
        	    begin
        	    pushFollow(FOLLOW_declaration_in_prog85);
        	    declaration1:=declaration();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], declaration1.getTree());

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
    Result:=retval//prog_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_declaration_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "declaration"
// SimpleC.g:20:1: declaration : ( variable | functionHeader '';'' -> ^( FUNC_DECL functionHeader ) | functionHeader block -> ^( FUNC_DEF functionHeader block ) );
function TSimpleCParser.declaration():ISimpleCParser_declaration_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_declaration_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal4:IToken;
  variable2:ISimpleCParser_variable_return{IParserRuleReturnScope}; 

  functionHeader3:ISimpleCParser_functionHeader_return{IParserRuleReturnScope}; 

  functionHeader5:ISimpleCParser_functionHeader_return{IParserRuleReturnScope}; 

  block6:ISimpleCParser_block_return{IParserRuleReturnScope}; 


  char_literal4_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('21')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 21');
  _stream[SIndex('functionHeader')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule functionHeader');
  _stream[SIndex('block')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule block');
  end;
begin
    initRule;
    retval := declaration_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:SimpleC.g:21:5: ( variable | functionHeader '';'' -> ^( FUNC_DECL functionHeader ) | functionHeader block -> ^( FUNC_DEF functionHeader block ) )
        _alt[2]:=3;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The SimpleCParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[2] := getDfa2.predict(input);
        case (_alt[2]) of 
             1 :
                begin
                // SimpleC.g:21:9: variable
                begin
                root[0] := ITree(getTreeAdaptor.null());

                pushFollow(FOLLOW_variable_in_declaration105);
                variable2:=variable();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], variable2.getTree());

                end;
                end;
             2 :
                begin
                // SimpleC.g:22:9: functionHeader '';''
                begin
                pushFollow(FOLLOW_functionHeader_in_declaration115);
                functionHeader3:=functionHeader();

                state._fsp:=state._fsp-1;

                _stream[SIndex('functionHeader')].add(functionHeader3.getTree());
                char_literal4:=match(input,21,FOLLOW_21_in_declaration117) as IToken; 
                 
                _stream[SIndex('21')].add(char_literal4);



                // AST REWRITE
                // elements: functionHeader
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 22:28: -> ^( FUNC_DECL functionHeader )
                begin
                    // SimpleC.g:22:31: ^( FUNC_DECL functionHeader )
                    begin
                    root[1] := ITree(getTreeAdaptor.null());
                    root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(FUNC_DECL, 'FUNC_DECL'), root[1]));

                    //0
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('functionHeader')].nextTree());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             3 :
                begin
                // SimpleC.g:23:9: functionHeader block
                begin
                pushFollow(FOLLOW_functionHeader_in_declaration135);
                functionHeader5:=functionHeader();

                state._fsp:=state._fsp-1;

                _stream[SIndex('functionHeader')].add(functionHeader5.getTree());
                pushFollow(FOLLOW_block_in_declaration137);
                block6:=block();

                state._fsp:=state._fsp-1;

                _stream[SIndex('block')].add(block6.getTree());


                // AST REWRITE
                // elements: functionHeader, block
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 23:30: -> ^( FUNC_DEF functionHeader block )
                begin
                    // SimpleC.g:23:33: ^( FUNC_DEF functionHeader block )
                    begin
                    root[1] := ITree(getTreeAdaptor.null());
                    root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(FUNC_DEF, 'FUNC_DEF'), root[1]));

                    //0
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('functionHeader')].nextTree());
                    //0
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('block')].nextTree());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
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
    Result:=retval//declaration_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_variable_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "variable"
// SimpleC.g:26:1: variable : dtype declarator '';'' -> ^( VAR_DEF dtype declarator ) ;
function TSimpleCParser.variable():ISimpleCParser_variable_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_variable_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal9:IToken;
  dtype7:ISimpleCParser_dtype_return{IParserRuleReturnScope}; 

  declarator8:ISimpleCParser_declarator_return{IParserRuleReturnScope}; 


  char_literal9_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('21')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 21');
  _stream[SIndex('declarator')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule declarator');
  _stream[SIndex('dtype')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule dtype');
  end;
begin
    initRule;
    retval := variable_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:27:5: ( dtype declarator '';'' -> ^( VAR_DEF dtype declarator ) )
        // SimpleC.g:27:9: dtype declarator '';''
        begin
        pushFollow(FOLLOW_dtype_in_variable166);
        dtype7:=dtype();

        state._fsp:=state._fsp-1;

        _stream[SIndex('dtype')].add(dtype7.getTree());
        pushFollow(FOLLOW_declarator_in_variable168);
        declarator8:=declarator();

        state._fsp:=state._fsp-1;

        _stream[SIndex('declarator')].add(declarator8.getTree());
        char_literal9:=match(input,21,FOLLOW_21_in_variable170) as IToken; 
         
        _stream[SIndex('21')].add(char_literal9);



        // AST REWRITE
        // elements: declarator, dtype
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 27:30: -> ^( VAR_DEF dtype declarator )
        begin
            // SimpleC.g:27:33: ^( VAR_DEF dtype declarator )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(VAR_DEF, 'VAR_DEF'), root[1]));

            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('dtype')].nextTree());
            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('declarator')].nextTree());

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
    Result:=retval//variable_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_declarator_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "declarator"
// SimpleC.g:30:1: declarator : ID ;
function TSimpleCParser.declarator():ISimpleCParser_declarator_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_declarator_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID10:IToken;

  ID10_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := declarator_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:31:5: ( ID )
        // SimpleC.g:31:9: ID
        begin
        root[0] := ITree(getTreeAdaptor.null());

        ID10:=match(input,ID,FOLLOW_ID_in_declarator199) as IToken; 

        ID10_tree := ITree(getTreeAdaptor.CreateWithToken(ID10));
        getTreeAdaptor.addChild(root[0], ID10_tree);


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
    Result:=retval//declarator_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_functionHeader_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "functionHeader"
// SimpleC.g:34:1: functionHeader : dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')'' -> ^( FUNC_HDR dtype ID ( formalParameter )* ) ;
function TSimpleCParser.functionHeader():ISimpleCParser_functionHeader_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_functionHeader_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID12:IToken;
  char_literal13:IToken;
  char_literal15:IToken;
  char_literal17:IToken;
  dtype11:ISimpleCParser_dtype_return{IParserRuleReturnScope}; 

  formalParameter14:ISimpleCParser_formalParameter_return{IParserRuleReturnScope}; 

  formalParameter16:ISimpleCParser_formalParameter_return{IParserRuleReturnScope}; 


  ID12_tree:ITree;
  char_literal13_tree:ITree;
  char_literal15_tree:ITree;
  char_literal17_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('22')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 22');
  _stream[SIndex('23')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 23');
  _stream[SIndex('24')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 24');
  _stream[SIndex('formalParameter')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule formalParameter');
  _stream[SIndex('dtype')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule dtype');
  end;
begin
    initRule;
    retval := functionHeader_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:35:5: ( dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')'' -> ^( FUNC_HDR dtype ID ( formalParameter )* ) )
        // SimpleC.g:35:9: dtype ID ''('' ( formalParameter ( '','' formalParameter )* )? '')''
        begin
        pushFollow(FOLLOW_dtype_in_functionHeader219);
        dtype11:=dtype();

        state._fsp:=state._fsp-1;

        _stream[SIndex('dtype')].add(dtype11.getTree());
        ID12:=match(input,ID,FOLLOW_ID_in_functionHeader221) as IToken; 
         
        _stream[SIndex('ID')].add(ID12);

        char_literal13:=match(input,22,FOLLOW_22_in_functionHeader223) as IToken; 
         
        _stream[SIndex('22')].add(char_literal13);

        // block:SimpleC.g:35:22: ( formalParameter ( '','' formalParameter )* )?
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( ((_LA[4,0]=ID) or ((_LA[4,0]>=INT_TYPE) and 
        ( _LA[4,0]<=VOID))) ) then 
        begin
          _alt[4]:=1;
        end
        ;
        case (_alt[4]) of
             1 :
                begin
                // SimpleC.g:35:24: formalParameter ( '','' formalParameter )*
                begin
                pushFollow(FOLLOW_formalParameter_in_functionHeader227);
                formalParameter14:=formalParameter();

                state._fsp:=state._fsp-1;

                _stream[SIndex('formalParameter')].add(formalParameter14.getTree());
                // closureBlock:SimpleC.g:35:40: ( '','' formalParameter )*
                repeat 
                    _alt[3]:=2;
                    _LA[3,0] := input.LA(1);

                    if ( ((_LA[3,0]=23)) ) then 
                    begin
                      _alt[3]:=1;
                    end

                    ;

                    case (_alt[3]) of
                	 1 :
                	    begin
                	    // SimpleC.g:35:42: '','' formalParameter
                	    begin
                	    char_literal15:=match(input,23,FOLLOW_23_in_functionHeader231) as IToken; 
                	     
                	    _stream[SIndex('23')].add(char_literal15);

                	    pushFollow(FOLLOW_formalParameter_in_functionHeader233);
                	    formalParameter16:=formalParameter();

                	    state._fsp:=state._fsp-1;

                	    _stream[SIndex('formalParameter')].add(formalParameter16.getTree());

                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);


                end;
                end;

        end;

        char_literal17:=match(input,24,FOLLOW_24_in_functionHeader241) as IToken; 
         
        _stream[SIndex('24')].add(char_literal17);



        // AST REWRITE
        // elements: dtype, formalParameter, ID
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 36:9: -> ^( FUNC_HDR dtype ID ( formalParameter )* )
        begin
            // SimpleC.g:36:12: ^( FUNC_HDR dtype ID ( formalParameter )* )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(FUNC_HDR, 'FUNC_HDR'), root[1]));

            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('dtype')].nextTree());
            //-4
            getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());
            // SimpleC.g:36:32: ( formalParameter )*
            while ( _stream[SIndex('formalParameter')].hasNext() ) do
            begin
                //0
                getTreeAdaptor.addChild(root[1], _stream[SIndex('formalParameter')].nextTree());

            end;
            _stream[SIndex('formalParameter')].reset();

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
    Result:=retval//functionHeader_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_formalParameter_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "formalParameter"
// SimpleC.g:39:1: formalParameter : dtype declarator -> ^( ARG_DEF dtype declarator ) ;
function TSimpleCParser.formalParameter():ISimpleCParser_formalParameter_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_formalParameter_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  dtype18:ISimpleCParser_dtype_return{IParserRuleReturnScope}; 

  declarator19:ISimpleCParser_declarator_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  _stream[SIndex('declarator')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule declarator');
  _stream[SIndex('dtype')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule dtype');
  end;
begin
    initRule;
    retval := formalParameter_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:40:5: ( dtype declarator -> ^( ARG_DEF dtype declarator ) )
        // SimpleC.g:40:9: dtype declarator
        begin
        pushFollow(FOLLOW_dtype_in_formalParameter281);
        dtype18:=dtype();

        state._fsp:=state._fsp-1;

        _stream[SIndex('dtype')].add(dtype18.getTree());
        pushFollow(FOLLOW_declarator_in_formalParameter283);
        declarator19:=declarator();

        state._fsp:=state._fsp-1;

        _stream[SIndex('declarator')].add(declarator19.getTree());


        // AST REWRITE
        // elements: declarator, dtype
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 40:26: -> ^( ARG_DEF dtype declarator )
        begin
            // SimpleC.g:40:29: ^( ARG_DEF dtype declarator )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(ARG_DEF, 'ARG_DEF'), root[1]));

            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('dtype')].nextTree());
            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('declarator')].nextTree());

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
    Result:=retval//formalParameter_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_dtype_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "dtype"
// SimpleC.g:43:1: dtype : ( ''int'' | ''char'' | ''void'' | ID );
function TSimpleCParser.dtype():ISimpleCParser_dtype_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_dtype_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  set20:IToken;

  set20_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := dtype_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:44:5: ( ''int'' | ''char'' | ''void'' | ID )
        // SimpleC.g:
        begin
        root[0] := ITree(getTreeAdaptor.null());

        set20:=IToken(input.LT(1));
        if ( (input.LA(1)=ID) or ((input.LA(1)>=INT_TYPE) and (input.LA(1)<=VOID)) ) then
        begin
            input.consume();
            getTreeAdaptor.addChild(root[0], ITree(getTreeAdaptor.CreateWithToken(set20)));
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


{
function TSimpleCParser.TSimpleCParser_block_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "block"
// SimpleC.g:50:1: block : lc= ''{'' ( variable )* ( stat )* ''}'' -> ^( TBLOCK[$lc,''BLOCK''] ( variable )* ( stat )* ) ;
function TSimpleCParser.block():ISimpleCParser_block_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_block_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  lc:IToken;
  char_literal23:IToken;
  variable21:ISimpleCParser_variable_return{IParserRuleReturnScope}; 

  stat22:ISimpleCParser_stat_return{IParserRuleReturnScope}; 


  lc_tree:ITree;
  char_literal23_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('25')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 25');
  _stream[SIndex('26')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 26');
  _stream[SIndex('variable')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule variable');
  _stream[SIndex('stat')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule stat');
  end;
begin
    initRule;
    retval := block_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:51:5: (lc= ''{'' ( variable )* ( stat )* ''}'' -> ^( TBLOCK[$lc,''BLOCK''] ( variable )* ( stat )* ) )
        // SimpleC.g:51:9: lc= ''{'' ( variable )* ( stat )* ''}''
        begin
        lc:=match(input,25,FOLLOW_25_in_block376) as IToken; 
         
        _stream[SIndex('25')].add(lc);

        // closureBlock:SimpleC.g:52:13: ( variable )*
        repeat 
            _alt[5]:=2;
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=ID)) ) then 
            begin
              _LA[5,2] := input.LA(2);

              if ( ((_LA[5,2]=ID)) ) then 
              begin
                _alt[5]:=1;
              end

              ;

            end
            else if ( (((_LA[5,0]>=INT_TYPE) and 
            ( _LA[5,0]<=VOID))) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            case (_alt[5]) of
        	 1 :
        	    begin
        	    // SimpleC.g:52:13: variable
        	    begin
        	    pushFollow(FOLLOW_variable_in_block390);
        	    variable21:=variable();

        	    state._fsp:=state._fsp-1;

        	    _stream[SIndex('variable')].add(variable21.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // closureBlock:SimpleC.g:53:13: ( stat )*
        repeat 
            _alt[6]:=2;
            _LA[6,0] := input.LA(1);

            if ( ((_LA[6,0]=ID) or ((_LA[6,0]>=INT) and 
            ( _LA[6,0]<=DFOR)) or ((_LA[6,0]>=21) and 
            ( _LA[6,0]<=22)) or (_LA[6,0]=25)) ) then 
            begin
              _alt[6]:=1;
            end

            ;

            case (_alt[6]) of
        	 1 :
        	    begin
        	    // SimpleC.g:53:13: stat
        	    begin
        	    pushFollow(FOLLOW_stat_in_block405);
        	    stat22:=stat();

        	    state._fsp:=state._fsp-1;

        	    _stream[SIndex('stat')].add(stat22.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        char_literal23:=match(input,26,FOLLOW_26_in_block416) as IToken; 
         
        _stream[SIndex('26')].add(char_literal23);



        // AST REWRITE
        // elements: stat, variable
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 55:9: -> ^( TBLOCK[$lc,''BLOCK''] ( variable )* ( stat )* )
        begin
            // SimpleC.g:55:12: ^( TBLOCK[$lc,''BLOCK''] ( variable )* ( stat )* )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(TBLOCK, lc, 'BLOCK'), root[1]));

            // SimpleC.g:55:34: ( variable )*
            while ( _stream[SIndex('variable')].hasNext() ) do
            begin
                //0
                getTreeAdaptor.addChild(root[1], _stream[SIndex('variable')].nextTree());

            end;
            _stream[SIndex('variable')].reset();
            // SimpleC.g:55:44: ( stat )*
            while ( _stream[SIndex('stat')].hasNext() ) do
            begin
                //0
                getTreeAdaptor.addChild(root[1], _stream[SIndex('stat')].nextTree());

            end;
            _stream[SIndex('stat')].reset();

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
    Result:=retval//block_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_stat_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "stat"
// SimpleC.g:58:1: stat : ( forStat | expr '';'' | block | assignStat '';'' | '';'' );
function TSimpleCParser.stat():ISimpleCParser_stat_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_stat_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal26:IToken;
  char_literal29:IToken;
  char_literal30:IToken;
  forStat24:ISimpleCParser_forStat_return{IParserRuleReturnScope}; 

  expr25:ISimpleCParser_expr_return{IParserRuleReturnScope}; 

  block27:ISimpleCParser_block_return{IParserRuleReturnScope}; 

  assignStat28:ISimpleCParser_assignStat_return{IParserRuleReturnScope}; 


  char_literal26_tree:ITree;
  char_literal29_tree:ITree;
  char_literal30_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := stat_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:SimpleC.g:58:5: ( forStat | expr '';'' | block | assignStat '';'' | '';'' )
        _alt[7]:=5;

        case input.LA(1) of
         DFOR: 
            begin
            _alt[7]:=1;
            end;
         ID: 
            begin
            _LA[7,2] := input.LA(2);

            if ( ((_LA[7,2]=EQ)) ) then 
            begin
              _alt[7]:=4;
            end
            else if ( (((_LA[7,2]>=EQEQ) and 
            ( _LA[7,2]<=PLUS)) or (_LA[7,2]=21)) ) then 
            begin
              _alt[7]:=2;
            end
            else begin
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 7, 2, input);    

            end;
            end;
         INT , 
         22: 
            begin
            _alt[7]:=2;
            end;
         25: 
            begin
            _alt[7]:=3;
            end;
         21: 
            begin
            _alt[7]:=5;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 7, 0, input);

        end;
        end;

        case (_alt[7]) of 
             1 :
                begin
                // SimpleC.g:58:7: forStat
                begin
                root[0] := ITree(getTreeAdaptor.null());

                pushFollow(FOLLOW_forStat_in_stat449);
                forStat24:=forStat();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], forStat24.getTree());

                end;
                end;
             2 :
                begin
                // SimpleC.g:59:7: expr '';''
                begin
                root[0] := ITree(getTreeAdaptor.null());

                pushFollow(FOLLOW_expr_in_stat457);
                expr25:=expr();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], expr25.getTree());
                char_literal26:=match(input,21,FOLLOW_21_in_stat459) as IToken; 


                end;
                end;
             3 :
                begin
                // SimpleC.g:60:7: block
                begin
                root[0] := ITree(getTreeAdaptor.null());

                pushFollow(FOLLOW_block_in_stat468);
                block27:=block();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], block27.getTree());

                end;
                end;
             4 :
                begin
                // SimpleC.g:61:7: assignStat '';''
                begin
                root[0] := ITree(getTreeAdaptor.null());

                pushFollow(FOLLOW_assignStat_in_stat476);
                assignStat28:=assignStat();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], assignStat28.getTree());
                char_literal29:=match(input,21,FOLLOW_21_in_stat478) as IToken; 


                end;
                end;
             5 :
                begin
                // SimpleC.g:62:7: '';''
                begin
                root[0] := ITree(getTreeAdaptor.null());

                char_literal30:=match(input,21,FOLLOW_21_in_stat487) as IToken; 


                end;
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
    Result:=retval//stat_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_forStat_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "forStat"
// SimpleC.g:65:1: forStat : ''for'' ''('' start= assignStat '';'' expr '';'' next= assignStat '')'' block -> ^( ''for'' $start expr $next block ) ;
function TSimpleCParser.forStat():ISimpleCParser_forStat_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_forStat_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  string_literal31:IToken;
  char_literal32:IToken;
  char_literal33:IToken;
  char_literal35:IToken;
  char_literal36:IToken;
  start:ISimpleCParser_assignStat_return{IParserRuleReturnScope}; 

  next:ISimpleCParser_assignStat_return{IParserRuleReturnScope}; 

  expr34:ISimpleCParser_expr_return{IParserRuleReturnScope}; 

  block37:ISimpleCParser_block_return{IParserRuleReturnScope}; 


  string_literal31_tree:ITree;
  char_literal32_tree:ITree;
  char_literal33_tree:ITree;
  char_literal35_tree:ITree;
  char_literal36_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('21')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 21');
  _stream[SIndex('22')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 22');
  _stream[SIndex('24')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 24');
  _stream[SIndex('DFOR')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token DFOR');
  _stream[SIndex('assignStat')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule assignStat');
  _stream[SIndex('block')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule block');
  _stream[SIndex('expr')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expr');
  end;
begin
    initRule;
    retval := forStat_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:66:5: ( ''for'' ''('' start= assignStat '';'' expr '';'' next= assignStat '')'' block -> ^( ''for'' $start expr $next block ) )
        // SimpleC.g:66:9: ''for'' ''('' start= assignStat '';'' expr '';'' next= assignStat '')'' block
        begin
        string_literal31:=match(input,DFOR,FOLLOW_DFOR_in_forStat507) as IToken; 
         
        _stream[SIndex('DFOR')].add(string_literal31);

        char_literal32:=match(input,22,FOLLOW_22_in_forStat509) as IToken; 
         
        _stream[SIndex('22')].add(char_literal32);

        pushFollow(FOLLOW_assignStat_in_forStat513);
        start:=assignStat();

        state._fsp:=state._fsp-1;

        _stream[SIndex('assignStat')].add(start.getTree());
        char_literal33:=match(input,21,FOLLOW_21_in_forStat515) as IToken; 
         
        _stream[SIndex('21')].add(char_literal33);

        pushFollow(FOLLOW_expr_in_forStat517);
        expr34:=expr();

        state._fsp:=state._fsp-1;

        _stream[SIndex('expr')].add(expr34.getTree());
        char_literal35:=match(input,21,FOLLOW_21_in_forStat519) as IToken; 
         
        _stream[SIndex('21')].add(char_literal35);

        pushFollow(FOLLOW_assignStat_in_forStat523);
        next:=assignStat();

        state._fsp:=state._fsp-1;

        _stream[SIndex('assignStat')].add(next.getTree());
        char_literal36:=match(input,24,FOLLOW_24_in_forStat525) as IToken; 
         
        _stream[SIndex('24')].add(char_literal36);

        pushFollow(FOLLOW_block_in_forStat527);
        block37:=block();

        state._fsp:=state._fsp-1;

        _stream[SIndex('block')].add(block37.getTree());


        // AST REWRITE
        // elements: DFOR, next, start, block, expr
        // token labels: 
        // rule labels: retval, start, next
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));
        _stream[SIndex('start')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule start',IIF(Assigned(start), start.gettree,nil));
        _stream[SIndex('next')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule next',IIF(Assigned(next), next.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 67:9: -> ^( ''for'' $start expr $next block )
        begin
            // SimpleC.g:67:12: ^( ''for'' $start expr $next block )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(_stream[SIndex('DFOR')].nextNode(), root[1]));

            getTreeAdaptor.addChild(root[1], _stream[SIndex('start')].nextTree());
            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('expr')].nextTree());
            getTreeAdaptor.addChild(root[1], _stream[SIndex('next')].nextTree());
            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('block')].nextTree());

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
    Result:=retval//forStat_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_assignStat_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "assignStat"
// SimpleC.g:70:1: assignStat : ID EQ expr -> ^( EQ ID expr ) ;
function TSimpleCParser.assignStat():ISimpleCParser_assignStat_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_assignStat_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID38:IToken;
  EQ39:IToken;
  expr40:ISimpleCParser_expr_return{IParserRuleReturnScope}; 


  ID38_tree:ITree;
  EQ39_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('EQ')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token EQ');
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('expr')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expr');
  end;
begin
    initRule;
    retval := assignStat_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:71:5: ( ID EQ expr -> ^( EQ ID expr ) )
        // SimpleC.g:71:9: ID EQ expr
        begin
        ID38:=match(input,ID,FOLLOW_ID_in_assignStat570) as IToken; 
         
        _stream[SIndex('ID')].add(ID38);

        EQ39:=match(input,EQ,FOLLOW_EQ_in_assignStat572) as IToken; 
         
        _stream[SIndex('EQ')].add(EQ39);

        pushFollow(FOLLOW_expr_in_assignStat574);
        expr40:=expr();

        state._fsp:=state._fsp-1;

        _stream[SIndex('expr')].add(expr40.getTree());


        // AST REWRITE
        // elements: ID, expr, EQ
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ITree(getTreeAdaptor.null());
        // 71:20: -> ^( EQ ID expr )
        begin
            // SimpleC.g:71:23: ^( EQ ID expr )
            begin
            root[1] := ITree(getTreeAdaptor.null());
            root[1] := ITree(getTreeAdaptor.becomeRoot(_stream[SIndex('EQ')].nextNode(), root[1]));

            //-4
            getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());
            //0
            getTreeAdaptor.addChild(root[1], _stream[SIndex('expr')].nextTree());

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
    Result:=retval//assignStat_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_expr_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "expr"
// SimpleC.g:74:1: expr : condExpr ;
function TSimpleCParser.expr():ISimpleCParser_expr_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_expr_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  condExpr41:ISimpleCParser_condExpr_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := expr_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:74:5: ( condExpr )
        // SimpleC.g:74:9: condExpr
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_condExpr_in_expr598);
        condExpr41:=condExpr();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], condExpr41.getTree());

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
    Result:=retval//expr_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_condExpr_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "condExpr"
// SimpleC.g:77:1: condExpr : aexpr ( ( ''=='' | ''<'' ) aexpr )? ;
function TSimpleCParser.condExpr():ISimpleCParser_condExpr_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_condExpr_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  string_literal43:IToken;
  char_literal44:IToken;
  aexpr42:ISimpleCParser_aexpr_return{IParserRuleReturnScope}; 

  aexpr45:ISimpleCParser_aexpr_return{IParserRuleReturnScope}; 


  string_literal43_tree:ITree;
  char_literal44_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := condExpr_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:78:5: ( aexpr ( ( ''=='' | ''<'' ) aexpr )? )
        // SimpleC.g:78:9: aexpr ( ( ''=='' | ''<'' ) aexpr )?
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_aexpr_in_condExpr617);
        aexpr42:=aexpr();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], aexpr42.getTree());
        // block:SimpleC.g:78:15: ( ( ''=='' | ''<'' ) aexpr )?
        _alt[9]:=2;
        _LA[9,0] := input.LA(1);

        if ( (((_LA[9,0]>=EQEQ) and 
        ( _LA[9,0]<=LT))) ) then 
        begin
          _alt[9]:=1;
        end
        ;
        case (_alt[9]) of
             1 :
                begin
                // SimpleC.g:78:17: ( ''=='' | ''<'' ) aexpr
                begin
                // block:SimpleC.g:78:17: ( ''=='' | ''<'' )
                _alt[8]:=2;
                _LA[8,0] := input.LA(1);

                if ( ((_LA[8,0]=EQEQ)) ) then 
                begin
                  _alt[8]:=1;
                end
                else if ( ((_LA[8,0]=LT)) ) then 
                begin
                  _alt[8]:=2;
                end
                else begin
                    //Todo:raise ENoViableAltException.CreateNoViable(''
                    raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                    , 8, 0, input);    

                end;
                case (_alt[8]) of
                     1 :
                        begin
                        // SimpleC.g:78:18: ''==''
                        begin
                        string_literal43:=match(input,EQEQ,FOLLOW_EQEQ_in_condExpr622) as IToken; 

                        string_literal43_tree := ITree(getTreeAdaptor.CreateWithToken(string_literal43));
                        root[0] := ITree(getTreeAdaptor.becomeRoot(string_literal43_tree, root[0]));


                        end;
                        end;
                     2 :
                        begin
                        // SimpleC.g:78:26: ''<''
                        begin
                        char_literal44:=match(input,LT,FOLLOW_LT_in_condExpr627) as IToken; 

                        char_literal44_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal44));
                        root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal44_tree, root[0]));


                        end;
                        end;

                end;

                pushFollow(FOLLOW_aexpr_in_condExpr631);
                aexpr45:=aexpr();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], aexpr45.getTree());

                end;
                end;

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
    Result:=retval//condExpr_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_aexpr_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "aexpr"
// SimpleC.g:81:1: aexpr : atom ( ''+'' atom )* ;
function TSimpleCParser.aexpr():ISimpleCParser_aexpr_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_aexpr_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal47:IToken;
  atom46:ISimpleCParser_atom_return{IParserRuleReturnScope}; 

  atom48:ISimpleCParser_atom_return{IParserRuleReturnScope}; 


  char_literal47_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := aexpr_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:SimpleC.g:82:5: ( atom ( ''+'' atom )* )
        // SimpleC.g:82:9: atom ( ''+'' atom )*
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_atom_in_aexpr653);
        atom46:=atom();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], atom46.getTree());
        // closureBlock:SimpleC.g:82:14: ( ''+'' atom )*
        repeat 
            _alt[10]:=2;
            _LA[10,0] := input.LA(1);

            if ( ((_LA[10,0]=PLUS)) ) then 
            begin
              _alt[10]:=1;
            end

            ;

            case (_alt[10]) of
        	 1 :
        	    begin
        	    // SimpleC.g:82:16: ''+'' atom
        	    begin
        	    char_literal47:=match(input,PLUS,FOLLOW_PLUS_in_aexpr657) as IToken; 

        	    char_literal47_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal47));
        	    root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal47_tree, root[0]));

        	    pushFollow(FOLLOW_atom_in_aexpr660);
        	    atom48:=atom();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], atom48.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


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
    Result:=retval//aexpr_return(retval.getobject);;
end;


{
function TSimpleCParser.TSimpleCParser_atom_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "atom"
// SimpleC.g:85:1: atom : ( ID | INT | ''('' expr '')'' -> expr );
function TSimpleCParser.atom():ISimpleCParser_atom_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimpleCParser_atom_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID49:IToken;
  INT50:IToken;
  char_literal51:IToken;
  char_literal53:IToken;
  expr52:ISimpleCParser_expr_return{IParserRuleReturnScope}; 


  ID49_tree:ITree;
  INT50_tree:ITree;
  char_literal51_tree:ITree;
  char_literal53_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('22')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 22');
  _stream[SIndex('24')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 24');
  _stream[SIndex('expr')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expr');
  end;
begin
    initRule;
    retval := atom_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:SimpleC.g:86:5: ( ID | INT | ''('' expr '')'' -> expr )
        _alt[11]:=3;

        case input.LA(1) of
         ID: 
            begin
            _alt[11]:=1;
            end;
         INT: 
            begin
            _alt[11]:=2;
            end;
         22: 
            begin
            _alt[11]:=3;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 11, 0, input);

        end;
        end;

        case (_alt[11]) of 
             1 :
                begin
                // SimpleC.g:86:7: ID
                begin
                root[0] := ITree(getTreeAdaptor.null());

                ID49:=match(input,ID,FOLLOW_ID_in_atom680) as IToken; 

                ID49_tree := ITree(getTreeAdaptor.CreateWithToken(ID49));
                getTreeAdaptor.addChild(root[0], ID49_tree);


                end;
                end;
             2 :
                begin
                // SimpleC.g:87:7: INT
                begin
                root[0] := ITree(getTreeAdaptor.null());

                INT50:=match(input,INT,FOLLOW_INT_in_atom694) as IToken; 

                INT50_tree := ITree(getTreeAdaptor.CreateWithToken(INT50));
                getTreeAdaptor.addChild(root[0], INT50_tree);


                end;
                end;
             3 :
                begin
                // SimpleC.g:88:7: ''('' expr '')''
                begin
                char_literal51:=match(input,22,FOLLOW_22_in_atom708) as IToken; 
                 
                _stream[SIndex('22')].add(char_literal51);

                pushFollow(FOLLOW_expr_in_atom710);
                expr52:=expr();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expr')].add(expr52.getTree());
                char_literal53:=match(input,24,FOLLOW_24_in_atom712) as IToken; 
                 
                _stream[SIndex('24')].add(char_literal53);



                // AST REWRITE
                // elements: expr
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 88:20: -> expr
                begin
                    //0
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('expr')].nextTree());

                end;

                retval.tree := root[0];
                end;
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
    Result:=retval//atom_return(retval.getobject);;
end;



function TSimpleCParser.getDfa2:IDFA;
begin
  if not Assigned(dfa2) then
    dfa2:=TAntlrDFA2.Create(self);
  Result:=dfa2;  
end;

constructor TSimpleCParser.TAntlrDFA2.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=2;
  feot:=unpackEncodedString('\15\uffff');
  feof:=unpackEncodedString('\15\uffff');

  FMinc:=unpackEncodedString('\2\12\1\25\1\12\1\uffff\1\12\1\25\1\27\2\uffff'+
    '\2\12\1\27');

  FMaxc:=unpackEncodedString('\1\20\1\12\1\26\1\30\1\uffff\1\12\1\31\1\30'+
    '\2\uffff\1\20\1\12\1\30');
  faccept:=unpackEncodedString('\4\uffff\1\1\3\uffff\1\3\1\2\3\uffff');
  fspecial:=unpackEncodedString('\15\uffff');
  AddTransition(unpackEncodedString('\1\1\3\uffff\3\1'));
  AddTransition(unpackEncodedString('\1\2'));
  AddTransition(unpackEncodedString('\1\4\1\3'));
  AddTransition(unpackEncodedString('\1\5\3\uffff\3\5\7\uffff\1\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\7'));
  AddTransition(unpackEncodedString('\1\11\3\uffff\1\10'));
  AddTransition(unpackEncodedString('\1\12\1\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\13\3\uffff\3\13'));
  AddTransition(unpackEncodedString('\1\14'));
  AddTransition(unpackEncodedString('\1\12\1\6'));
end;

function TSimpleCParser.TAntlrDFA2.getDescription():string;
begin
  Result:='20:1: declaration : ( variable | functionHeader '';'' -> ^( FUNC_DECL functionHead'+
  'er ) | functionHeader block -> ^( FUNC_DEF functionHeader block ) );';
end;



 

procedure TSimpleCParser.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TSimpleCParser.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.