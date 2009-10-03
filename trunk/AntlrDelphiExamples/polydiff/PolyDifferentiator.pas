// $ANTLR 3.2 10 03, 2009 17:07:46 PolyDifferentiator.g 2009-10-03 17:15:07
unit PolyDifferentiator;

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
  TPolyDifferentiator = class(TAntlrTreeParser)
  public
    tokenNames:TStrings;
    FOLLOW_8_in_poly54:IBitSet;
    FOLLOW_poly_in_poly56:IBitSet;
    FOLLOW_poly_in_poly58:IBitSet;
    FOLLOW_MULT_in_poly65:IBitSet;
    FOLLOW_INT_in_poly67:IBitSet;
    FOLLOW_ID_in_poly69:IBitSet;
    FOLLOW_MULT_in_poly81:IBitSet;
    FOLLOW_INT_in_poly85:IBitSet;
    FOLLOW_9_in_poly88:IBitSet;
    FOLLOW_ID_in_poly90:IBitSet;
    FOLLOW_INT_in_poly94:IBitSet;
    FOLLOW_9_in_poly127:IBitSet;
    FOLLOW_ID_in_poly129:IBitSet;
    FOLLOW_INT_in_poly133:IBitSet;
    FOLLOW_INT_in_poly169:IBitSet;
    FOLLOW_ID_in_poly183:IBitSet;
    

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
        type IPolyDifferentiator_poly_return=interface(ITreeRuleReturnScope)
        ['{4ACDF6B2-30B8-4D93-8DFA-147F5AFB98CC}']
        end;   
        type poly_return =class( TTreeRuleReturnScope , IPolyDifferentiator_poly_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "poly"
    // PolyDifferentiator.g:10:1: poly : ( ^( ''+'' poly poly ) | ^( MULT INT ID ) -> INT | ^( MULT c= INT ^( ''^'' ID e= INT ) ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | ^( ''^'' ID e= INT ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | INT -> INT[''0''] | ID -> INT[''1''] );
    function poly():IPolyDifferentiator_poly_return{ITreeRuleReturnScope};
    // $ANTLR end poly

    // Delegated rules

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
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TPolyDifferentiator.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TPolyDifferentiator.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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

procedure TPolyDifferentiator.InitBitsets;
begin
  FOLLOW_8_in_poly54 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_poly_in_poly56 := TAntlrBitSet.CreateWithBits([$0000000000000370]);
  FOLLOW_poly_in_poly58 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_poly65 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_poly67 := TAntlrBitSet.CreateWithBits([$0000000000000040]);
  FOLLOW_ID_in_poly69 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_poly81 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_poly85 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_9_in_poly88 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_ID_in_poly90 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_poly94 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_9_in_poly127 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_ID_in_poly129 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_poly133 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_poly169 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_poly183 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TPolyDifferentiator.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TPolyDifferentiator.GetGrammarFileName():String;
begin
  Result:='PolyDifferentiator.g'; 
end;




{
function TPolyDifferentiator.TPolyDifferentiator_poly_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "poly"
// PolyDifferentiator.g:10:1: poly : ( ^( ''+'' poly poly ) | ^( MULT INT ID ) -> INT | ^( MULT c= INT ^( ''^'' ID e= INT ) ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | ^( ''^'' ID e= INT ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | INT -> INT[''0''] | ID -> INT[''1''] );
function TPolyDifferentiator.poly():IPolyDifferentiator_poly_return{ITreeRuleReturnScope};
var
 
c2, e2:string; 

  _alt:array [0..255] of Integer;
  retval:IPolyDifferentiator_poly_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  c:ICommonTree;
  e:ICommonTree;
  char_literal1:ICommonTree;
  MULT4:ICommonTree;
  INT5:ICommonTree;
  ID6:ICommonTree;
  MULT7:ICommonTree;
  char_literal8:ICommonTree;
  ID9:ICommonTree;
  char_literal10:ICommonTree;
  ID11:ICommonTree;
  INT12:ICommonTree;
  ID13:ICommonTree;
  poly2:IPolyDifferentiator_poly_return{ITreeRuleReturnScope}; 

  poly3:IPolyDifferentiator_poly_return{ITreeRuleReturnScope}; 


  c_tree:ICommonTree;
  e_tree:ICommonTree;
  char_literal1_tree:ICommonTree;
  MULT4_tree:ICommonTree;
  INT5_tree:ICommonTree;
  ID6_tree:ICommonTree;
  MULT7_tree:ICommonTree;
  char_literal8_tree:ICommonTree;
  ID9_tree:ICommonTree;
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
        // ruleBlock:PolyDifferentiator.g:15:1: ( ^( ''+'' poly poly ) | ^( MULT INT ID ) -> INT | ^( MULT c= INT ^( ''^'' ID e= INT ) ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | ^( ''^'' ID e= INT ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | INT -> INT[''0''] | ID -> INT[''1''] )
        _alt[1]:=6;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The PolyDifferentiator attribute is inherited via the parser, lexer, ...
         *}
        _alt[1] := getDfa1.predict(input);
        case (_alt[1]) of 
             1 :
                begin
                // PolyDifferentiator.g:15:3: ^( ''+'' poly poly )
                begin
                root[0] := ICommonTree(getTreeAdaptor.null());

                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal1:=match(input,8,FOLLOW_8_in_poly54) as ICommonTree; 

                char_literal1_tree := ICommonTree(adaptor.dupNode(char_literal1));

                root[1] := ICommonTree(adaptor.becomeRoot(char_literal1_tree, root[1]));



                match(input, DOWN, nil); 
                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly56);
                poly2:=poly();

                state._fsp:=state._fsp-1;

                adaptor.addChild(root[1], poly2.getTree());
                _last := ICommonTree(input.LT(1));
                pushFollow(FOLLOW_poly_in_poly58);
                poly3:=poly();

                state._fsp:=state._fsp-1;

                adaptor.addChild(root[1], poly3.getTree());

                match(input, UP, nil); adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;


                end;
                end;
             2 :
                begin
                // PolyDifferentiator.g:16:4: ^( MULT INT ID )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                MULT4:=match(input,MULT,FOLLOW_MULT_in_poly65) as ICommonTree; 
                 
                _stream[SIndex('MULT')].add(MULT4);



                match(input, DOWN, nil); 
                _last := ICommonTree(input.LT(1));
                INT5:=match(input,INT,FOLLOW_INT_in_poly67) as ICommonTree; 
                 
                _stream[SIndex('INT')].add(INT5);

                _last := ICommonTree(input.LT(1));
                ID6:=match(input,ID,FOLLOW_ID_in_poly69) as ICommonTree; 
                 
                _stream[SIndex('ID')].add(ID6);


                match(input, UP, nil); adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: INT
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 16:20: -> INT
                begin
                    //-4
                    getTreeAdaptor.addChild(root[0], _stream[SIndex('INT')].nextNode());

                end;

                retval.tree := root[0];
                end;
                end;
             3 :
                begin
                // PolyDifferentiator.g:17:4: ^( MULT c= INT ^( ''^'' ID e= INT ) )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                MULT7:=match(input,MULT,FOLLOW_MULT_in_poly81) as ICommonTree; 
                 
                _stream[SIndex('MULT')].add(MULT7);



                match(input, DOWN, nil); 
                _last := ICommonTree(input.LT(1));
                c:=match(input,INT,FOLLOW_INT_in_poly85) as ICommonTree; 
                 
                _stream[SIndex('INT')].add(c);

                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[2] := _last;
                _first_[2] := nil;
                root[2] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal8:=match(input,9,FOLLOW_9_in_poly88) as ICommonTree; 
                 
                _stream[SIndex('9')].add(char_literal8);



                match(input, DOWN, nil); 
                _last := ICommonTree(input.LT(1));
                ID9:=match(input,ID,FOLLOW_ID_in_poly90) as ICommonTree; 
                 
                _stream[SIndex('ID')].add(ID9);

                _last := ICommonTree(input.LT(1));
                e:=match(input,INT,FOLLOW_INT_in_poly94) as ICommonTree; 
                 
                _stream[SIndex('INT')].add(e);


                match(input, UP, nil); adaptor.addChild(root[1], root[2]);_last := _save_last_[2];
                end;


                match(input, UP, nil); adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;


                		 c2 := IntToStr((IIF(Assigned(c), StrToInt(c.getText()),0))*(IIF(Assigned(e), StrToInt(e.getText()),0)));
                		 e2 := IntToStr((IIF(Assigned(e), StrToInt(e.getText()),0))-1);
                		


                // AST REWRITE
                // elements: INT, 9, ID, MULT, INT
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 22:3: -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) )
                begin
                    // PolyDifferentiator.g:22:6: ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) )
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(MULT, '*'), root[1]));

                    //-1
                    getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, c2));
                    // PolyDifferentiator.g:22:26: ^( ''^'' ID INT[e2] )
                    begin
                    root[2] := ICommonTree(getTreeAdaptor.null());
                    root[2] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('9')].nextNode(), root[2]));

                    //-4
                    getTreeAdaptor.addChild(root[2], _stream[SIndex('ID')].nextNode());
                    //-1
                    getTreeAdaptor.addChild(root[2], getTreeAdaptor.CreateWithToken(INT, e2));

                    //-5
                    getTreeAdaptor.addChild(root[1], root[2]);
                    end;

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             4 :
                begin
                // PolyDifferentiator.g:23:4: ^( ''^'' ID e= INT )
                begin
                _last := ICommonTree(input.LT(1));
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                root[1] := ICommonTree(adaptor.null());_last := ICommonTree(input.LT(1));
                char_literal10:=match(input,9,FOLLOW_9_in_poly127) as ICommonTree; 
                 
                _stream[SIndex('9')].add(char_literal10);



                match(input, DOWN, nil); 
                _last := ICommonTree(input.LT(1));
                ID11:=match(input,ID,FOLLOW_ID_in_poly129) as ICommonTree; 
                 
                _stream[SIndex('ID')].add(ID11);

                _last := ICommonTree(input.LT(1));
                e:=match(input,INT,FOLLOW_INT_in_poly133) as ICommonTree; 
                 
                _stream[SIndex('INT')].add(e);


                match(input, UP, nil); adaptor.addChild(root[0], root[1]);_last := _save_last_[1];
                end;


                		c2 := IntToStr((IIF(Assigned(e), StrToInt(e.getText()),0)));
                		e2 := IntToStr((IIF(Assigned(e), StrToInt(e.getText()),0))-1);
                		


                // AST REWRITE
                // elements: INT, 9, INT, ID
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 28:8: -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) )
                begin
                    // PolyDifferentiator.g:28:11: ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) )
                    begin
                    root[1] := ICommonTree(getTreeAdaptor.null());
                    root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(MULT, '*'), root[1]));

                    //-1
                    getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, c2));
                    // PolyDifferentiator.g:28:31: ^( ''^'' ID INT[e2] )
                    begin
                    root[2] := ICommonTree(getTreeAdaptor.null());
                    root[2] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('9')].nextNode(), root[2]));

                    //-4
                    getTreeAdaptor.addChild(root[2], _stream[SIndex('ID')].nextNode());
                    //-1
                    getTreeAdaptor.addChild(root[2], getTreeAdaptor.CreateWithToken(INT, e2));

                    //-5
                    getTreeAdaptor.addChild(root[1], root[2]);
                    end;

                    //-5
                    getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := root[0];
                end;
                end;
             5 :
                begin
                // PolyDifferentiator.g:29:4: INT
                begin
                _last := ICommonTree(input.LT(1));
                INT12:=match(input,INT,FOLLOW_INT_in_poly169) as ICommonTree; 
                 
                _stream[SIndex('INT')].add(INT12);



                // AST REWRITE
                // elements: INT
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: 
                retval.tree := root[0];
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 29:12: -> INT[''0'']
                begin
                    //-1
                    getTreeAdaptor.addChild(root[0], getTreeAdaptor.CreateWithToken(INT, '0'));

                end;

                retval.tree := root[0];
                end;
                end;
             6 :
                begin
                // PolyDifferentiator.g:30:4: ID
                begin
                _last := ICommonTree(input.LT(1));
                ID13:=match(input,ID,FOLLOW_ID_in_poly183) as ICommonTree; 
                 
                _stream[SIndex('ID')].add(ID13);



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
                // 30:11: -> INT[''1'']
                begin
                    //-1
                    getTreeAdaptor.addChild(root[0], getTreeAdaptor.CreateWithToken(INT, '1'));

                end;

                retval.tree := root[0];
                end;
                end;

        end;
            retval.tree := ICommonTree(getTreeAdaptor.rulePostProcessing(root[0]));

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval//poly_return(retval.getobject);;
end;



