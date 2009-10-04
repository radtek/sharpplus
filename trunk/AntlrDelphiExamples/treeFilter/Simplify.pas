// $ANTLR 3.2 10 04, 2009 23:19:32 Simplify.g 2009-10-04 23:19:41
unit Simplify;

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
  TSimplify = class(TAntlrTreeRewriter)
  public
    tokenNames:TStrings;
    FOLLOW_scalarVectorMult_in_topdown115:IBitSet;
    FOLLOW_zeroX_in_bottomup123:IBitSet;
    FOLLOW_xZero_in_bottomup127:IBitSet;
    FOLLOW_MULT_in_scalarVectorMult139:IBitSet;
    FOLLOW_INT_in_scalarVectorMult141:IBitSet;
    FOLLOW_VEC_in_scalarVectorMult144:IBitSet;
    FOLLOW_MULT_in_zeroX181:IBitSet;
    FOLLOW_INT_in_zeroX185:IBitSet;
    FOLLOW_INT_in_zeroX189:IBitSet;
    FOLLOW_MULT_in_xZero207:IBitSet;
    FOLLOW_INT_in_xZero211:IBitSet;
    FOLLOW_INT_in_xZero215:IBitSet;
    FOLLOW_zeroX_in_synpred1_Simplify123:IBitSet;
    

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
        type ISimplify_topdown_return=interface(ITreeRuleReturnScope)
        ['{899CEDF1-1660-45BB-A289-C3EBA48E6DE3}']
        end;   
        type topdown_return =class( TTreeRuleReturnScope , ISimplify_topdown_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "topdown"
    // Simplify.g:12:1: topdown : scalarVectorMult ;
    function topdown():ISimplify_topdown_return{ITreeRuleReturnScope};
    // $ANTLR end topdown

    public
        type ISimplify_bottomup_return=interface(ITreeRuleReturnScope)
        ['{945D9CA0-B276-4B81-B8C9-D1326BA654BC}']
        end;   
        type bottomup_return =class( TTreeRuleReturnScope , ISimplify_bottomup_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "bottomup"
    // Simplify.g:13:1: bottomup : ( zeroX | xZero );
    function bottomup():ISimplify_bottomup_return{ITreeRuleReturnScope};
    // $ANTLR end bottomup

    public
        type ISimplify_scalarVectorMult_return=interface(ITreeRuleReturnScope)
        ['{62668658-803E-4124-8262-AE91B4B0987E}']
        end;   
        type scalarVectorMult_return =class( TTreeRuleReturnScope , ISimplify_scalarVectorMult_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "scalarVectorMult"
    // Simplify.g:17:1: scalarVectorMult : ^( ''*'' INT ^( VEC (e+= . )+ ) ) -> ^( VEC ( ^( ''*'' INT $e) )+ ) ;
    function scalarVectorMult():ISimplify_scalarVectorMult_return{ITreeRuleReturnScope};
    // $ANTLR end scalarVectorMult

    public
        type ISimplify_zeroX_return=interface(ITreeRuleReturnScope)
        ['{601F4D60-5DF1-4A6A-AC79-B1ADA025535A}']
        end;   
        type zeroX_return =class( TTreeRuleReturnScope , ISimplify_zeroX_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "zeroX"
    // Simplify.g:21:1: zeroX : ^( ''*'' a= INT b= INT {...}?) -> $a;
    function zeroX():ISimplify_zeroX_return{ITreeRuleReturnScope};
    // $ANTLR end zeroX

    public
        type ISimplify_xZero_return=interface(ITreeRuleReturnScope)
        ['{8A8A3386-2D9F-45E7-ABB0-44644826EA70}']
        end;   
        type xZero_return =class( TTreeRuleReturnScope , ISimplify_xZero_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "xZero"
    // Simplify.g:22:1: xZero : ^( ''*'' a= INT b= INT {...}?) -> $b;
    function xZero():ISimplify_xZero_return{ITreeRuleReturnScope};
    // $ANTLR end xZero

    // $ANTLR start "synpred1_Simplify"
    function synpred1_Simplify_fragment():Integer;
    // $ANTLR end synpred1_Simplify

    // Delegated rules

    function synpred1_Simplify():Boolean;
  protected
  end;

implementation
uses JclStacks,JclArrayLists,
    // delegates
    // delegators
 
    JclHashSets;

function TSimplify.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSimplify.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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

procedure TSimplify.InitBitsets;
begin
  FOLLOW_scalarVectorMult_in_topdown115 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_zeroX_in_bottomup123 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_xZero_in_bottomup127 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_MULT_in_scalarVectorMult139 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_scalarVectorMult141 := TAntlrBitSet.CreateWithBits([$0000000000000040]);
  FOLLOW_VEC_in_scalarVectorMult144 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_MULT_in_zeroX181 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_zeroX185 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_INT_in_zeroX189 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_xZero207 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_xZero211 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_INT_in_xZero215 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_zeroX_in_synpred1_Simplify123 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TSimplify.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSimplify.GetGrammarFileName():String;
begin
  Result:='Simplify.g'; 
end;




{
function TSimplify.TSimplify_topdown_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "topdown"
// Simplify.g:12:1: topdown : scalarVectorMult ;
function TSimplify.topdown():ISimplify_topdown_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimplify_topdown_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  scalarVectorMult1:ISimplify_scalarVectorMult_return{ITreeRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := topdown_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlockSingleAlt:Simplify.g:12:9: ( scalarVectorMult )
        // Simplify.g:12:11: scalarVectorMult
        begin
        _last := input.LT(1) as ICommonTree;
        pushFollow(FOLLOW_scalarVectorMult_in_topdown115);
        scalarVectorMult1:=scalarVectorMult();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Result:=retval{topdown_return(retval.getobject);};    Exit;
        end;
        if ( state.backtracking=1 ) then 
         
        if ( _first_[0]=nil ) then _first_[0] := scalarVectorMult1.tree as ICommonTree;

        if ( state.backtracking=1 ) then begin
        retval.tree := ICommonTree(_first_[0]);
        if Assigned(adaptor.getParent(retval.tree)) and adaptor.isNil( adaptor.getParent(retval.tree) ) then 
            retval.tree := adaptor.getParent(retval.tree) as ICommonTree;end;
        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval{topdown_return(retval.getobject);};
end;


{
function TSimplify.TSimplify_bottomup_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "bottomup"
// Simplify.g:13:1: bottomup : ( zeroX | xZero );
function TSimplify.bottomup():ISimplify_bottomup_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimplify_bottomup_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  zeroX2:ISimplify_zeroX_return{ITreeRuleReturnScope}; 

  xZero3:ISimplify_xZero_return{ITreeRuleReturnScope}; 


  procedure InitRule;
  begin
  end;
begin
    retval := bottomup_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlock:Simplify.g:13:9: ( zeroX | xZero )
        _alt[1]:=2;
        _LA[1,0] := input.LA(1);

        if ( ((_LA[1,0]=MULT)) ) then 
        begin
          _LA[1,1] := input.LA(2);

          if ( ((_LA[1,1]=DOWN)) ) then 
          begin
            _LA[1,2] := input.LA(3);

            if ( ((_LA[1,2]=INT)) ) then 
            begin
              _LA[1,3] := input.LA(4);

              if ( ((_LA[1,3]=INT)) ) then 
              begin
                _LA[1,4] := input.LA(5);

                if ( ((_LA[1,4]=UP)) ) then 
                begin
                  _LA[1,5] := input.LA(6);

                  if ( (synpred1_Simplify()) ) then 
                  begin
                    _alt[1]:=1;
                  end
                  else if ( (true) ) then 
                  begin
                    _alt[1]:=2;
                  end
                  else begin
                      if (state.backtracking>0) then 
                      begin 
                        state.failed:=true; 
                        Exit(retval{bottomup_return(retval.getobject);});
                      end;
                      //Todo:raise ENoViableAltException.CreateNoViable(''
                      raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                      , 1, 5, input);    

                  end;
                end
                else begin
                    if (state.backtracking>0) then 
                    begin 
                      state.failed:=true; 
                      Exit(retval{bottomup_return(retval.getobject);});
                    end;
                    //Todo:raise ENoViableAltException.CreateNoViable(''
                    raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                    , 1, 4, input);    

                end;
              end
              else begin
                  if (state.backtracking>0) then 
                  begin 
                    state.failed:=true; 
                    Exit(retval{bottomup_return(retval.getobject);});
                  end;
                  //Todo:raise ENoViableAltException.CreateNoViable(''
                  raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                  , 1, 3, input);    

              end;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit(retval{bottomup_return(retval.getobject);});
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 1, 2, input);    

            end;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit(retval{bottomup_return(retval.getobject);});
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 1, 1, input);    

          end;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{bottomup_return(retval.getobject);});
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 1, 0, input);    

        end;
        case (_alt[1]) of 
             1 :
                begin
                // Simplify.g:13:11: zeroX
                begin
                _last := input.LT(1) as ICommonTree;
                pushFollow(FOLLOW_zeroX_in_bottomup123);
                zeroX2:=zeroX();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval{bottomup_return(retval.getobject);};    Exit;
                end;
                if ( state.backtracking=1 ) then 
                 
                if ( _first_[0]=nil ) then _first_[0] := zeroX2.tree as ICommonTree;

                if ( state.backtracking=1 ) then begin
                retval.tree := ICommonTree(_first_[0]);
                if Assigned(adaptor.getParent(retval.tree)) and adaptor.isNil( adaptor.getParent(retval.tree) ) then 
                    retval.tree := adaptor.getParent(retval.tree) as ICommonTree;end;
                end;
                end;
             2 :
                begin
                // Simplify.g:13:19: xZero
                begin
                _last := input.LT(1) as ICommonTree;
                pushFollow(FOLLOW_xZero_in_bottomup127);
                xZero3:=xZero();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval{bottomup_return(retval.getobject);};    Exit;
                end;
                if ( state.backtracking=1 ) then 
                 
                if ( _first_[0]=nil ) then _first_[0] := xZero3.tree as ICommonTree;

                if ( state.backtracking=1 ) then begin
                retval.tree := ICommonTree(_first_[0]);
                if Assigned(adaptor.getParent(retval.tree)) and adaptor.isNil( adaptor.getParent(retval.tree) ) then 
                    retval.tree := adaptor.getParent(retval.tree) as ICommonTree;end;
                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval{bottomup_return(retval.getobject);};
end;


{
function TSimplify.TSimplify_scalarVectorMult_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "scalarVectorMult"
// Simplify.g:17:1: scalarVectorMult : ^( ''*'' INT ^( VEC (e+= . )+ ) ) -> ^( VEC ( ^( ''*'' INT $e) )+ ) ;
function TSimplify.scalarVectorMult():ISimplify_scalarVectorMult_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimplify_scalarVectorMult_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  char_literal4:ICommonTree;
  INT5:ICommonTree;
  VEC6:ICommonTree;
  e:ICommonTree;
  list_e:IJclIntfList;

  char_literal4_tree:ICommonTree;
  INT5_tree:ICommonTree;
  VEC6_tree:ICommonTree;
  e_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('VEC')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token VEC');
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('MULT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token MULT');
  end;
begin
    initRule;
    retval := scalarVectorMult_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlockSingleAlt:Simplify.g:17:18: ( ^( ''*'' INT ^( VEC (e+= . )+ ) ) -> ^( VEC ( ^( ''*'' INT $e) )+ ) )
        // Simplify.g:17:20: ^( ''*'' INT ^( VEC (e+= . )+ ) )
        begin
        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[1] := _last;
        _first_[1] := nil;
        _last := input.LT(1) as ICommonTree;
        char_literal4:=match(input,MULT,FOLLOW_MULT_in_scalarVectorMult139) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('MULT')].add(char_literal4);


        if ( state.backtracking=1 ) then
        if ( _first_[0]=nil ) then _first_[0] := char_literal4;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end;
        _last := input.LT(1) as ICommonTree;
        INT5:=match(input,INT,FOLLOW_INT_in_scalarVectorMult141) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(INT5);

        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[2] := _last;
        _first_[2] := nil;
        _last := input.LT(1) as ICommonTree;
        VEC6:=match(input,VEC,FOLLOW_VEC_in_scalarVectorMult144) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('VEC')].add(VEC6);


        if ( state.backtracking=1 ) then
        if ( _first_[1]=nil ) then _first_[1] := VEC6;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end;
        // positiveClosureBlock:Simplify.g:17:36: (e+= . )+
        _cnt[2]:=0;
        repeat 
            _alt[2]:=2;
            //before decision
            _LA[2,0] := input.LA(1);

            if ( (((_LA[2,0]>=MULT) and 
            ( _LA[2,0]<=18))) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            //after decision
            case (_alt[2]) of 
        	 1 :
        	    begin
        	    // Simplify.g:17:37: e+= .
        	    begin
        	    _last := input.LT(1) as ICommonTree;
        	    e:=ICommonTree(input.LT(1));
        	    matchAny(input); 
        	    if (state.failed) then
        	    begin
        	      Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        	    end;
        	     
        	    if ( state.backtracking=1 ) then
        	    if ( _first_[2]=nil ) then _first_[2] := e;
        	    if (list_e=nil) then list_e:=TJclIntfArrayList.Create(16);
        	    list_e.add(e);


        	    if ( state.backtracking=1 ) then begin
        	    retval.tree := ICommonTree(_first_[0]);
        	    if Assigned(adaptor.getParent(retval.tree)) and adaptor.isNil( adaptor.getParent(retval.tree) ) then 
        	        retval.tree := adaptor.getParent(retval.tree) as ICommonTree;end;
        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[2] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit(retval{scalarVectorMult_return(retval.getobject);});
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(2, input);
                end;
            end;
            _cnt[2]:=_cnt[2]+1;
        until (false);


        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end;_last := _save_last_[2];
        end;


        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{scalarVectorMult_return(retval.getobject);};    Exit;
        end;_last := _save_last_[1];
        end;



        // AST REWRITE
        // elements: VEC, INT, MULT, e
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: e
        if ( state.backtracking=1 ) then begin
        retval.tree := root[0];
        _stream[SIndex('e')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'wildcard e',list_e);
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 17:46: -> ^( VEC ( ^( ''*'' INT $e) )+ )
        begin
            // Simplify.g:17:49: ^( VEC ( ^( ''*'' INT $e) )+ )
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('VEC')].nextNode(), root[1]));

              if ( not(_stream[SIndex('INT')].hasNext() or _stream[SIndex('MULT')].hasNext() or _stream[SIndex('e')].hasNext()) ) then begin
                  raise ERewriteEarlyExitException.Create('');
              end;
              while ( _stream[SIndex('INT')].hasNext() or _stream[SIndex('MULT')].hasNext() or _stream[SIndex('e')].hasNext() ) do
              begin
                  // Simplify.g:17:55: ^( ''*'' INT $e)
                  begin
                    root[2] := ICommonTree(getTreeAdaptor.null());
                    root[2] := ICommonTree(getTreeAdaptor.becomeRoot(_stream[SIndex('MULT')].nextNode(), root[2]));

                    getTreeAdaptor.addChild(root[2], _stream[SIndex('INT')].nextNode());
                    getTreeAdaptor.addChild(root[2], _stream[SIndex('e')].nextTree());

                    getTreeAdaptor.addChild(root[1], root[2]);
                  end;

              end;
              _stream[SIndex('INT')].reset();
              _stream[SIndex('MULT')].reset();
              _stream[SIndex('e')].reset();

              getTreeAdaptor.addChild(root[0], root[1]);
            end;

        end;

        retval.tree := adaptor.rulePostProcessing(root[0]) as ICommonTree;
        input.replaceChildren(adaptor.getParent(retval.start),
                              adaptor.getChildIndex(retval.start),
                              adaptor.getChildIndex(_last),
                              retval.tree);end;
        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval{scalarVectorMult_return(retval.getobject);};
