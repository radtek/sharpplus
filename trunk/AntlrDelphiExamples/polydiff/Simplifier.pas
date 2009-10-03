// $ANTLR 3.2 10 03, 2009 17:07:46 Simplifier.g 2009-10-03 17:15:07
unit Simplifier;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const WS=7;
    const INT=5;
    const MULT=4;
    const ID=6;
    const EOF=-1;
    const T__9=9;
    const T__8=8;              
type
  TSimplifier = class(TAntlrTreeParser)
  public
    tokenNames:TStrings;
    FOLLOW_8_in_poly56:IBitSet;
    FOLLOW_INT_in_poly60:IBitSet;
    FOLLOW_INT_in_poly64:IBitSet;
    FOLLOW_8_in_poly77:IBitSet;
    FOLLOW_8_in_poly80:IBitSet;
    FOLLOW_INT_in_poly84:IBitSet;
    FOLLOW_poly_in_poly88:IBitSet;
    FOLLOW_INT_in_poly93:IBitSet;
    FOLLOW_8_in_poly121:IBitSet;
    FOLLOW_8_in_poly124:IBitSet;
    FOLLOW_poly_in_poly128:IBitSet;
    FOLLOW_INT_in_poly132:IBitSet;
    FOLLOW_INT_in_poly137:IBitSet;
    FOLLOW_8_in_poly165:IBitSet;
    FOLLOW_poly_in_poly169:IBitSet;
    FOLLOW_poly_in_poly173:IBitSet;
    FOLLOW_MULT_in_poly220:IBitSet;
    FOLLOW_INT_in_poly222:IBitSet;
    FOLLOW_poly_in_poly224:IBitSet;
    FOLLOW_9_in_poly255:IBitSet;
    FOLLOW_ID_in_poly257:IBitSet;
    FOLLOW_INT_in_poly261:IBitSet;
    FOLLOW_INT_in_poly306:IBitSet;
    FOLLOW_ID_in_poly311:IBitSet;
    FOLLOW_8_in_synpred1_Simplifier56:IBitSet;
    FOLLOW_INT_in_synpred1_Simplifier60:IBitSet;
    FOLLOW_INT_in_synpred1_Simplifier64:IBitSet;
    FOLLOW_8_in_synpred2_Simplifier77:IBitSet;
    FOLLOW_8_in_synpred2_Simplifier80:IBitSet;
    FOLLOW_INT_in_synpred2_Simplifier84:IBitSet;
    FOLLOW_poly_in_synpred2_Simplifier88:IBitSet;
    FOLLOW_INT_in_synpred2_Simplifier93:IBitSet;
    FOLLOW_8_in_synpred3_Simplifier121:IBitSet;
    FOLLOW_8_in_synpred3_Simplifier124:IBitSet;
    FOLLOW_poly_in_synpred3_Simplifier128:IBitSet;
    FOLLOW_INT_in_synpred3_Simplifier132:IBitSet;
    FOLLOW_INT_in_synpred3_Simplifier137:IBitSet;
    FOLLOW_8_in_synpred4_Simplifier165:IBitSet;
    FOLLOW_poly_in_synpred4_Simplifier169:IBitSet;
    FOLLOW_poly_in_synpred4_Simplifier173:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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
        type ISimplifier_poly_return=interface(ITreeRuleReturnScope)
        ['{831C9C44-8135-4C0A-99F8-9620D1E0FDD2}']
        end;   
        type poly_return =class( TTreeRuleReturnScope , ISimplifier_poly_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "poly"
    // Simplifier.g:11:1: poly : ( ^( ''+'' a= INT b= INT ) -> INT[IntToStr($a.int+$b.int)] | ^( ''+'' ^( ''+'' a= INT p= poly ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^( ''+'' ^( ''+'' p= poly a= INT ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^( ''+'' p= poly q= poly ) -> {($p.tree as ICommonTree).toStringTree()=''0''}? $q -> {($q.tree as ICommonTree).toStringTree()=''0''}? $p -> ^( ''+'' $p $q) | ^( MULT INT poly ) -> {1=$INT.int}? poly -> ^( MULT INT poly ) | ^( ''^'' ID e= INT ) -> {1=$e.int}? ID -> {0=$e.int}? INT[''1''] -> ^( ''^'' ID INT ) | INT | ID );
    function poly():ISimplifier_poly_return{ITreeRuleReturnScope};
    // $ANTLR end poly

    // $ANTLR start "synpred1_Simplifier"
    function synpred1_Simplifier_fragment():Integer;
    // $ANTLR end synpred1_Simplifier

    // $ANTLR start "synpred2_Simplifier"
    function synpred2_Simplifier_fragment():Integer;
    // $ANTLR end synpred2_Simplifier

    // $ANTLR start "synpred3_Simplifier"
    function synpred3_Simplifier_fragment():Integer;
    // $ANTLR end synpred3_Simplifier

    // $ANTLR start "synpred4_Simplifier"
    function synpred4_Simplifier_fragment():Integer;
    // $ANTLR end synpred4_Simplifier

    // Delegated rules

    function synpred2_Simplifier():Boolean;function synpred1_Simplifier():Boolean;function synpred4_Simplifier():Boolean;function synpred3_Simplifier():Boolean;
  protected

     
          type TAntlrDFA1=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa1:IDFA;
        protected
          dfa1:IDFA;
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TSimplifier.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSimplifier.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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

procedure TSimplifier.InitBitsets;
begin
  FOLLOW_8_in_poly56 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_poly60 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_poly64 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_8_in_poly77 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_8_in_poly80 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_poly84 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly88 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_poly93 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_8_in_poly121 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_8_in_poly124 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_poly128 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_poly132 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_poly137 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_8_in_poly165 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_poly169 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly173 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_poly220 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_poly222 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly224 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_9_in_poly255 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_ID_in_poly257 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_poly261 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_poly306 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_poly311 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_8_in_synpred1_Simplifier56 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_synpred1_Simplifier60 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_synpred1_Simplifier64 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_8_in_synpred2_Simplifier77 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_8_in_synpred2_Simplifier80 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_synpred2_Simplifier84 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_synpred2_Simplifier88 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_synpred2_Simplifier93 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_8_in_synpred3_Simplifier121 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_8_in_synpred3_Simplifier124 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_synpred3_Simplifier128 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_synpred3_Simplifier132 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_synpred3_Simplifier137 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_8_in_synpred4_Simplifier165 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_synpred4_Simplifier169 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_synpred4_Simplifier173 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
    
end;

destructor TSimplifier.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSimplifier.GetGrammarFileName():String;
begin
  Result:='Simplifier.g'; 
end;




{
function TSimplifier.TSimplifier_poly_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "poly"
// Simplifier.g:11:1: poly : ( ^( ''+'' a= INT b= INT ) -> INT[IntToStr($a.int+$b.int)] | ^( ''+'' ^( ''+'' a= INT p= poly ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^( ''+'' ^( ''+'' p= poly a= INT ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^( ''+'' p= poly q= poly ) -> {($p.tree as ICommonTree).toStringTree()=''0''}? $q -> {($q.tree as ICommonTree).toStringTree()=''0''}? $p -> ^( ''+'' $p $q) | ^( MULT INT poly ) -> {1=$INT.int}? poly -> ^( MULT INT poly ) | ^( ''^'' ID e= INT ) -> {1=$e.int}? ID -> {0=$e.int}? INT[''1''] -> ^( ''^'' ID INT ) | INT | ID );
function TSimplifier.poly():ISimplifier_poly_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimplifier_poly_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  a:ICommonTree;
  b:ICommonTree;
  e:ICommonTree;
  char_literal1:ICommonTree;
  char_literal2:ICommonTree;
  char_literal3:ICommonTree;
  char_literal4:ICommonTree;
  char_literal5:ICommonTree;
  char_literal6:ICommonTree;
  MULT7:ICommonTree;
  INT8:ICommonTree;
  char_literal10:ICommonTree;
  ID11:ICommonTree;
  INT12:ICommonTree;
  ID13:ICommonTree;
  p:ISimplifier_poly_return{ITreeRuleReturnScope}; 

  q:ISimplifier_poly_return{ITreeRuleReturnScope}; 

  poly9:ISimplifier_poly_return{ITreeRuleReturnScope}; 


  a_tree:ICommonTree;
  b_tree:ICommonTree;
  e_tree:ICommonTree;
  char_literal1_tree:ICommonTree;
  char_literal2_tree:ICommonTree;
  char_literal3_tree:ICommonTree;
  char_literal4_tree:ICommonTree;
  char_literal5_tree:ICommonTree;
  char_literal6_tree:ICommonTree;
  MULT7_tree:ICommonTree;
  INT8_tree:ICommonTree;
  char_literal10_tree:ICommonTree;
  ID11_tree:ICommonTree;
  INT12_tree:ICommonTree;
  ID13_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('MULT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token MULT');
  _stream[SIndex('ID')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token ID');
  _stream[SIndex('9')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token 9');
  _stream[SIndex('8')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token 8');
  _stream[SIndex('poly')]:=TRewriteRuleSubtreeStream.Create(getTreeAdaptor,'rule poly');
  end;
begin
    initRule;
    retval := poly_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlock:Simplifier.g:16:5: ( ^( ''+'' a= INT b= INT ) -> INT[IntToStr($a.int+$b.int)] | ^( ''+'' ^( ''+'' a= INT p= poly ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^( ''+'' ^( ''+'' p= poly a= INT ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^( ''+'' p= poly q= poly ) -> {($p.tree as ICommonTree).toStringTree()=''0''}? $q -> {($q.tree as ICommonTree).toStringTree()=''0''}? $p -> ^( ''+'' $p $q) | ^( MULT INT poly ) -> {1=$INT.int}? poly -> ^( MULT INT poly ) | ^( ''^'' ID e= INT ) -> {1=$e.int}? ID -> {0=$e.int}? INT[''1''] -> ^( ''^'' ID INT ) | INT | ID )
        _alt[1]:=8;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The Simplifier attribute is inherited via the parser, lexer, ...
         *}
        _alt[1] := getDfa1.predict(input);
        case (_alt[1]) of 
             1 :
                begin
                // Simplifier.g:16:7: ^( ''+'' a= INT b= INT )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal1:=match(input,8,FOLLOW_8_in_poly56) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('8')].add(char_literal1);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                a:=match(input,INT,FOLLOW_INT_in_poly60) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(a);

                _last := ICommonTree(input.LT(1));
                b:=match(input,INT,FOLLOW_INT_in_poly64) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(b);


                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: INT
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                if ( state.backtracking=0 ) then begin
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 16:26: -> INT[IntToStr($a.int+$b.int)]
                begin
                    //-1
                    getTreeAdaptor.addChild(root[0], getTreeAdaptor.CreateWithToken(INT, IntToStr((IIF(Assigned(a), StrToInt(a.getText()),0))+(IIF(Assigned(b), StrToInt(b.getText()),0)))));

                end;

                retval.tree := root[0];end;
                end;
                end;
             2 :
                begin
                // Simplifier.g:18:4: ^( ''+'' ^( ''+'' a= INT p= poly ) b= INT )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal2:=match(input,8,FOLLOW_8_in_poly77) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('8')].add(char_literal2);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[2] := _last;
                _first_[2] := nil;
                root[2] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal3:=match(input,8,FOLLOW_8_in_poly80) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('8')].add(char_literal3);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                a:=match(input,INT,FOLLOW_INT_in_poly84) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(a);

                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly88);
                p:=poly();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then
                 _stream[SIndex('poly')].add(p.getTree());

                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[1], root[2]);_last := _save_last_[2];
                end;

                _last := ICommonTree(input.LT(1));
                b:=match(input,INT,FOLLOW_INT_in_poly93) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(b);


                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: p, INT, 8
                // token labels: 
                // rule labels: retval, p
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                if ( state.backtracking=0 ) then begin
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));
                _stream[SIndex('p')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule p',IIF(Assigned(p), p.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 19:8: -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] )
                begin
                    // Simplifier.g:19:11: ^( ''+'' $p INT[IntToStr($a.int+$b.int)] )
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('8')].nextNode(), root[1]));

                    getTreeAdaptor.addChild(root[1], _stream[SIndex('p')].nextTree());
                    //-1
                    getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, IntToStr((IIF(Assigned(a), StrToInt(a.getText()),0))+(IIF(Assigned(b), StrToInt(b.getText()),0)))));

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];end;
                end;
                end;
             3 :
                begin
                // Simplifier.g:21:4: ^( ''+'' ^( ''+'' p= poly a= INT ) b= INT )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal4:=match(input,8,FOLLOW_8_in_poly121) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('8')].add(char_literal4);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[2] := _last;
                _first_[2] := nil;
                root[2] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal5:=match(input,8,FOLLOW_8_in_poly124) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('8')].add(char_literal5);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly128);
                p:=poly();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then
                 _stream[SIndex('poly')].add(p.getTree());
                _last := ICommonTree(input.LT(1));
                a:=match(input,INT,FOLLOW_INT_in_poly132) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(a);


                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[1], root[2]);_last := _save_last_[2];
                end;

                _last := ICommonTree(input.LT(1));
                b:=match(input,INT,FOLLOW_INT_in_poly137) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(b);


                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: p, 8, INT
                // token labels: 
                // rule labels: retval, p
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                if ( state.backtracking=0 ) then begin
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));
                _stream[SIndex('p')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule p',IIF(Assigned(p), p.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 22:8: -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] )
                begin
                    // Simplifier.g:22:11: ^( ''+'' $p INT[IntToStr($a.int+$b.int)] )
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('8')].nextNode(), root[1]));

                    getTreeAdaptor.addChild(root[1], _stream[SIndex('p')].nextTree());
                    //-1
                    getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, IntToStr((IIF(Assigned(a), StrToInt(a.getText()),0))+(IIF(Assigned(b), StrToInt(b.getText()),0)))));

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];end;
                end;
                end;
             4 :
                begin
                // Simplifier.g:24:4: ^( ''+'' p= poly q= poly )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal6:=match(input,8,FOLLOW_8_in_poly165) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('8')].add(char_literal6);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly169);
                p:=poly();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then
                 _stream[SIndex('poly')].add(p.getTree());
                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly173);
                q:=poly();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then
                 _stream[SIndex('poly')].add(q.getTree());

                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: p, q, p, q, 8
                // token labels: 
                // rule labels: retval, q, p
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                if ( state.backtracking=0 ) then begin
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));
                _stream[SIndex('q')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule q',IIF(Assigned(q), q.gettree,nil));
                _stream[SIndex('p')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule p',IIF(Assigned(p), p.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 24:24: -> {($p.tree as ICommonTree).toStringTree()=''0''}? $q
                if (((IIF(Assigned(p), ICommonTree(p.tree),nil)) as ICommonTree).toStringTree()='0') then 
                begin
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('q')].nextTree());

                end
                else // 25:8: -> {($q.tree as ICommonTree).toStringTree()=''0''}? $p
                if (((IIF(Assigned(q), ICommonTree(q.tree),nil)) as ICommonTree).toStringTree()='0') then 
                begin
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('p')].nextTree());

                end
                else // 26:8: -> ^( ''+'' $p $q)
                begin
                    // Simplifier.g:26:11: ^( ''+'' $p $q)
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('8')].nextNode(), root[1]));

                    getTreeAdaptor.addChild(root[1], _stream[SIndex('p')].nextTree());
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('q')].nextTree());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];end;
                end;
                end;
             5 :
                begin
                // Simplifier.g:28:4: ^( MULT INT poly )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                MULT7:=match(input,MULT,FOLLOW_MULT_in_poly220) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('MULT')].add(MULT7);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                INT8:=match(input,INT,FOLLOW_INT_in_poly222) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(INT8);

                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly224);
                poly9:=poly();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then
                 _stream[SIndex('poly')].add(poly9.getTree());

                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: poly, INT, MULT, poly
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                if ( state.backtracking=0 ) then begin
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 28:21: -> {1=$INT.int}? poly
                if (1=(IIF(Assigned(INT8), StrToInt(INT8.getText()),0))) then 
                begin
                    //0
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('poly')].nextTree());

                end
                else // 29:8: -> ^( MULT INT poly )
                begin
                    // Simplifier.g:29:11: ^( MULT INT poly )
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('MULT')].nextNode(), root[1]));

                    //-4
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('INT')].nextNode());
                    //0
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('poly')].nextTree());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];end;
                end;
                end;
             6 :
                begin
                // Simplifier.g:31:4: ^( ''^'' ID e= INT )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal10:=match(input,9,FOLLOW_9_in_poly255) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('9')].add(char_literal10);



                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                _last := ICommonTree(input.LT(1));
                ID11:=match(input,ID,FOLLOW_ID_in_poly257) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('ID')].add(ID11);

                _last := ICommonTree(input.LT(1));
                e:=match(input,INT,FOLLOW_INT_in_poly261) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end; 
                if ( state.backtracking=0 ) then 
                _stream[SIndex('INT')].add(e);


                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: 9, INT, ID, INT, ID
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                if ( state.backtracking=0 ) then begin
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 31:21: -> {1=$e.int}? ID
                if (1=(IIF(Assigned(e), StrToInt(e.getText()),0))) then 
                begin
                    //-4
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('ID')].nextNode());

                end
                else // 32:8: -> {0=$e.int}? INT[''1'']
                if (0=(IIF(Assigned(e), StrToInt(e.getText()),0))) then 
                begin
                    //-1
                    getTreeAdaptor.addChild(root[0], getTreeAdaptor.CreateWithToken(INT, '1'));

                end
                else // 33:8: -> ^( ''^'' ID INT )
                begin
                    // Simplifier.g:33:11: ^( ''^'' ID INT )
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('9')].nextNode(), root[1]));

                    //-4
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('ID')].nextNode());
                    //-4
                    getTreeAdaptor.addChild(root[1], _stream[SIndex('INT')].nextNode());

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];end;
                end;
                end;
             7 :
                begin
                // Simplifier.g:35:4: INT
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                _last := ICommonTree(input.LT(1));
                INT12:=match(input,INT,FOLLOW_INT_in_poly306) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then begin
                INT12_tree := ICommonTree(adaptor.dupNode(INT12));

                adaptor.addChild(root[0], INT12_tree);
                end;

                if ( state.backtracking=0 ) then begin
                end;
                end;
                end;
             8 :
                begin
                // Simplifier.g:36:4: ID
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                _last := ICommonTree(input.LT(1));
                ID13:=match(input,ID,FOLLOW_ID_in_poly311) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval//poly_return(retval.getobject);;    Exit;
                end;
                if ( state.backtracking=0 ) then begin
                ID13_tree := ICommonTree(adaptor.dupNode(ID13));

                adaptor.addChild(root[0], ID13_tree);
                end;

                if ( state.backtracking=0 ) then begin
                end;
                end;
                end;

        end;
        if ( state.backtracking=0 ) then begin
            retval.tree := ICommonTree(getTreeAdaptor.rulePostProcessing(root[0]));
        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval//poly_return(retval.getobject);;
