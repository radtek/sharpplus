// $ANTLR 3.2 10 04, 2009 24:10:08 VecMath.g 2009-10-04 00:27:54
unit VecMathParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const VEC=6;
    const WS=9;
    const T__16=16;
    const T__15=15;
    const T__18=18;
    const T__17=17;
    const T__12=12;
    const T__11=11;
    const T__14=14;
    const T__13=13;
    const T__10=10;
    const SHIFT=5;
    const INT=8;
    const MULT=4;
    const ID=7;
    const EOF=-1;              
type
  TVecMathParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_stat_in_prog64:IBitSet;
    FOLLOW_ID_in_stat97:IBitSet;
    FOLLOW_10_in_stat99:IBitSet;
    FOLLOW_expr_in_stat101:IBitSet;
    FOLLOW_11_in_stat122:IBitSet;
    FOLLOW_expr_in_stat124:IBitSet;
    FOLLOW_multExpr_in_expr147:IBitSet;
    FOLLOW_12_in_expr150:IBitSet;
    FOLLOW_multExpr_in_expr153:IBitSet;
    FOLLOW_primary_in_multExpr175:IBitSet;
    FOLLOW_MULT_in_multExpr179:IBitSet;
    FOLLOW_13_in_multExpr182:IBitSet;
    FOLLOW_primary_in_multExpr186:IBitSet;
    FOLLOW_INT_in_primary213:IBitSet;
    FOLLOW_ID_in_primary223:IBitSet;
    FOLLOW_14_in_primary233:IBitSet;
    FOLLOW_expr_in_primary235:IBitSet;
    FOLLOW_15_in_primary238:IBitSet;
    FOLLOW_expr_in_primary240:IBitSet;
    FOLLOW_16_in_primary244:IBitSet;
    FOLLOW_17_in_primary261:IBitSet;
    FOLLOW_expr_in_primary263:IBitSet;
    FOLLOW_18_in_primary265:IBitSet;
    

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
        type IVecMathParser_prog_return=interface(IParserRuleReturnScope)
        ['{26A5E234-CD38-4D74-B187-6D73DB92493E}']
        end;   
        type prog_return =class( TParserRuleReturnScope , IVecMathParser_prog_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "prog"
    // VecMath.g:15:1: prog : ( stat )+ ;
    function prog():IVecMathParser_prog_return{IParserRuleReturnScope};
    // $ANTLR end prog

    public
        type IVecMathParser_stat_return=interface(IParserRuleReturnScope)
        ['{BCA5B008-C3BB-4AD4-9312-A8A53C59CF80}']
        end;   
        type stat_return =class( TParserRuleReturnScope , IVecMathParser_stat_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "stat"
    // VecMath.g:16:1: stat : ( ID ''='' expr -> ^( ''='' ID expr ) | ''print'' expr -> ^( ''print'' expr ) );
    function stat():IVecMathParser_stat_return{IParserRuleReturnScope};
    // $ANTLR end stat

    public
        type IVecMathParser_expr_return=interface(IParserRuleReturnScope)
        ['{4C97CFF0-0AEF-4030-B42E-271F0D7E1F18}']
        end;   
        type expr_return =class( TParserRuleReturnScope , IVecMathParser_expr_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "expr"
    // VecMath.g:22:1: expr : multExpr ( ''+'' multExpr )* ;
    function expr():IVecMathParser_expr_return{IParserRuleReturnScope};
    // $ANTLR end expr

    public
        type IVecMathParser_multExpr_return=interface(IParserRuleReturnScope)
        ['{BA2B7DC0-DF9E-48E5-9C58-30138BCA64B8}']
        end;   
        type multExpr_return =class( TParserRuleReturnScope , IVecMathParser_multExpr_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "multExpr"
    // VecMath.g:24:1: multExpr : primary ( ( ''*'' | ''.'' ) primary )* ;
    function multExpr():IVecMathParser_multExpr_return{IParserRuleReturnScope};
    // $ANTLR end multExpr

    public
        type IVecMathParser_primary_return=interface(IParserRuleReturnScope)
        ['{BFB00564-A7A1-4659-A1E2-7E8E30A9F37B}']
        end;   
        type primary_return =class( TParserRuleReturnScope , IVecMathParser_primary_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "primary"
    // VecMath.g:28:1: primary : ( INT | ID | ''['' expr ( '','' expr )* '']'' -> ^( VEC ( expr )+ ) | ''('' expr '')'' -> expr );
    function primary():IVecMathParser_primary_return{IParserRuleReturnScope};
    // $ANTLR end primary

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,JclArrayLists,
    // delegates
    // delegators
 
    JclHashSets;

function TVecMathParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TVecMathParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"MULT"');
  tokenNames.Add('"SHIFT"');
  tokenNames.Add('"VEC"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"''print''"');
  tokenNames.Add('"''+''"');
  tokenNames.Add('"''.''"');
  tokenNames.Add('"''[''"');
  tokenNames.Add('"'',''"');
  tokenNames.Add('"'']''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'')''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TVecMathParser.InitBitsets;
begin
  FOLLOW_stat_in_prog64 := TAntlrBitSet.CreateWithBits([$0000000000000882]);
  FOLLOW_ID_in_stat97 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_10_in_stat99 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_expr_in_stat101 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_11_in_stat122 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_expr_in_stat124 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_multExpr_in_expr147 := TAntlrBitSet.CreateWithBits([$0000000000001002]);
  FOLLOW_12_in_expr150 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_multExpr_in_expr153 := TAntlrBitSet.CreateWithBits([$0000000000001002]);
  FOLLOW_primary_in_multExpr175 := TAntlrBitSet.CreateWithBits([$0000000000002012]);
  FOLLOW_MULT_in_multExpr179 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_13_in_multExpr182 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_primary_in_multExpr186 := TAntlrBitSet.CreateWithBits([$0000000000002012]);
  FOLLOW_INT_in_primary213 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_primary223 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_14_in_primary233 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_expr_in_primary235 := TAntlrBitSet.CreateWithBits([$0000000000018000]);
  FOLLOW_15_in_primary238 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_expr_in_primary240 := TAntlrBitSet.CreateWithBits([$0000000000018000]);
  FOLLOW_16_in_primary244 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_17_in_primary261 := TAntlrBitSet.CreateWithBits([$0000000000024180]);
  FOLLOW_expr_in_primary263 := TAntlrBitSet.CreateWithBits([$0000000000040000]);
  FOLLOW_18_in_primary265 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TVecMathParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TVecMathParser.GetGrammarFileName():String;
begin
  Result:='VecMath.g'; 
end;




{
function TVecMathParser.TVecMathParser_prog_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "prog"
// VecMath.g:15:1: prog : ( stat )+ ;
function TVecMathParser.prog():IVecMathParser_prog_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IVecMathParser_prog_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  stat1:IVecMathParser_stat_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := prog_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:VecMath.g:15:5: ( ( stat )+ )
        // VecMath.g:15:7: ( stat )+
        begin
        root[0] := ITree(getTreeAdaptor.null());

        // positiveClosureBlock:VecMath.g:15:7: ( stat )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=ID) or (_LA[1,0]=11)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // VecMath.g:15:7: stat
        	    begin
        	    pushFollow(FOLLOW_stat_in_prog64);
        	    stat1:=stat();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], stat1.getTree());

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

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ITree;
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
function TVecMathParser.TVecMathParser_stat_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "stat"
// VecMath.g:16:1: stat : ( ID ''='' expr -> ^( ''='' ID expr ) | ''print'' expr -> ^( ''print'' expr ) );
function TVecMathParser.stat():IVecMathParser_stat_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IVecMathParser_stat_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID2:IToken;
  char_literal3:IToken;
  string_literal5:IToken;
  expr4:IVecMathParser_expr_return{IParserRuleReturnScope}; 

  expr6:IVecMathParser_expr_return{IParserRuleReturnScope}; 


  ID2_tree:ITree;
  char_literal3_tree:ITree;
  string_literal5_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('10')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 10');
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('11')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 11');
  _stream[SIndex('expr')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expr');
  end;
begin
    initRule;
    retval := stat_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:VecMath.g:16:5: ( ID ''='' expr -> ^( ''='' ID expr ) | ''print'' expr -> ^( ''print'' expr ) )
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=ID)) ) then 
        begin
          _alt[2]:=1;
        end
        else if ( ((_LA[2,0]=11)) ) then 
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
                // VecMath.g:16:7: ID ''='' expr
                begin
                ID2:=match(input,ID,FOLLOW_ID_in_stat97) as IToken; 
                 
                _stream[SIndex('ID')].add(ID2);

                char_literal3:=match(input,10,FOLLOW_10_in_stat99) as IToken; 
                 
                _stream[SIndex('10')].add(char_literal3);

                pushFollow(FOLLOW_expr_in_stat101);
                expr4:=expr();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expr')].add(expr4.getTree());


                // AST REWRITE
                // elements: expr, ID, 10
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 16:20: -> ^( ''='' ID expr )
                begin
                    // VecMath.g:16:23: ^( ''='' ID expr )
                    begin
                      root[1] := ITree(getTreeAdaptor.null());
                      root[1] := ITree(getTreeAdaptor.becomeRoot(_stream[SIndex('10')].nextNode(), root[1]));

                      getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());
                      getTreeAdaptor.addChild(root[1], _stream[SIndex('expr')].nextTree());

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             2 :
                begin
                // VecMath.g:17:7: ''print'' expr
                begin
                string_literal5:=match(input,11,FOLLOW_11_in_stat122) as IToken; 
                 
                _stream[SIndex('11')].add(string_literal5);

                pushFollow(FOLLOW_expr_in_stat124);
                expr6:=expr();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expr')].add(expr6.getTree());


                // AST REWRITE
                // elements: 11, expr
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 17:20: -> ^( ''print'' expr )
                begin
                    // VecMath.g:17:23: ^( ''print'' expr )
                    begin
                      root[1] := ITree(getTreeAdaptor.null());
                      root[1] := ITree(getTreeAdaptor.becomeRoot(_stream[SIndex('11')].nextNode(), root[1]));

                      getTreeAdaptor.addChild(root[1], _stream[SIndex('expr')].nextTree());

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;

        end;
        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ITree;
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
function TVecMathParser.TVecMathParser_expr_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "expr"
// VecMath.g:22:1: expr : multExpr ( ''+'' multExpr )* ;
function TVecMathParser.expr():IVecMathParser_expr_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IVecMathParser_expr_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal8:IToken;
  multExpr7:IVecMathParser_multExpr_return{IParserRuleReturnScope}; 

  multExpr9:IVecMathParser_multExpr_return{IParserRuleReturnScope}; 


  char_literal8_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := expr_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:VecMath.g:22:5: ( multExpr ( ''+'' multExpr )* )
        // VecMath.g:22:7: multExpr ( ''+'' multExpr )*
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_multExpr_in_expr147);
        multExpr7:=multExpr();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], multExpr7.getTree());
        // closureBlock:VecMath.g:22:16: ( ''+'' multExpr )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=12)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // VecMath.g:22:17: ''+'' multExpr
        	    begin
        	    char_literal8:=match(input,12,FOLLOW_12_in_expr150) as IToken; 

        	    char_literal8_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal8));
        	    root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal8_tree, root[0]));

        	    pushFollow(FOLLOW_multExpr_in_expr153);
        	    multExpr9:=multExpr();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], multExpr9.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ITree;
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
function TVecMathParser.TVecMathParser_multExpr_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "multExpr"
// VecMath.g:24:1: multExpr : primary ( ( ''*'' | ''.'' ) primary )* ;
function TVecMathParser.multExpr():IVecMathParser_multExpr_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IVecMathParser_multExpr_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal11:IToken;
  char_literal12:IToken;
  primary10:IVecMathParser_primary_return{IParserRuleReturnScope}; 

  primary13:IVecMathParser_primary_return{IParserRuleReturnScope}; 


  char_literal11_tree:ITree;
  char_literal12_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := multExpr_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:VecMath.g:25:5: ( primary ( ( ''*'' | ''.'' ) primary )* )
        // VecMath.g:25:9: primary ( ( ''*'' | ''.'' ) primary )*
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_primary_in_multExpr175);
        primary10:=primary();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], primary10.getTree());
        // closureBlock:VecMath.g:25:17: ( ( ''*'' | ''.'' ) primary )*
        repeat 
            _alt[5]:=2;
            _LA[5,0] := input.LA(1);

            if ( ((_LA[5,0]=MULT) or (_LA[5,0]=13)) ) then 
            begin
              _alt[5]:=1;
            end

            ;

            case (_alt[5]) of
        	 1 :
        	    begin
        	    // VecMath.g:25:18: ( ''*'' | ''.'' ) primary
        	    begin
        	    // block:VecMath.g:25:18: ( ''*'' | ''.'' )
        	    _alt[4]:=2;
        	    _LA[4,0] := input.LA(1);

        	    if ( ((_LA[4,0]=MULT)) ) then 
        	    begin
        	      _alt[4]:=1;
        	    end
        	    else if ( ((_LA[4,0]=13)) ) then 
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
        	            // VecMath.g:25:19: ''*''
        	            begin
        	            char_literal11:=match(input,MULT,FOLLOW_MULT_in_multExpr179) as IToken; 

        	            char_literal11_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal11));
        	            root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal11_tree, root[0]));


        	            end;
        	            end;
        	         2 :
        	            begin
        	            // VecMath.g:25:24: ''.''
        	            begin
        	            char_literal12:=match(input,13,FOLLOW_13_in_multExpr182) as IToken; 

        	            char_literal12_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal12));
        	            root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal12_tree, root[0]));


        	            end;
        	            end;

        	    end;

        	    pushFollow(FOLLOW_primary_in_multExpr186);
        	    primary13:=primary();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], primary13.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ITree;
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
    Result:=retval//multExpr_return(retval.getobject);;