end;


{
function TSimplify.TSimplify_zeroX_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "zeroX"
// Simplify.g:21:1: zeroX : ^( ''*'' a= INT b= INT {...}?) -> $a;
function TSimplify.zeroX():ISimplify_zeroX_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimplify_zeroX_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  a:ICommonTree;
  b:ICommonTree;
  char_literal7:ICommonTree;

  a_tree:ICommonTree;
  b_tree:ICommonTree;
  char_literal7_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('MULT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token MULT');
  end;
begin
    initRule;
    retval := zeroX_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlockSingleAlt:Simplify.g:21:7: ( ^( ''*'' a= INT b= INT {...}?) -> $a)
        // Simplify.g:21:9: ^( ''*'' a= INT b= INT {...}?)
        begin
        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[1] := _last;
        _first_[1] := nil;
        _last := input.LT(1) as ICommonTree;
        char_literal7:=match(input,MULT,FOLLOW_MULT_in_zeroX181) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{zeroX_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('MULT')].add(char_literal7);


        if ( state.backtracking=1 ) then
        if ( _first_[0]=nil ) then _first_[0] := char_literal7;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{zeroX_return(retval.getobject);};    Exit;
        end;
        _last := input.LT(1) as ICommonTree;
        a:=match(input,INT,FOLLOW_INT_in_zeroX185) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{zeroX_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(a);

        _last := input.LT(1) as ICommonTree;
        b:=match(input,INT,FOLLOW_INT_in_zeroX189) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{zeroX_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(b);

        if ( not ((0=(IIF(Assigned(a), StrToInt(a.getText()),0)))) ) then begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{zeroX_return(retval.getobject);});
            end;
            raise EFailedPredicateException.Create(input, 'zeroX', '0=$a.int');
        end;

        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{zeroX_return(retval.getobject);};    Exit;
        end;_last := _save_last_[1];
        end;



        // AST REWRITE
        // elements: a
        // token labels: a
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        if ( state.backtracking=1 ) then begin
        retval.tree := root[0];
        _stream[SIndex('a')]:=TRewriteRuleNodeStream.CreateWithOne(getTreeAdaptor,'token a',a);
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 21:40: -> $a
        begin
            getTreeAdaptor.addChild(root[0], _stream[SIndex('a')].nextNode());

        end;

        retval.tree := adaptor.rulePostProcessing(root[0]) as ICommonTree;
        input.replaceChildren(adaptor.getParent(retval.start),
                              adaptor.getChildIndex(retval.start),
                              adaptor.getChildIndex(_last),
                              retval.tree);end;
        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval{zeroX_return(retval.getobject);};
end;


{
function TSimplify.TSimplify_xZero_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "xZero"
// Simplify.g:22:1: xZero : ^( ''*'' a= INT b= INT {...}?) -> $b;
function TSimplify.xZero():ISimplify_xZero_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ISimplify_xZero_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  a:ICommonTree;
  b:ICommonTree;
  char_literal8:ICommonTree;

  a_tree:ICommonTree;
  b_tree:ICommonTree;
  char_literal8_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('MULT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token MULT');
  end;
begin
    initRule;
    retval := xZero_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlockSingleAlt:Simplify.g:22:7: ( ^( ''*'' a= INT b= INT {...}?) -> $b)
        // Simplify.g:22:9: ^( ''*'' a= INT b= INT {...}?)
        begin
        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[1] := _last;
        _first_[1] := nil;
        _last := input.LT(1) as ICommonTree;
        char_literal8:=match(input,MULT,FOLLOW_MULT_in_xZero207) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{xZero_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('MULT')].add(char_literal8);


        if ( state.backtracking=1 ) then
        if ( _first_[0]=nil ) then _first_[0] := char_literal8;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{xZero_return(retval.getobject);};    Exit;
        end;
        _last := input.LT(1) as ICommonTree;
        a:=match(input,INT,FOLLOW_INT_in_xZero211) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{xZero_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(a);

        _last := input.LT(1) as ICommonTree;
        b:=match(input,INT,FOLLOW_INT_in_xZero215) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{xZero_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(b);

        if ( not ((0=(IIF(Assigned(b), StrToInt(b.getText()),0)))) ) then begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{xZero_return(retval.getobject);});
            end;
            raise EFailedPredicateException.Create(input, 'xZero', '0=$b.int');
        end;

        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{xZero_return(retval.getobject);};    Exit;
        end;_last := _save_last_[1];
        end;



        // AST REWRITE
        // elements: b
        // token labels: b
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        if ( state.backtracking=1 ) then begin
        retval.tree := root[0];
        _stream[SIndex('b')]:=TRewriteRuleNodeStream.CreateWithOne(getTreeAdaptor,'token b',b);
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 22:40: -> $b
        begin
            getTreeAdaptor.addChild(root[0], _stream[SIndex('b')].nextNode());

        end;

        retval.tree := adaptor.rulePostProcessing(root[0]) as ICommonTree;
        input.replaceChildren(adaptor.getParent(retval.start),
                              adaptor.getChildIndex(retval.start),
                              adaptor.getChildIndex(_last),
                              retval.tree);end;
        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval{xZero_return(retval.getobject);};
end;// $ANTLR start "synpred1_Simplify"
function TSimplify.synpred1_Simplify_fragment():Integer;
var
  _alt:array [0..255] of Integer;
  procedure InitRule;
  begin
  end;
begin   
    // ruleBlockSingleAlt:Simplify.g:13:11: ( zeroX )
    // Simplify.g:13:11: zeroX
    begin
    pushFollow(FOLLOW_zeroX_in_synpred1_Simplify123);
    zeroX();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
        Exit;
    end;

    end;
end;
// $ANTLR end synpred1_Simplify

function TSimplify.synpred1_Simplify():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred1_Simplify_fragment(); // can never throw exception
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


 

procedure TSimplify.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TSimplify.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.