end;// $ANTLR start "synpred1_Simplifier"
function TSimplifier.synpred1_Simplifier_fragment():Integer;
var
  _alt:array [0..255] of Integer;
  a:ICommonTree;
  b:ICommonTree;

  a_tree:ICommonTree;
  b_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin   
    // ruleBlockSingleAlt:Simplifier.g:16:7: ( ^( ''+'' a= INT b= INT ) )
    // Simplifier.g:16:7: ^( ''+'' a= INT b= INT )
    begin
    match(input,8,FOLLOW_8_in_synpred1_Simplifier56); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    a:=match(input,INT,FOLLOW_INT_in_synpred1_Simplifier60) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;
    b:=match(input,INT,FOLLOW_INT_in_synpred1_Simplifier64) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, UP, nil); 
    if (state.failed) then
    begin
        Exit;
    end;

    end;
end;
// $ANTLR end synpred1_Simplifier// $ANTLR start "synpred2_Simplifier"
function TSimplifier.synpred2_Simplifier_fragment():Integer;
var
  _alt:array [0..255] of Integer;
  a:ICommonTree;
  b:ICommonTree;
  p:ISimplifier_poly_return{ITreeRuleReturnScope}; 


  a_tree:ICommonTree;
  b_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin   
    // ruleBlockSingleAlt:Simplifier.g:18:4: ( ^( ''+'' ^( ''+'' a= INT p= poly ) b= INT ) )
    // Simplifier.g:18:4: ^( ''+'' ^( ''+'' a= INT p= poly ) b= INT )
    begin
    match(input,8,FOLLOW_8_in_synpred2_Simplifier77); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    match(input,8,FOLLOW_8_in_synpred2_Simplifier80); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    a:=match(input,INT,FOLLOW_INT_in_synpred2_Simplifier84) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;
    pushFollow(FOLLOW_poly_in_synpred2_Simplifier88);
    p:=poly();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, UP, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    b:=match(input,INT,FOLLOW_INT_in_synpred2_Simplifier93) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, UP, nil); 
    if (state.failed) then
    begin
        Exit;
    end;

    end;
