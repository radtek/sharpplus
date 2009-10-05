// $ANTLR 3.2 10 04, 2009 23:19:32 Cymbol.g 2009-10-05 22:10:28
unit CymbolParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const T_BLOCK=6;
    const T__27=27;
    const T__26=26;
    const T__25=25;
    const T__24=24;
    const LETTER=13;
    const T__23=23;
    const T__22=22;
    const T__21=21;
    const T__20=20;
    const ARG_DECL=5;
    const METHOD_DECL=4;
    const VAR_DECL=7;
    const INT=12;
    const ID=11;
    const EOF=-1;
    const T__19=19;
    const WS=14;
    const EXPR=10;
    const T__16=16;
    const T__18=18;
    const T__17=17;
    const ELIST=9;
    const SL_COMMENT=15;
    const CALL=8;              
type
  TCymbolParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_methodDeclaration_in_compilationUnit118:IBitSet;
    FOLLOW_varDeclaration_in_compilationUnit122:IBitSet;
    FOLLOW_typ_in_methodDeclaration144:IBitSet;
    FOLLOW_ID_in_methodDeclaration146:IBitSet;
    FOLLOW_16_in_methodDeclaration148:IBitSet;
    FOLLOW_formalParameters_in_methodDeclaration150:IBitSet;
    FOLLOW_17_in_methodDeclaration153:IBitSet;
    FOLLOW_block_in_methodDeclaration155:IBitSet;
    FOLLOW_typ_in_formalParameters198:IBitSet;
    FOLLOW_ID_in_formalParameters200:IBitSet;
    FOLLOW_18_in_formalParameters203:IBitSet;
    FOLLOW_typ_in_formalParameters205:IBitSet;
    FOLLOW_ID_in_formalParameters207:IBitSet;
    FOLLOW_set_in_typ0:IBitSet;
    FOLLOW_22_in_block272:IBitSet;
    FOLLOW_statement_in_block274:IBitSet;
    FOLLOW_23_in_block277:IBitSet;
    FOLLOW_typ_in_varDeclaration307:IBitSet;
    FOLLOW_ID_in_varDeclaration309:IBitSet;
    FOLLOW_24_in_varDeclaration312:IBitSet;
    FOLLOW_expression_in_varDeclaration314:IBitSet;
    FOLLOW_25_in_varDeclaration318:IBitSet;
    FOLLOW_block_in_statement351:IBitSet;
    FOLLOW_varDeclaration_in_statement359:IBitSet;
    FOLLOW_26_in_statement369:IBitSet;
    FOLLOW_expression_in_statement371:IBitSet;
    FOLLOW_25_in_statement374:IBitSet;
    FOLLOW_postfixExpression_in_statement393:IBitSet;
    FOLLOW_24_in_statement408:IBitSet;
    FOLLOW_expression_in_statement410:IBitSet;
    FOLLOW_25_in_statement460:IBitSet;
    FOLLOW_expression_in_expressionList486:IBitSet;
    FOLLOW_18_in_expressionList489:IBitSet;
    FOLLOW_expression_in_expressionList491:IBitSet;
    FOLLOW_addExpression_in_expression533:IBitSet;
    FOLLOW_postfixExpression_in_addExpression559:IBitSet;
    FOLLOW_27_in_addExpression562:IBitSet;
    FOLLOW_postfixExpression_in_addExpression565:IBitSet;
    FOLLOW_primary_in_postfixExpression584:IBitSet;
    FOLLOW_16_in_postfixExpression590:IBitSet;
    FOLLOW_expressionList_in_postfixExpression593:IBitSet;
    FOLLOW_17_in_postfixExpression595:IBitSet;
    FOLLOW_ID_in_primary621:IBitSet;
    FOLLOW_INT_in_primary631:IBitSet;
    FOLLOW_16_in_primary641:IBitSet;
    FOLLOW_expression_in_primary643:IBitSet;
    FOLLOW_17_in_primary645:IBitSet;
    

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
        type ICymbolParser_compilationUnit_return=interface(IParserRuleReturnScope)
        ['{85D42CFC-ED18-4610-8465-6935BEBC393C}']
        end;   
        type compilationUnit_return =class( TParserRuleReturnScope , ICymbolParser_compilationUnit_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "compilationUnit"
    // Cymbol.g:18:1: compilationUnit : ( methodDeclaration | varDeclaration )+ ;
    function compilationUnit():ICymbolParser_compilationUnit_return{IParserRuleReturnScope};
    // $ANTLR end compilationUnit

    public
        type ICymbolParser_methodDeclaration_return=interface(IParserRuleReturnScope)
        ['{5BD40EF0-599A-4410-9211-F13797537DD7}']
        end;   
        type methodDeclaration_return =class( TParserRuleReturnScope , ICymbolParser_methodDeclaration_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "methodDeclaration"
    // Cymbol.g:23:1: methodDeclaration : typ ID ''('' ( formalParameters )? '')'' block -> ^( METHOD_DECL typ ID ( formalParameters )? block ) ;
    function methodDeclaration():ICymbolParser_methodDeclaration_return{IParserRuleReturnScope};
    // $ANTLR end methodDeclaration

    public
        type ICymbolParser_formalParameters_return=interface(IParserRuleReturnScope)
        ['{123C65AC-9CC6-4339-9F99-A4DE10002C21}']
        end;   
        type formalParameters_return =class( TParserRuleReturnScope , ICymbolParser_formalParameters_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "formalParameters"
    // Cymbol.g:29:1: formalParameters : typ ID ( '','' typ ID )* -> ( ^( ARG_DECL typ ID ) )+ ;
    function formalParameters():ICymbolParser_formalParameters_return{IParserRuleReturnScope};
    // $ANTLR end formalParameters

    public
        type ICymbolParser_typ_return=interface(IParserRuleReturnScope)
        ['{50D6B8BF-08BE-41AB-AE7D-2C5F9C510333}']
        end;   
        type typ_return =class( TParserRuleReturnScope , ICymbolParser_typ_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "typ"
    // Cymbol.g:33:1: typ : ( ''float'' | ''int'' | ''void'' );
    function typ():ICymbolParser_typ_return{IParserRuleReturnScope};
    // $ANTLR end typ

    public
        type ICymbolParser_block_return=interface(IParserRuleReturnScope)
        ['{80364241-430E-44D4-B2C5-7B1867C6D61B}']
        end;   
        type block_return =class( TParserRuleReturnScope , ICymbolParser_block_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "block"
    // Cymbol.g:39:1: block : ''{'' ( statement )* ''}'' -> ^( T_BLOCK ( statement )* ) ;
    function block():ICymbolParser_block_return{IParserRuleReturnScope};
    // $ANTLR end block

    public
        type ICymbolParser_varDeclaration_return=interface(IParserRuleReturnScope)
        ['{D5497F8F-F399-48C1-8B91-D3594E78C84A}']
        end;   
        type varDeclaration_return =class( TParserRuleReturnScope , ICymbolParser_varDeclaration_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "varDeclaration"
    // Cymbol.g:45:1: varDeclaration : typ ID ( ''='' expression )? '';'' -> ^( VAR_DECL typ ID ( expression )? ) ;
    function varDeclaration():ICymbolParser_varDeclaration_return{IParserRuleReturnScope};
    // $ANTLR end varDeclaration

    public
        type ICymbolParser_statement_return=interface(IParserRuleReturnScope)
        ['{5798CEB1-8566-4B23-A75B-9495CEFAEC8C}']
        end;   
        type statement_return =class( TParserRuleReturnScope , ICymbolParser_statement_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "statement"
    // Cymbol.g:50:1: statement : ( block | varDeclaration | ''return'' ( expression )? '';'' -> ^( ''return'' ( expression )? ) | postfixExpression ( ''='' expression -> ^( ''='' postfixExpression expression ) | -> ^( EXPR postfixExpression ) ) '';'' );
    function statement():ICymbolParser_statement_return{IParserRuleReturnScope};
    // $ANTLR end statement

    public
        type ICymbolParser_expressionList_return=interface(IParserRuleReturnScope)
        ['{EFB1B561-A75D-4AA6-BC6A-F5AE02AB99AC}']
        end;   
        type expressionList_return =class( TParserRuleReturnScope , ICymbolParser_expressionList_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "expressionList"
    // Cymbol.g:61:1: expressionList : ( expression ( '','' expression )* -> ^( ELIST ( expression )+ ) | -> ELIST );
    function expressionList():ICymbolParser_expressionList_return{IParserRuleReturnScope};
    // $ANTLR end expressionList

    public
        type ICymbolParser_expression_return=interface(IParserRuleReturnScope)
        ['{F753B014-32A7-47F2-9B25-A88D3F6CFCD4}']
        end;   
        type expression_return =class( TParserRuleReturnScope , ICymbolParser_expression_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "expression"
    // Cymbol.g:66:1: expression : addExpression -> ^( EXPR addExpression ) ;
    function expression():ICymbolParser_expression_return{IParserRuleReturnScope};
    // $ANTLR end expression

    public
        type ICymbolParser_addExpression_return=interface(IParserRuleReturnScope)
        ['{C69DF8B4-D0A6-4CF3-AE8E-ACB720E958A3}']
        end;   
        type addExpression_return =class( TParserRuleReturnScope , ICymbolParser_addExpression_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "addExpression"
    // Cymbol.g:70:1: addExpression : postfixExpression ( ''+'' postfixExpression )* ;
    function addExpression():ICymbolParser_addExpression_return{IParserRuleReturnScope};
    // $ANTLR end addExpression

    public
        type ICymbolParser_postfixExpression_return=interface(IParserRuleReturnScope)
        ['{F66AAE44-702B-4565-B404-EF1A82FB8DF5}']
        end;   
        type postfixExpression_return =class( TParserRuleReturnScope , ICymbolParser_postfixExpression_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "postfixExpression"
    // Cymbol.g:75:1: postfixExpression : primary (lp= ''('' expressionList '')'' )* ;
    function postfixExpression():ICymbolParser_postfixExpression_return{IParserRuleReturnScope};
    // $ANTLR end postfixExpression

    public
        type ICymbolParser_primary_return=interface(IParserRuleReturnScope)
        ['{46DB780B-7510-4E04-8DD2-F141618D691B}']
        end;   
        type primary_return =class( TParserRuleReturnScope , ICymbolParser_primary_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "primary"
    // Cymbol.g:80:1: primary : ( ID | INT | ''('' expression '')'' -> expression );
    function primary():ICymbolParser_primary_return{IParserRuleReturnScope};
    // $ANTLR end primary

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,JclArrayLists,
    // delegates
    // delegators
 
    JclHashSets;

function TCymbolParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TCymbolParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"METHOD_DECL"');
  tokenNames.Add('"ARG_DECL"');
  tokenNames.Add('"T_BLOCK"');
  tokenNames.Add('"VAR_DECL"');
  tokenNames.Add('"CALL"');
  tokenNames.Add('"ELIST"');
  tokenNames.Add('"EXPR"');
  tokenNames.Add('"ID"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"LETTER"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"SL_COMMENT"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"'',''"');
  tokenNames.Add('"''float''"');
  tokenNames.Add('"''int''"');
  tokenNames.Add('"''void''"');
  tokenNames.Add('"''{''"');
  tokenNames.Add('"''}''"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''return''"');
  tokenNames.Add('"''+''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TCymbolParser.InitBitsets;
begin
  FOLLOW_methodDeclaration_in_compilationUnit118 := TAntlrBitSet.CreateWithBits([$0000000000380002]);
  FOLLOW_varDeclaration_in_compilationUnit122 := TAntlrBitSet.CreateWithBits([$0000000000380002]);
  FOLLOW_typ_in_methodDeclaration144 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_ID_in_methodDeclaration146 := TAntlrBitSet.CreateWithBits([$0000000000010000]);
  FOLLOW_16_in_methodDeclaration148 := TAntlrBitSet.CreateWithBits([$00000000003A0000]);
  FOLLOW_formalParameters_in_methodDeclaration150 := TAntlrBitSet.CreateWithBits([$0000000000020000]);
  FOLLOW_17_in_methodDeclaration153 := TAntlrBitSet.CreateWithBits([$0000000000400000]);
  FOLLOW_block_in_methodDeclaration155 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_typ_in_formalParameters198 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_ID_in_formalParameters200 := TAntlrBitSet.CreateWithBits([$0000000000040002]);
  FOLLOW_18_in_formalParameters203 := TAntlrBitSet.CreateWithBits([$0000000000380000]);
  FOLLOW_typ_in_formalParameters205 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_ID_in_formalParameters207 := TAntlrBitSet.CreateWithBits([$0000000000040002]);
  FOLLOW_set_in_typ0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_22_in_block272 := TAntlrBitSet.CreateWithBits([$0000000004F91800]);
  FOLLOW_statement_in_block274 := TAntlrBitSet.CreateWithBits([$0000000004F91800]);
  FOLLOW_23_in_block277 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_typ_in_varDeclaration307 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_ID_in_varDeclaration309 := TAntlrBitSet.CreateWithBits([$0000000003000000]);
  FOLLOW_24_in_varDeclaration312 := TAntlrBitSet.CreateWithBits([$0000000004791800]);
  FOLLOW_expression_in_varDeclaration314 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_varDeclaration318 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_statement351 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_varDeclaration_in_statement359 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_26_in_statement369 := TAntlrBitSet.CreateWithBits([$0000000006791800]);
  FOLLOW_expression_in_statement371 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement374 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_postfixExpression_in_statement393 := TAntlrBitSet.CreateWithBits([$0000000003000000]);
  FOLLOW_24_in_statement408 := TAntlrBitSet.CreateWithBits([$0000000004791800]);
  FOLLOW_expression_in_statement410 := TAntlrBitSet.CreateWithBits([$0000000002000000]);
  FOLLOW_25_in_statement460 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_in_expressionList486 := TAntlrBitSet.CreateWithBits([$0000000000040002]);
  FOLLOW_18_in_expressionList489 := TAntlrBitSet.CreateWithBits([$0000000004791800]);
  FOLLOW_expression_in_expressionList491 := TAntlrBitSet.CreateWithBits([$0000000000040002]);
  FOLLOW_addExpression_in_expression533 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_postfixExpression_in_addExpression559 := TAntlrBitSet.CreateWithBits([$0000000008000002]);
  FOLLOW_27_in_addExpression562 := TAntlrBitSet.CreateWithBits([$0000000004791800]);
  FOLLOW_postfixExpression_in_addExpression565 := TAntlrBitSet.CreateWithBits([$0000000008000002]);
  FOLLOW_primary_in_postfixExpression584 := TAntlrBitSet.CreateWithBits([$0000000000010002]);
  FOLLOW_16_in_postfixExpression590 := TAntlrBitSet.CreateWithBits([$00000000047B1800]);
  FOLLOW_expressionList_in_postfixExpression593 := TAntlrBitSet.CreateWithBits([$0000000000020000]);
  FOLLOW_17_in_postfixExpression595 := TAntlrBitSet.CreateWithBits([$0000000000010002]);
  FOLLOW_ID_in_primary621 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_INT_in_primary631 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_16_in_primary641 := TAntlrBitSet.CreateWithBits([$0000000004791800]);
  FOLLOW_expression_in_primary643 := TAntlrBitSet.CreateWithBits([$0000000000020000]);
  FOLLOW_17_in_primary645 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TCymbolParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TCymbolParser.GetGrammarFileName():String;
begin
  Result:='Cymbol.g'; 
end;




{
function TCymbolParser.TCymbolParser_compilationUnit_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "compilationUnit"
// Cymbol.g:18:1: compilationUnit : ( methodDeclaration | varDeclaration )+ ;
function TCymbolParser.compilationUnit():ICymbolParser_compilationUnit_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_compilationUnit_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  methodDeclaration1:ICymbolParser_methodDeclaration_return{IParserRuleReturnScope}; 

  varDeclaration2:ICymbolParser_varDeclaration_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := compilationUnit_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:19:5: ( ( methodDeclaration | varDeclaration )+ )
        // Cymbol.g:19:9: ( methodDeclaration | varDeclaration )+
        begin
        root[0] := ICommonTree(getTreeAdaptor.null());

        // positiveClosureBlock:Cymbol.g:19:9: ( methodDeclaration | varDeclaration )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=3;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( (((_LA[1,0]>=19) and 
            ( _LA[1,0]<=21))) ) then 
            begin
              _LA[1,2] := input.LA(2);

              if ( ((_LA[1,2]=ID)) ) then 
              begin
                _LA[1,3] := input.LA(3);

                if ( ((_LA[1,3]=16)) ) then 
                begin
                  _alt[1]:=1;
                end
                else if ( (((_LA[1,3]>=24) and 
                ( _LA[1,3]<=25))) ) then 
                begin
                  _alt[1]:=2;
                end

                ;

              end

              ;

            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // Cymbol.g:19:10: methodDeclaration
        	    begin
        	    pushFollow(FOLLOW_methodDeclaration_in_compilationUnit118);
        	    methodDeclaration1:=methodDeclaration();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], methodDeclaration1.getTree());

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // Cymbol.g:19:30: varDeclaration
        	    begin
        	    pushFollow(FOLLOW_varDeclaration_in_compilationUnit122);
        	    varDeclaration2:=varDeclaration();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], varDeclaration2.getTree());

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

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{compilationUnit_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_methodDeclaration_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "methodDeclaration"
// Cymbol.g:23:1: methodDeclaration : typ ID ''('' ( formalParameters )? '')'' block -> ^( METHOD_DECL typ ID ( formalParameters )? block ) ;
function TCymbolParser.methodDeclaration():ICymbolParser_methodDeclaration_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_methodDeclaration_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID4:IToken;
  char_literal5:IToken;
  char_literal7:IToken;
  typ3:ICymbolParser_typ_return{IParserRuleReturnScope}; 

  formalParameters6:ICymbolParser_formalParameters_return{IParserRuleReturnScope}; 

  block8:ICymbolParser_block_return{IParserRuleReturnScope}; 


  ID4_tree:ICommonTree;
  char_literal5_tree:ICommonTree;
  char_literal7_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('17')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 17');
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('16')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 16');
  _stream[SIndex('formalParameters')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule formalParameters');
  _stream[SIndex('block')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule block');
  _stream[SIndex('typ')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule typ');
  end;
begin
    initRule;
    retval := methodDeclaration_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:24:5: ( typ ID ''('' ( formalParameters )? '')'' block -> ^( METHOD_DECL typ ID ( formalParameters )? block ) )
        // Cymbol.g:24:9: typ ID ''('' ( formalParameters )? '')'' block
        begin
        pushFollow(FOLLOW_typ_in_methodDeclaration144);
        typ3:=typ();

        state._fsp:=state._fsp-1;

        _stream[SIndex('typ')].add(typ3.getTree());
        ID4:=match(input,ID,FOLLOW_ID_in_methodDeclaration146) as IToken; 
         
        _stream[SIndex('ID')].add(ID4);

        char_literal5:=match(input,16,FOLLOW_16_in_methodDeclaration148) as IToken; 
         
        _stream[SIndex('16')].add(char_literal5);

        // block:Cymbol.g:24:20: ( formalParameters )?
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( (((_LA[2,0]>=19) and 
        ( _LA[2,0]<=21))) ) then 
        begin
          _alt[2]:=1;
        end
        ;
        case (_alt[2]) of
             1 :
                begin
                // Cymbol.g:24:20: formalParameters
                begin
                pushFollow(FOLLOW_formalParameters_in_methodDeclaration150);
                formalParameters6:=formalParameters();

                state._fsp:=state._fsp-1;

                _stream[SIndex('formalParameters')].add(formalParameters6.getTree());

                end;
                end;

        end;

        char_literal7:=match(input,17,FOLLOW_17_in_methodDeclaration153) as IToken; 
         
        _stream[SIndex('17')].add(char_literal7);

        pushFollow(FOLLOW_block_in_methodDeclaration155);
        block8:=block();

        state._fsp:=state._fsp-1;

        _stream[SIndex('block')].add(block8.getTree());


        // AST REWRITE
        // elements: typ, ID, formalParameters, block
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 25:9: -> ^( METHOD_DECL typ ID ( formalParameters )? block )
        begin
            // Cymbol.g:25:12: ^( METHOD_DECL typ ID ( formalParameters )? block )
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(METHOD_DECL, 'METHOD_DECL'), root[1]));

              getTreeAdaptor.addChild(root[1], _stream[SIndex('typ')].nextTree());
              getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());
              // Cymbol.g:25:33: ( formalParameters )?
              if ( _stream[SIndex('formalParameters')].hasNext() ) then begin
                  getTreeAdaptor.addChild(root[1], _stream[SIndex('formalParameters')].nextTree());

              end;
              _stream[SIndex('formalParameters')].reset();
              getTreeAdaptor.addChild(root[1], _stream[SIndex('block')].nextTree());

              getTreeAdaptor.addChild(root[0], root[1]);
            end;

        end;

        retval.tree := root[0];
        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{methodDeclaration_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_formalParameters_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "formalParameters"
// Cymbol.g:29:1: formalParameters : typ ID ( '','' typ ID )* -> ( ^( ARG_DECL typ ID ) )+ ;
function TCymbolParser.formalParameters():ICymbolParser_formalParameters_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_formalParameters_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID10:IToken;
  char_literal11:IToken;
  ID13:IToken;
  typ9:ICymbolParser_typ_return{IParserRuleReturnScope}; 

  typ12:ICymbolParser_typ_return{IParserRuleReturnScope}; 


  ID10_tree:ICommonTree;
  char_literal11_tree:ICommonTree;
  ID13_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('18')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 18');
  _stream[SIndex('typ')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule typ');
  end;
begin
    initRule;
    retval := formalParameters_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:30:5: ( typ ID ( '','' typ ID )* -> ( ^( ARG_DECL typ ID ) )+ )
        // Cymbol.g:30:9: typ ID ( '','' typ ID )*
        begin
        pushFollow(FOLLOW_typ_in_formalParameters198);
        typ9:=typ();

        state._fsp:=state._fsp-1;

        _stream[SIndex('typ')].add(typ9.getTree());
        ID10:=match(input,ID,FOLLOW_ID_in_formalParameters200) as IToken; 
         
        _stream[SIndex('ID')].add(ID10);

        // closureBlock:Cymbol.g:30:16: ( '','' typ ID )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=18)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // Cymbol.g:30:17: '','' typ ID
        	    begin
        	    char_literal11:=match(input,18,FOLLOW_18_in_formalParameters203) as IToken; 
        	     
        	    _stream[SIndex('18')].add(char_literal11);

        	    pushFollow(FOLLOW_typ_in_formalParameters205);
        	    typ12:=typ();

        	    state._fsp:=state._fsp-1;

        	    _stream[SIndex('typ')].add(typ12.getTree());
        	    ID13:=match(input,ID,FOLLOW_ID_in_formalParameters207) as IToken; 
        	     
        	    _stream[SIndex('ID')].add(ID13);


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);



        // AST REWRITE
        // elements: ID, typ
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 30:30: -> ( ^( ARG_DECL typ ID ) )+
        begin
            if ( not(_stream[SIndex('ID')].hasNext() or _stream[SIndex('typ')].hasNext()) ) then begin
                raise ERewriteEarlyExitException.Create('');
            end;
            while ( _stream[SIndex('ID')].hasNext() or _stream[SIndex('typ')].hasNext() ) do
            begin
                // Cymbol.g:30:33: ^( ARG_DECL typ ID )
                begin
                  root[1] := ICommonTree(getTreeAdaptor.null());
                  root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(ARG_DECL, 'ARG_DECL'), root[1]));

                  getTreeAdaptor.addChild(root[1], _stream[SIndex('typ')].nextTree());
                  getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());

                  getTreeAdaptor.addChild(root[0], root[1]);
                end;

            end;
            _stream[SIndex('ID')].reset();
            _stream[SIndex('typ')].reset();

        end;

        retval.tree := root[0];
        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{formalParameters_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_typ_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "typ"
// Cymbol.g:33:1: typ : ( ''float'' | ''int'' | ''void'' );
function TCymbolParser.typ():ICymbolParser_typ_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_typ_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  set14:IToken;

  set14_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin
    retval := typ_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:33:4: ( ''float'' | ''int'' | ''void'' )
        // Cymbol.g:
        begin
        root[0] := ICommonTree(getTreeAdaptor.null());

        set14:=IToken(input.LT(1));
        if ( ((input.LA(1)>=19) and (input.LA(1)<=21)) ) then
        begin
            input.consume();
            getTreeAdaptor.addChild(root[0], ICommonTree(getTreeAdaptor.CreateWithToken(set14)));
            state.errorRecovery:=false;
        end
        else 
        begin
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{typ_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_block_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "block"
// Cymbol.g:39:1: block : ''{'' ( statement )* ''}'' -> ^( T_BLOCK ( statement )* ) ;
function TCymbolParser.block():ICymbolParser_block_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_block_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  char_literal15:IToken;
  char_literal17:IToken;
  statement16:ICymbolParser_statement_return{IParserRuleReturnScope}; 


  char_literal15_tree:ICommonTree;
  char_literal17_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('22')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 22');
  _stream[SIndex('23')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 23');
  _stream[SIndex('statement')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule statement');
  end;
begin
    initRule;
    retval := block_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:40:5: ( ''{'' ( statement )* ''}'' -> ^( T_BLOCK ( statement )* ) )
        // Cymbol.g:40:9: ''{'' ( statement )* ''}''
        begin
        char_literal15:=match(input,22,FOLLOW_22_in_block272) as IToken; 
         
        _stream[SIndex('22')].add(char_literal15);

        // closureBlock:Cymbol.g:40:13: ( statement )*
        repeat 
            _alt[4]:=2;
            _LA[4,0] := input.LA(1);

            if ( (((_LA[4,0]>=ID) and 
            ( _LA[4,0]<=INT)) or (_LA[4,0]=16) or ((_LA[4,0]>=19) and 
            ( _LA[4,0]<=22)) or (_LA[4,0]=26)) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            case (_alt[4]) of
        	 1 :
        	    begin
        	    // Cymbol.g:40:13: statement
        	    begin
        	    pushFollow(FOLLOW_statement_in_block274);
        	    statement16:=statement();

        	    state._fsp:=state._fsp-1;

        	    _stream[SIndex('statement')].add(statement16.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        char_literal17:=match(input,23,FOLLOW_23_in_block277) as IToken; 
         
        _stream[SIndex('23')].add(char_literal17);



        // AST REWRITE
        // elements: statement
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 40:28: -> ^( T_BLOCK ( statement )* )
        begin
            // Cymbol.g:40:31: ^( T_BLOCK ( statement )* )
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(T_BLOCK, 'T_BLOCK'), root[1]));

              // Cymbol.g:40:41: ( statement )*
              while ( _stream[SIndex('statement')].hasNext() ) do
              begin
                  getTreeAdaptor.addChild(root[1], _stream[SIndex('statement')].nextTree());

              end;
              _stream[SIndex('statement')].reset();

              getTreeAdaptor.addChild(root[0], root[1]);
            end;

        end;

        retval.tree := root[0];
        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{block_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_varDeclaration_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "varDeclaration"
// Cymbol.g:45:1: varDeclaration : typ ID ( ''='' expression )? '';'' -> ^( VAR_DECL typ ID ( expression )? ) ;
function TCymbolParser.varDeclaration():ICymbolParser_varDeclaration_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_varDeclaration_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID19:IToken;
  char_literal20:IToken;
  char_literal22:IToken;
  typ18:ICymbolParser_typ_return{IParserRuleReturnScope}; 

  expression21:ICymbolParser_expression_return{IParserRuleReturnScope}; 


  ID19_tree:ICommonTree;
  char_literal20_tree:ICommonTree;
  char_literal22_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('ID')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('24')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 24');
  _stream[SIndex('25')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 25');
  _stream[SIndex('expression')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expression');
  _stream[SIndex('typ')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule typ');
  end;
begin
    initRule;
    retval := varDeclaration_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:46:5: ( typ ID ( ''='' expression )? '';'' -> ^( VAR_DECL typ ID ( expression )? ) )
        // Cymbol.g:46:9: typ ID ( ''='' expression )? '';''
        begin
        pushFollow(FOLLOW_typ_in_varDeclaration307);
        typ18:=typ();

        state._fsp:=state._fsp-1;

        _stream[SIndex('typ')].add(typ18.getTree());
        ID19:=match(input,ID,FOLLOW_ID_in_varDeclaration309) as IToken; 
         
        _stream[SIndex('ID')].add(ID19);

        // block:Cymbol.g:46:16: ( ''='' expression )?
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=24)) ) then 
        begin
          _alt[5]:=1;
        end
        ;
        case (_alt[5]) of
             1 :
                begin
                // Cymbol.g:46:17: ''='' expression
                begin
                char_literal20:=match(input,24,FOLLOW_24_in_varDeclaration312) as IToken; 
                 
                _stream[SIndex('24')].add(char_literal20);

                pushFollow(FOLLOW_expression_in_varDeclaration314);
                expression21:=expression();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expression')].add(expression21.getTree());

                end;
                end;

        end;

        char_literal22:=match(input,25,FOLLOW_25_in_varDeclaration318) as IToken; 
         
        _stream[SIndex('25')].add(char_literal22);



        // AST REWRITE
        // elements: typ, expression, ID
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 46:38: -> ^( VAR_DECL typ ID ( expression )? )
        begin
            // Cymbol.g:46:41: ^( VAR_DECL typ ID ( expression )? )
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(VAR_DECL, 'VAR_DECL'), root[1]));

              getTreeAdaptor.addChild(root[1], _stream[SIndex('typ')].nextTree());
              getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());
              // Cymbol.g:46:59: ( expression )?
              if ( _stream[SIndex('expression')].hasNext() ) then begin
                  getTreeAdaptor.addChild(root[1], _stream[SIndex('expression')].nextTree());

              end;
              _stream[SIndex('expression')].reset();

              getTreeAdaptor.addChild(root[0], root[1]);
            end;

        end;

        retval.tree := root[0];
        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{varDeclaration_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_statement_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "statement"
// Cymbol.g:50:1: statement : ( block | varDeclaration | ''return'' ( expression )? '';'' -> ^( ''return'' ( expression )? ) | postfixExpression ( ''='' expression -> ^( ''='' postfixExpression expression ) | -> ^( EXPR postfixExpression ) ) '';'' );
function TCymbolParser.statement():ICymbolParser_statement_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_statement_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  string_literal25:IToken;
  char_literal27:IToken;
  char_literal29:IToken;
  char_literal31:IToken;
  block23:ICymbolParser_block_return{IParserRuleReturnScope}; 

  varDeclaration24:ICymbolParser_varDeclaration_return{IParserRuleReturnScope}; 

  expression26:ICymbolParser_expression_return{IParserRuleReturnScope}; 

  postfixExpression28:ICymbolParser_postfixExpression_return{IParserRuleReturnScope}; 

  expression30:ICymbolParser_expression_return{IParserRuleReturnScope}; 


  string_literal25_tree:ICommonTree;
  char_literal27_tree:ICommonTree;
  char_literal29_tree:ICommonTree;
  char_literal31_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('24')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 24');
  _stream[SIndex('25')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 25');
  _stream[SIndex('26')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 26');
  _stream[SIndex('expression')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expression');
  _stream[SIndex('postfixExpression')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule postfixExpression');
  end;
begin
    initRule;
    retval := statement_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:Cymbol.g:51:5: ( block | varDeclaration | ''return'' ( expression )? '';'' -> ^( ''return'' ( expression )? ) | postfixExpression ( ''='' expression -> ^( ''='' postfixExpression expression ) | -> ^( EXPR postfixExpression ) ) '';'' )
        _alt[8]:=4;

        case input.LA(1) of
         22: 
            begin
            _alt[8]:=1;
            end;
         19 , 
         20 , 
         21: 
            begin
            _alt[8]:=2;
            end;
         26: 
            begin
            _alt[8]:=3;
            end;
         ID , 
         INT , 
         16: 
            begin
            _alt[8]:=4;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 8, 0, input);

        end;
        end;

        case (_alt[8]) of 
             1 :
                begin
                // Cymbol.g:51:9: block
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                pushFollow(FOLLOW_block_in_statement351);
                block23:=block();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], block23.getTree());

                end;
                end;
             2 :
                begin
                // Cymbol.g:52:7: varDeclaration
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                pushFollow(FOLLOW_varDeclaration_in_statement359);
                varDeclaration24:=varDeclaration();

                state._fsp:=state._fsp-1;

                getTreeAdaptor.addChild(root[0], varDeclaration24.getTree());

                end;
                end;
             3 :
                begin
                // Cymbol.g:53:9: ''return'' ( expression )? '';''
                begin
                string_literal25:=match(input,26,FOLLOW_26_in_statement369) as IToken; 
                 
                _stream[SIndex('26')].add(string_literal25);

                // block:Cymbol.g:53:18: ( expression )?
                _alt[6]:=2;
                _LA[6,0] := input.LA(1);

                if ( (((_LA[6,0]>=ID) and 
                ( _LA[6,0]<=INT)) or (_LA[6,0]=16)) ) then 
                begin
                  _alt[6]:=1;
                end
                ;
                case (_alt[6]) of
                     1 :
                        begin
                        // Cymbol.g:53:18: expression
                        begin
                        pushFollow(FOLLOW_expression_in_statement371);
                        expression26:=expression();

                        state._fsp:=state._fsp-1;

                        _stream[SIndex('expression')].add(expression26.getTree());

                        end;
                        end;

                end;

                char_literal27:=match(input,25,FOLLOW_25_in_statement374) as IToken; 
                 
                _stream[SIndex('25')].add(char_literal27);



                // AST REWRITE
                // elements: 26, expression
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 53:34: -> ^( ''return'' ( expression )? )
                begin
                    // Cymbol.g:53:37: ^( ''return'' ( expression )? )
                    begin
                      root[1] := ICommonTree(getTreeAdaptor.null());
                      root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('26')].nextNode(), root[1]));

                      // Cymbol.g:53:48: ( expression )?
                      if ( _stream[SIndex('expression')].hasNext() ) then begin
                          getTreeAdaptor.addChild(root[1], _stream[SIndex('expression')].nextTree());

                      end;
                      _stream[SIndex('expression')].reset();

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             4 :
                begin
                // Cymbol.g:54:9: postfixExpression ( ''='' expression -> ^( ''='' postfixExpression expression ) | -> ^( EXPR postfixExpression ) ) '';''
                begin
                pushFollow(FOLLOW_postfixExpression_in_statement393);
                postfixExpression28:=postfixExpression();

                state._fsp:=state._fsp-1;

                _stream[SIndex('postfixExpression')].add(postfixExpression28.getTree());
                // block:Cymbol.g:55:9: ( ''='' expression -> ^( ''='' postfixExpression expression ) | -> ^( EXPR postfixExpression ) )
                _alt[7]:=2;
                _LA[7,0] := input.LA(1);

                if ( ((_LA[7,0]=24)) ) then 
                begin
                  _alt[7]:=1;
                end
                else if ( ((_LA[7,0]=25)) ) then 
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
                        // Cymbol.g:55:13: ''='' expression
                        begin
                        char_literal29:=match(input,24,FOLLOW_24_in_statement408) as IToken; 
                         
                        _stream[SIndex('24')].add(char_literal29);

                        pushFollow(FOLLOW_expression_in_statement410);
                        expression30:=expression();

                        state._fsp:=state._fsp-1;

                        _stream[SIndex('expression')].add(expression30.getTree());


                        // AST REWRITE
                        // elements: 24, expression, postfixExpression
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        // wildcard labels: 
                        retval.tree := root[0];
                        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                        root[0] := ICommonTree(getTreeAdaptor.null());
                        // 55:28: -> ^( ''='' postfixExpression expression )
                        begin
                            // Cymbol.g:55:31: ^( ''='' postfixExpression expression )
                            begin
                              root[1] := ICommonTree(getTreeAdaptor.null());
                              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('24')].nextNode(), root[1]));

                              getTreeAdaptor.addChild(root[1], _stream[SIndex('postfixExpression')].nextTree());
                              getTreeAdaptor.addChild(root[1], _stream[SIndex('expression')].nextTree());

                              getTreeAdaptor.addChild(root[0], root[1]);
                            end;

                        end;

                        retval.tree := root[0];
                        end;
                        end;
                     2 :
                        begin
                        // Cymbol.g:56:13: 
                        begin

                        // AST REWRITE
                        // elements: postfixExpression
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        // wildcard labels: 
                        retval.tree := root[0];
                        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                        root[0] := ICommonTree(getTreeAdaptor.null());
                        // 56:13: -> ^( EXPR postfixExpression )
                        begin
                            // Cymbol.g:56:16: ^( EXPR postfixExpression )
                            begin
                              root[1] := ICommonTree(getTreeAdaptor.null());
                              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(EXPR, 'EXPR'), root[1]));

                              getTreeAdaptor.addChild(root[1], _stream[SIndex('postfixExpression')].nextTree());

                              getTreeAdaptor.addChild(root[0], root[1]);
                            end;

                        end;

                        retval.tree := root[0];
                        end;
                        end;

                end;

                char_literal31:=match(input,25,FOLLOW_25_in_statement460) as IToken; 
                 
                _stream[SIndex('25')].add(char_literal31);


                end;
                end;

        end;
        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{statement_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_expressionList_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "expressionList"
// Cymbol.g:61:1: expressionList : ( expression ( '','' expression )* -> ^( ELIST ( expression )+ ) | -> ELIST );
function TCymbolParser.expressionList():ICymbolParser_expressionList_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_expressionList_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  char_literal33:IToken;
  expression32:ICymbolParser_expression_return{IParserRuleReturnScope}; 

  expression34:ICymbolParser_expression_return{IParserRuleReturnScope}; 


  char_literal33_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('18')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 18');
  _stream[SIndex('expression')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expression');
  end;
begin
    initRule;
    retval := expressionList_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:Cymbol.g:62:5: ( expression ( '','' expression )* -> ^( ELIST ( expression )+ ) | -> ELIST )
        _alt[10]:=2;
        _LA[10,0] := input.LA(1);

        if ( (((_LA[10,0]>=ID) and 
        ( _LA[10,0]<=INT)) or (_LA[10,0]=16)) ) then 
        begin
          _alt[10]:=1;
        end
        else if ( ((_LA[10,0]=17)) ) then 
        begin
          _alt[10]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 10, 0, input);    

        end;
        case (_alt[10]) of 
             1 :
                begin
                // Cymbol.g:62:9: expression ( '','' expression )*
                begin
                pushFollow(FOLLOW_expression_in_expressionList486);
                expression32:=expression();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expression')].add(expression32.getTree());
                // closureBlock:Cymbol.g:62:20: ( '','' expression )*
                repeat 
                    _alt[9]:=2;
                    _LA[9,0] := input.LA(1);

                    if ( ((_LA[9,0]=18)) ) then 
                    begin
                      _alt[9]:=1;
                    end

                    ;

                    case (_alt[9]) of
                	 1 :
                	    begin
                	    // Cymbol.g:62:21: '','' expression
                	    begin
                	    char_literal33:=match(input,18,FOLLOW_18_in_expressionList489) as IToken; 
                	     
                	    _stream[SIndex('18')].add(char_literal33);

                	    pushFollow(FOLLOW_expression_in_expressionList491);
                	    expression34:=expression();

                	    state._fsp:=state._fsp-1;

                	    _stream[SIndex('expression')].add(expression34.getTree());

                	    end;
                	    end;

                	else 
                	    break;
                    end;
                 until (false);



                // AST REWRITE
                // elements: expression
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 62:38: -> ^( ELIST ( expression )+ )
                begin
                    // Cymbol.g:62:41: ^( ELIST ( expression )+ )
                    begin
                      root[1] := ICommonTree(getTreeAdaptor.null());
                      root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(ELIST, 'ELIST'), root[1]));

                      if ( not(_stream[SIndex('expression')].hasNext()) ) then begin
                          raise ERewriteEarlyExitException.Create('');
                      end;
                      while ( _stream[SIndex('expression')].hasNext() ) do
                      begin
                          getTreeAdaptor.addChild(root[1], _stream[SIndex('expression')].nextTree());

                      end;
                      _stream[SIndex('expression')].reset();

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             2 :
                begin
                // Cymbol.g:63:9: 
                begin

                // AST REWRITE
                // elements: 
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 63:9: -> ELIST
                begin
                    getTreeAdaptor.addChild(root[0], getTreeAdaptor.CreateWithToken(ELIST, 'ELIST'));

                end;

                retval.tree := root[0];
                end;
                end;

        end;
        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{expressionList_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_expression_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "expression"
// Cymbol.g:66:1: expression : addExpression -> ^( EXPR addExpression ) ;
function TCymbolParser.expression():ICymbolParser_expression_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_expression_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  addExpression35:ICymbolParser_addExpression_return{IParserRuleReturnScope}; 


  procedure InitRule;
  begin
  _stream[SIndex('addExpression')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule addExpression');
  end;
begin
    initRule;
    retval := expression_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:67:5: ( addExpression -> ^( EXPR addExpression ) )
        // Cymbol.g:67:9: addExpression
        begin
        pushFollow(FOLLOW_addExpression_in_expression533);
        addExpression35:=addExpression();

        state._fsp:=state._fsp-1;

        _stream[SIndex('addExpression')].add(addExpression35.getTree());


        // AST REWRITE
        // elements: addExpression
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        retval.tree := root[0];
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 67:23: -> ^( EXPR addExpression )
        begin
            // Cymbol.g:67:26: ^( EXPR addExpression )
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(EXPR, 'EXPR'), root[1]));

              getTreeAdaptor.addChild(root[1], _stream[SIndex('addExpression')].nextTree());

              getTreeAdaptor.addChild(root[0], root[1]);
            end;

        end;

        retval.tree := root[0];
        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{expression_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_addExpression_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "addExpression"
// Cymbol.g:70:1: addExpression : postfixExpression ( ''+'' postfixExpression )* ;
function TCymbolParser.addExpression():ICymbolParser_addExpression_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_addExpression_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  char_literal37:IToken;
  postfixExpression36:ICymbolParser_postfixExpression_return{IParserRuleReturnScope}; 

  postfixExpression38:ICymbolParser_postfixExpression_return{IParserRuleReturnScope}; 


  char_literal37_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin
    retval := addExpression_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:71:2: ( postfixExpression ( ''+'' postfixExpression )* )
        // Cymbol.g:71:4: postfixExpression ( ''+'' postfixExpression )*
        begin
        root[0] := ICommonTree(getTreeAdaptor.null());

        pushFollow(FOLLOW_postfixExpression_in_addExpression559);
        postfixExpression36:=postfixExpression();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], postfixExpression36.getTree());
        // closureBlock:Cymbol.g:71:22: ( ''+'' postfixExpression )*
        repeat 
            _alt[11]:=2;
            _LA[11,0] := input.LA(1);

            if ( ((_LA[11,0]=27)) ) then 
            begin
              _alt[11]:=1;
            end

            ;

            case (_alt[11]) of
        	 1 :
        	    begin
        	    // Cymbol.g:71:23: ''+'' postfixExpression
        	    begin
        	    char_literal37:=match(input,27,FOLLOW_27_in_addExpression562) as IToken; 

        	    char_literal37_tree := ICommonTree(getTreeAdaptor.CreateWithToken(char_literal37));
        	    root[0] := ICommonTree(getTreeAdaptor.becomeRoot(char_literal37_tree, root[0]));

        	    pushFollow(FOLLOW_postfixExpression_in_addExpression565);
        	    postfixExpression38:=postfixExpression();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], postfixExpression38.getTree());

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{addExpression_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_postfixExpression_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "postfixExpression"
// Cymbol.g:75:1: postfixExpression : primary (lp= ''('' expressionList '')'' )* ;
function TCymbolParser.postfixExpression():ICymbolParser_postfixExpression_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_postfixExpression_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  lp:IToken;
  char_literal41:IToken;
  primary39:ICymbolParser_primary_return{IParserRuleReturnScope}; 

  expressionList40:ICymbolParser_expressionList_return{IParserRuleReturnScope}; 


  lp_tree:ICommonTree;
  char_literal41_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin
    retval := postfixExpression_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlockSingleAlt:Cymbol.g:76:5: ( primary (lp= ''('' expressionList '')'' )* )
        // Cymbol.g:76:9: primary (lp= ''('' expressionList '')'' )*
        begin
        root[0] := ICommonTree(getTreeAdaptor.null());

        pushFollow(FOLLOW_primary_in_postfixExpression584);
        primary39:=primary();

        state._fsp:=state._fsp-1;

        getTreeAdaptor.addChild(root[0], primary39.getTree());
        // closureBlock:Cymbol.g:76:17: (lp= ''('' expressionList '')'' )*
        repeat 
            _alt[12]:=2;
            _LA[12,0] := input.LA(1);

            if ( ((_LA[12,0]=16)) ) then 
            begin
              _alt[12]:=1;
            end

            ;

            case (_alt[12]) of
        	 1 :
        	    begin
        	    // Cymbol.g:76:19: lp= ''('' expressionList '')''
        	    begin
        	    lp:=match(input,16,FOLLOW_16_in_postfixExpression590) as IToken; 

        	    lp_tree := ICommonTree(getTreeAdaptor.CreateWithToken(lp));
        	    root[0] := ICommonTree(getTreeAdaptor.becomeRoot(lp_tree, root[0]));

        	    pushFollow(FOLLOW_expressionList_in_postfixExpression593);
        	    expressionList40:=expressionList();

        	    state._fsp:=state._fsp-1;

        	    getTreeAdaptor.addChild(root[0], expressionList40.getTree());
        	    char_literal41:=match(input,17,FOLLOW_17_in_postfixExpression595) as IToken; 

        	    lp.setType(CALL);

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{postfixExpression_return(retval.getobject);};
end;


{
function TCymbolParser.TCymbolParser_primary_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "primary"
// Cymbol.g:80:1: primary : ( ID | INT | ''('' expression '')'' -> expression );
function TCymbolParser.primary():ICymbolParser_primary_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ICymbolParser_primary_return{IParserRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID42:IToken;
  INT43:IToken;
  char_literal44:IToken;
  char_literal46:IToken;
  expression45:ICymbolParser_expression_return{IParserRuleReturnScope}; 


  ID42_tree:ICommonTree;
  INT43_tree:ICommonTree;
  char_literal44_tree:ICommonTree;
  char_literal46_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('17')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 17');
  _stream[SIndex('16')]:=TRewriteRuleTokenStream.Create(getTreeAdaptor,'token 16');
  _stream[SIndex('expression')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule expression');
  end;
begin
    initRule;
    retval := primary_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    try 
      try
        // ruleBlock:Cymbol.g:81:5: ( ID | INT | ''('' expression '')'' -> expression )
        _alt[13]:=3;

        case input.LA(1) of
         ID: 
            begin
            _alt[13]:=1;
            end;
         INT: 
            begin
            _alt[13]:=2;
            end;
         16: 
            begin
            _alt[13]:=3;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 13, 0, input);

        end;
        end;

        case (_alt[13]) of 
             1 :
                begin
                // Cymbol.g:81:9: ID
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                ID42:=match(input,ID,FOLLOW_ID_in_primary621) as IToken; 

                ID42_tree := ICommonTree(getTreeAdaptor.CreateWithToken(ID42));
                getTreeAdaptor.addChild(root[0], ID42_tree);


                end;
                end;
             2 :
                begin
                // Cymbol.g:82:9: INT
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                INT43:=match(input,INT,FOLLOW_INT_in_primary631) as IToken; 

                INT43_tree := ICommonTree(getTreeAdaptor.CreateWithToken(INT43));
                getTreeAdaptor.addChild(root[0], INT43_tree);


                end;
                end;
             3 :
                begin
                // Cymbol.g:83:9: ''('' expression '')''
                begin
                char_literal44:=match(input,16,FOLLOW_16_in_primary641) as IToken; 
                 
                _stream[SIndex('16')].add(char_literal44);

                pushFollow(FOLLOW_expression_in_primary643);
                expression45:=expression();

                state._fsp:=state._fsp-1;

                _stream[SIndex('expression')].add(expression45.getTree());
                char_literal46:=match(input,17,FOLLOW_17_in_primary645) as IToken; 
                 
                _stream[SIndex('17')].add(char_literal46);



                // AST REWRITE
                // elements: expression
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 83:28: -> expression
                begin
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('expression')].nextTree());

                end;

                retval.tree := root[0];
                end;
                end;

        end;
        retval.stop := input.LT(-1);

            retval.tree := getTreeAdaptor.rulePostProcessing(root[0]) as ICommonTree;
            getTreeAdaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
	retval.tree := adaptor.errorNode(input, retval.start, input.LT(-1), e); //as ICommonTree;

      end;
    end;
    finally 
    end;
    Result:=retval{primary_return(retval.getobject);};
end;


 

procedure TCymbolParser.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TCymbolParser.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.