end;


{
function TVecMathParser.TVecMathParser_primary_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "primary"
// VecMath.g:28:1: primary : ( INT | ID | ''['' expr ( '','' expr )* '']'' -> ^( VEC ( expr )+ ) | ''('' expr '')'' -> expr );
function TVecMathParser.primary():IVecMathParser_primary_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IVecMathParser_primary_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  INT14:IToken;
  ID15:IToken;
  char_literal16:IToken;
  char_literal18:IToken;
  char_literal20:IToken;
  char_literal21:IToken;
  char_literal23:IToken;
  expr17:IVecMathParser_expr_return{IParserRuleReturnScope}; 

  expr19:IVecMathParser_expr_return{IParserRuleReturnScope}; 

  expr22:IVecMathParser_expr_return{IParserRuleReturnScope}; 


  INT14_tree:ITree;
  ID15_tree:ITree;
  char_literal16_tree:ITree;
  char_literal18_tree:ITree;
  char_literal20_tree:ITree;
  char_literal21_tree:ITree;
  char_literal23_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('17')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 17');
  _stream[SIndex('18')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 18');
  _stream[SIndex('15')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 15');
  _stream[SIndex('16')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 16');
  _stream[SIndex('14')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 14');
  _stream[SIndex('expr')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expr');
  end;
begin
    initRule;
    retval := primary_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:VecMath.g:29:5: ( INT | ID | ''['' expr ( '','' expr )* '']'' -> ^( VEC ( expr )+ ) | ''('' expr '')'' -> expr )
        _alt[7]:=4;

        case input.LA(1) of
         INT: 
            begin
            _alt[7]:=1;
            end;
         ID: 
            begin
            _alt[7]:=2;
            end;
         14: 
            begin
            _alt[7]:=3;
            end;
         17: 
            begin
            _alt[7]:=4;
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
                // VecMath.g:29:9: INT
                begin
                root[0] := ITree(getTreeAdaptor.null());

                INT14:=match(input,INT,FOLLOW_INT_in_primary213) as IToken; 

                INT14_tree := ITree(getTreeAdaptor.CreateWithToken(INT14));
                getTreeAdaptor.addChild(root[0], INT14_tree);


                end;
                end;
             2 :
                begin
                // VecMath.g:30:9: ID
                begin
                root[0] := ITree(getTreeAdaptor.null());

                ID15:=match(input,ID,FOLLOW_ID_in_primary223) as IToken; 

                ID15_tree := ITree(getTreeAdaptor.CreateWithToken(ID15));
                getTreeAdaptor.addChild(root[0], ID15_tree);


                end;
                end;
             3 :
                begin
                // VecMath.g:31:9: ''['' expr ( '','' expr )* '']''
                begin
                char_literal16:=match(input,14,FOLLOW_14_in_primary233) as IToken; 
                 
                _stream[SIndex('14')].add(char_literal16);

                pushFollow(FOLLOW_expr_in_primary235);
                expr17:=expr();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expr')].add(expr17.getTree());
                // closureBlock:VecMath.g:31:18: ( '','' expr )*
                repeat 
                    _alt[6]:=2;
                    _LA[6,0] := input.LA(1);

                    if ( ((_LA[6,0]=15)) ) then 
                    begin
                      _alt[6]:=1;
                    end

                    ;

                    case (_alt[6]) of
                	 1 :
                	    begin
                	    // VecMath.g:31:19: '','' expr
                	    begin
                	    char_literal18:=match(input,15,FOLLOW_15_in_primary238) as IToken; 
                	     
                	    _stream[SIndex('15')].add(char_literal18);

                	    pushFollow(FOLLOW_expr_in_primary240);
                	    expr19:=expr();

                	    state._fsp:=state._fsp-1;

                	    _stream[SIndex('expr')].add(expr19.getTree());

                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);

                char_literal20:=match(input,16,FOLLOW_16_in_primary244) as IToken; 
                 
                _stream[SIndex('16')].add(char_literal20);



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
                // 31:34: -> ^( VEC ( expr )+ )
                begin
                    // VecMath.g:31:37: ^( VEC ( expr )+ )
                    begin
                      root[1] := ITree(getTreeAdaptor.null());
                      root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(VEC, 'VEC'), root[1]));

                      if ( not(_stream[SIndex('expr')].hasNext()) ) then begin
                          raise ERewriteEarlyExitException.Create('');
                      end;
                      while ( _stream[SIndex('expr')].hasNext() ) do
                      begin
                          getTreeAdaptor.addChild(root[1], _stream[SIndex('expr')].nextTree());

                      end;
                      _stream[SIndex('expr')].reset();

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             4 :
                begin
                // VecMath.g:32:7: ''('' expr '')''
                begin
                char_literal21:=match(input,17,FOLLOW_17_in_primary261) as IToken; 
                 
                _stream[SIndex('17')].add(char_literal21);

                pushFollow(FOLLOW_expr_in_primary263);
                expr22:=expr();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expr')].add(expr22.getTree());
                char_literal23:=match(input,18,FOLLOW_18_in_primary265) as IToken; 
                 
                _stream[SIndex('18')].add(char_literal23);



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
                // 32:32: -> expr
                begin
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('expr')].nextTree());

                end;

                retval.tree := root[0];
                end;
                end;

        end;
        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ITree;
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
    Result:=retval//primary_return(retval.getobject);;
end;


 

procedure TVecMathParser.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TVecMathParser.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.