end;
// $ANTLR end synpred2_Simplifier// $ANTLR start "synpred3_Simplifier"
function TSimplifier.synpred3_Simplifier_fragment():Integer;
var
  _alt:array [0..255] of Integer;
  a:ICommonTree;
  b:ICommonTree;
  p:ISimplifier_poly_return{ITreeRuleReturnScope}; 


  a_tree:ICommonTree;
  b_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin   
    // ruleBlockSingleAlt:Simplifier.g:21:4: ( ^( ''+'' ^( ''+'' p= poly a= INT ) b= INT ) )
    // Simplifier.g:21:4: ^( ''+'' ^( ''+'' p= poly a= INT ) b= INT )
    begin
    match(input,8,FOLLOW_8_in_synpred3_Simplifier121); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    match(input,8,FOLLOW_8_in_synpred3_Simplifier124); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    pushFollow(FOLLOW_poly_in_synpred3_Simplifier128);
    p:=poly();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
        Exit;
    end;
    a:=match(input,INT,FOLLOW_INT_in_synpred3_Simplifier132) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, UP, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    b:=match(input,INT,FOLLOW_INT_in_synpred3_Simplifier137) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, UP, nil); 
    if (state.failed) then
    begin
        Exit;
    end;

    end;
end;
// $ANTLR end synpred3_Simplifier// $ANTLR start "synpred4_Simplifier"
function TSimplifier.synpred4_Simplifier_fragment():Integer;
var
  _alt:array [0..255] of Integer;
  p:ISimplifier_poly_return{ITreeRuleReturnScope}; 

  q:ISimplifier_poly_return{ITreeRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin   
    // ruleBlockSingleAlt:Simplifier.g:24:4: ( ^( ''+'' p= poly q= poly ) )
    // Simplifier.g:24:4: ^( ''+'' p= poly q= poly )
    begin
    match(input,8,FOLLOW_8_in_synpred4_Simplifier165); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    pushFollow(FOLLOW_poly_in_synpred4_Simplifier169);
    p:=poly();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
        Exit;
    end;
    pushFollow(FOLLOW_poly_in_synpred4_Simplifier173);
    q:=poly();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, UP, nil); 
    if (state.failed) then
    begin
        Exit;
    end;

    end;
