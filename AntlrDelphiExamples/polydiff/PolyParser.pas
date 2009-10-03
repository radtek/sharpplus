// $ANTLR 3.1.2 Poly.g 2009-07-23 21:44:29
unit PolyParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

    const WS=7;
    const INT=5;
    const MULT=4;
    const ID=6;
    const EOF=-1;
    const T__9=9;
    const T__8=8;              
type
  TPolyParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_term_in_poly30:IBitSet;
    FOLLOW_8_in_poly33:IBitSet;
    FOLLOW_term_in_poly36:IBitSet;
    FOLLOW_INT_in_term50:IBitSet;
    FOLLOW_ID_in_term52:IBitSet;
    FOLLOW_INT_in_term72:IBitSet;
    FOLLOW_exp_in_term74:IBitSet;
    FOLLOW_exp_in_term93:IBitSet;
    FOLLOW_INT_in_term101:IBitSet;
    FOLLOW_ID_in_term106:IBitSet;
    FOLLOW_ID_in_exp119:IBitSet;
    FOLLOW_9_in_exp121:IBitSet;
    FOLLOW_INT_in_exp124:IBitSet;
    

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
        type IPolyParser_poly_return=interface(IParserRuleReturnScope)
        ['{09F4E9D3-B793-4821-A8A8-841D43A8DF47}']
        end;   
        type poly_return =class( TParserRuleReturnScope , IPolyParser_poly_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "poly"
    // Poly.g:7:1: poly : term ( ''+'' term )* ;
    function poly():IPolyParser_poly_return{IParserRuleReturnScope};
    // $ANTLR end poly

    public
        type IPolyParser_term_return=interface(IParserRuleReturnScope)
        ['{121D0BB1-8B98-47B4-904C-4A6BA3456848}']
        end;   
        type term_return =class( TParserRuleReturnScope , IPolyParser_term_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "term"
    // Poly.g:10:1: term : ( INT ID -> ^( MULT[''*''] INT ID ) | INT exp -> ^( MULT[''*''] INT exp ) | exp | INT | ID );
    function term():IPolyParser_term_return{IParserRuleReturnScope};
    // $ANTLR end term

    public
        type IPolyParser_exp_return=interface(IParserRuleReturnScope)
        ['{BADBB7E8-893F-41FE-9DF8-DC08547361E1}']
        end;   
        type exp_return =class( TParserRuleReturnScope , IPolyParser_exp_return)
        private
        public

        //tree:ITree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "exp"
    // Poly.g:17:1: exp : ID ''^'' INT ;
    function exp():IPolyParser_exp_return{IParserRuleReturnScope};
    // $ANTLR end exp

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TPolyParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TPolyParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"MULT"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"''+''"');
  tokenNames.Add('"''^''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TPolyParser.InitBitsets;
begin
  FOLLOW_term_in_poly30 := TAntlrBitSet.CreateWithBits([$0000000000000102]);
  FOLLOW_8_in_poly33 := TAntlrBitSet.CreateWithBits([$0000000000000060]);
  FOLLOW_term_in_poly36 := TAntlrBitSet.CreateWithBits([$0000000000000102]);
  FOLLOW_INT_in_term50 := TAntlrBitSet.CreateWithBits([$0000000000000040]);
  FOLLOW_ID_in_term52 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_INT_in_term72 := TAntlrBitSet.CreateWithBits([$0000000000000040]);
  FOLLOW_exp_in_term74 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_exp_in_term93 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_INT_in_term101 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_term106 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_exp119 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_9_in_exp121 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_exp124 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TPolyParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TPolyParser.GetGrammarFileName():String;
begin
  Result:='Poly.g'; 
end;




{
function TPolyParser.TPolyParser_poly_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "poly"
// Poly.g:7:1: poly : term ( ''+'' term )* ;
function TPolyParser.poly():IPolyParser_poly_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IPolyParser_poly_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  char_literal2:IToken;
  term1:IPolyParser_term_return{IParserRuleReturnScope}; 

  term3:IPolyParser_term_return{IParserRuleReturnScope}; 


  char_literal2_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := poly_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Poly.g:7:5: ( term ( ''+'' term )* )
        // Poly.g:7:7: term ( ''+'' term )*
        begin
        root[0] := ITree(getTreeAdaptor.null());

        pushFollow(FOLLOW_term_in_poly30);
        term1:=term();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], term1.getTree());
        // closureBlock:Poly.g:7:12: ( ''+'' term )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=8)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // Poly.g:7:13: ''+'' term
        	    begin
        	    char_literal2:=match(input,8,FOLLOW_8_in_poly33) as IToken; 

        	    char_literal2_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal2));
        	    root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal2_tree, root[0]));

        	    pushFollow(FOLLOW_term_in_poly36);
        	    term3:=term();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], term3.getTree());

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
    Result:=retval//poly_return(retval.getobject);;
end;