function TPolyDifferentiator.getDfa1:IDFA;
begin
  if not Assigned(dfa1) then
    dfa1:=TAntlrDFA1.Create(self);
  Result:=dfa1;  
end;

constructor TPolyDifferentiator.TAntlrDFA1.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=1;
  feot:=unpackEncodedString('\12\uffff');
  feof:=unpackEncodedString('\12\uffff');

  FMinc:=unpackEncodedString('\1\4\1\uffff\1\2\3\uffff\1\5\1\6\2\uffff');

  FMaxc:=unpackEncodedString('\1\11\1\uffff\1\2\3\uffff\1\5\1\11\2\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\uffff\1\4\1\5\1\6\2\uffff'+
    '\1\2\1\3');
  fspecial:=unpackEncodedString('\12\uffff');
  AddTransition(unpackEncodedString('\1\2\1\4\1\5\1\uffff\1\1\1\3'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\7'));
  AddTransition(unpackEncodedString('\1\10\2\uffff\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TPolyDifferentiator.TAntlrDFA1.getDescription():string;
begin
  Result:='10:1: poly : ( ^( ''+'' poly poly ) | ^( MULT INT ID ) -> INT | ^( MULT c= INT ^( '+
  '''^'' ID e= INT ) ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | ^( ''^'' ID e= I'+
  'NT ) -> ^( MULT[''*''] INT[c2] ^( ''^'' ID INT[e2] ) ) | INT -> INT[''0''] | ID -> INT'+
  '[''1''] );';
end;



 

procedure TPolyDifferentiator.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TPolyDifferentiator.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.