end;
// $ANTLR end synpred4_Simplifier

function TSimplifier.synpred2_Simplifier():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred2_Simplifier_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TSimplifier.synpred1_Simplifier():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred1_Simplifier_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TSimplifier.synpred4_Simplifier():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred4_Simplifier_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TSimplifier.synpred3_Simplifier():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred3_Simplifier_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;



function TSimplifier.getDfa1:IDFA;
begin
  if not Assigned(dfa1) then
    dfa1:=TAntlrDFA1.Create(self);
  Result:=dfa1;  
end;

constructor TSimplifier.TAntlrDFA1.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=1;
  feot:=unpackEncodedString('\12\uffff');
  feof:=unpackEncodedString('\12\uffff');

  FMinc:=unpackEncodedString('\1\4\1\0\10\uffff');

  FMaxc:=unpackEncodedString('\1\11\1\0\10\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\5\1\6\1\7\1\10\1\1\1\2\1\3\1'+
    '\4');
  fspecial:=unpackEncodedString('\1\uffff\1\0\10\uffff');
  AddTransition(unpackEncodedString('\1\2\1\4\1\5\1\uffff\1\1\1\3'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TSimplifier.TAntlrDFA1.getDescription():string;
begin
  Result:='11:1: poly : ( ^( ''+'' a= INT b= INT ) -> INT[IntToStr($a.int+$b.int)] | ^( ''+'' ^'+
  '( ''+'' a= INT p= poly ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] ) | ^('+
  ' ''+'' ^( ''+'' p= poly a= INT ) b= INT ) -> ^( ''+'' $p INT[IntToStr($a.int+$b.int)] '+
  ') | ^( ''+'' p= poly q= poly ) -> {($p.tree as ICommonTree).toStringTree()=''0''}? $'+
  'q -> {($q.tree as ICommonTree).toStringTree()=''0''}? $p -> ^( ''+'' $p $q) | ^( MUL'+
  'T INT poly ) -> {1=$INT.int}? poly -> ^( MULT INT poly ) | ^( ''^'' ID e= INT ) ->'+
  ' {1=$e.int}? ID -> {0=$e.int}? INT[''1''] -> ^( ''^'' ID INT ) | INT | ID );';
end;


function TSimplifier.TAntlrDFA1.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITreeNodeStream;
begin
  input := _input as ITreeNodeStream;
  _s := s;
  with TSimplifier(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[1,1] := input.LA(1);

		         
		        _index['1_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred1_Simplifier()) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( (synpred2_Simplifier()) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( (synpred3_Simplifier()) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (synpred4_Simplifier()) ) then 
		        begin 
		          s := 9;
		        end
		        ;

		         
		        input.seek(_index['1_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 1, _s, input);
    error(nvae);
    raise nvae;
  end;
end;

 

procedure TSimplifier.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TSimplifier.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.