{
function TPolyParser.TPolyParser_term_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "term"
// Poly.g:10:1: term : ( INT ID -> ^( MULT[''*''] INT ID ) | INT exp -> ^( MULT[''*''] INT exp ) | exp | INT | ID );
function TPolyParser.term():IPolyParser_term_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IPolyParser_term_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  INT4:IToken;
  ID5:IToken;
  INT6:IToken;
  INT9:IToken;
  ID10:IToken;
  exp7:IPolyParser_exp_return{IParserRuleReturnScope}; 

  exp8:IPolyParser_exp_return{IParserRuleReturnScope}; 


  INT4_tree:ITree;
  ID5_tree:ITree;
  INT6_tree:ITree;
  INT9_tree:ITree;
  ID10_tree:ITree;
  procedure InitRule;
  begin
  _stream[SIndex('INT')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('exp')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule exp');
  end;
begin
    initRule;
    retval := term_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:Poly.g:10:5: ( INT ID -> ^( MULT[''*''] INT ID ) | INT exp -> ^( MULT[''*''] INT exp ) | exp | INT | ID )
        _alt[2]:=5;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=INT)) ) then 
        begin
          _LA[2,1] := input.LA(2);

          if ( ((_LA[2,1]=ID)) ) then 
          begin
            _LA[2,3] := input.LA(3);

            if ( ((_LA[2,3]=9)) ) then 
            begin
              _alt[2]:=2;
            end
            else if ( ((_LA[2,3]=EOF) or (_LA[2,3]=8)) ) then 
            begin
              _alt[2]:=1;
            end
            else begin
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 2, 3, input);    

            end;
          end
          else if ( ((_LA[2,1]=EOF) or (_LA[2,1]=8)) ) then 
          begin
            _alt[2]:=4;
          end
          else begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 2, 1, input);    

          end;
        end
        else if ( ((_LA[2,0]=ID)) ) then 
        begin
          _LA[2,2] := input.LA(2);

          if ( ((_LA[2,2]=9)) ) then 
          begin
            _alt[2]:=3;
          end
          else if ( ((_LA[2,2]=EOF) or (_LA[2,2]=8)) ) then 
          begin
            _alt[2]:=5;
          end
          else begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 2, 2, input);    

          end;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 2, 0, input);    

        end;
        case (_alt[2]) of 
             1 :
                begin
                // Poly.g:10:7: INT ID
                begin
                INT4:=match(input,INT,FOLLOW_INT_in_term50) as IToken; 
                 
                _stream[SIndex('INT')].add(INT4);

                ID5:=match(input,ID,FOLLOW_ID_in_term52) as IToken; 
                 
                _stream[SIndex('ID')].add(ID5);



                // AST REWRITE
                // elements: INT, ID
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 10:15: -> ^( MULT[''*''] INT ID )
                begin
                    // Poly.g:10:18: ^( MULT[''*''] INT ID )
                    begin
                    root[1] := ITree(getTreeAdaptor.null());
                    root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(MULT, '*'), root[1]));

                    //-4
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('INT')].nextNode());
                    //-4
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             2 :
                begin
                // Poly.g:11:7: INT exp
                begin
                INT6:=match(input,INT,FOLLOW_INT_in_term72) as IToken; 
                 
                _stream[SIndex('INT')].add(INT6);

                pushFollow(FOLLOW_exp_in_term74);
                exp7:=exp();

                state._fsp:=state._fsp-1;

                _stream[SIndex('exp')].add(exp7.getTree());


                // AST REWRITE
                // elements: exp, INT
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ITree(getTreeAdaptor.null());
                // 11:15: -> ^( MULT[''*''] INT exp )
                begin
                    // Poly.g:11:18: ^( MULT[''*''] INT exp )
                    begin
                    root[1] := ITree(getTreeAdaptor.null());
                    root[1] := ITree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(MULT, '*'), root[1]));

                    //-4
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('INT')].nextNode());
                    //0
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('exp')].nextTree());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             3 :
                begin
                // Poly.g:12:7: exp
                begin
                root[0] := ITree(getTreeAdaptor.null());

                pushFollow(FOLLOW_exp_in_term93);
                exp8:=exp();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], exp8.getTree());

                end;
                end;
             4 :
                begin
                // Poly.g:13:7: INT
                begin
                root[0] := ITree(getTreeAdaptor.null());

                INT9:=match(input,INT,FOLLOW_INT_in_term101) as IToken; 

                INT9_tree := ITree(getTreeAdaptor.CreateWithToken(INT9));
                getTreeAdaptor.addChild(root[0], INT9_tree);


                end;
                end;
             5 :
                begin
                // Poly.g:14:4: ID
                begin
                root[0] := ITree(getTreeAdaptor.null());

                ID10:=match(input,ID,FOLLOW_ID_in_term106) as IToken; 

                ID10_tree := ITree(getTreeAdaptor.CreateWithToken(ID10));
                getTreeAdaptor.addChild(root[0], ID10_tree);


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
    Result:=retval//term_return(retval.getobject);;
end;


{
function TPolyParser.TPolyParser_exp_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "exp"
// Poly.g:17:1: exp : ID ''^'' INT ;
function TPolyParser.exp():IPolyParser_exp_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IPolyParser_exp_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID11:IToken;
  char_literal12:IToken;
  INT13:IToken;

  ID11_tree:ITree;
  char_literal12_tree:ITree;
  INT13_tree:ITree;
  procedure InitRule;
  begin
  end;
begin
    retval := exp_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Poly.g:17:5: ( ID ''^'' INT )
        // Poly.g:17:7: ID ''^'' INT
        begin
        root[0] := ITree(getTreeAdaptor.null());

        ID11:=match(input,ID,FOLLOW_ID_in_exp119) as IToken; 

        ID11_tree := ITree(getTreeAdaptor.CreateWithToken(ID11));
        getTreeAdaptor.addChild(root[0], ID11_tree);

        char_literal12:=match(input,9,FOLLOW_9_in_exp121) as IToken; 

        char_literal12_tree := ITree(getTreeAdaptor.CreateWithToken(char_literal12));
        root[0] := ITree(getTreeAdaptor.becomeRoot(char_literal12_tree, root[0]));

        INT13:=match(input,INT,FOLLOW_INT_in_exp124) as IToken; 

        INT13_tree := ITree(getTreeAdaptor.CreateWithToken(INT13));
        getTreeAdaptor.addChild(root[0], INT13_tree);


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
    Result:=retval//exp_return(retval.getobject);;
end;


 

procedure TPolyParser.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TPolyParser.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.