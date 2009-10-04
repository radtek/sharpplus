// $ANTLR 3.2 10 04, 2009 23:19:32 Reduce.g 2009-10-04 23:19:41
unit Reduce;

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
  TReduce = class(TAntlrTreeRewriter)
  public
    tokenNames:TStrings;
    FOLLOW_xPlusx_in_bottomup121:IBitSet;
    FOLLOW_multBy2_in_bottomup130:IBitSet;
    FOLLOW_combineShifts_in_bottomup139:IBitSet;
    FOLLOW_12_in_xPlusx155:IBitSet;
    FOLLOW_INT_in_xPlusx159:IBitSet;
    FOLLOW_INT_in_xPlusx163:IBitSet;
    FOLLOW_MULT_in_multBy2197:IBitSet;
    FOLLOW_INT_in_multBy2201:IBitSet;
    FOLLOW_MULT_in_multBy2232:IBitSet;
    FOLLOW_INT_in_multBy2240:IBitSet;
    FOLLOW_SHIFT_in_combineShifts278:IBitSet;
    FOLLOW_SHIFT_in_combineShifts281:IBitSet;
    FOLLOW_INT_in_combineShifts289:IBitSet;
    FOLLOW_INT_in_combineShifts294:IBitSet;
    FOLLOW_MULT_in_synpred3_Reduce197:IBitSet;
    FOLLOW_INT_in_synpred3_Reduce201:IBitSet;
    

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
        type IReduce_bottomup_return=interface(ITreeRuleReturnScope)
        ['{2531F04F-493C-4E09-B1FA-ABA5517F0F18}']
        end;   
        type bottomup_return =class( TTreeRuleReturnScope , IReduce_bottomup_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "bottomup"
    // Reduce.g:12:1: bottomup : ( xPlusx | multBy2 | combineShifts );
    function bottomup():IReduce_bottomup_return{ITreeRuleReturnScope};
    // $ANTLR end bottomup

    public
        type IReduce_xPlusx_return=interface(ITreeRuleReturnScope)
        ['{C45172C2-8FAD-450D-84D5-BA09099B823F}']
        end;   
        type xPlusx_return =class( TTreeRuleReturnScope , IReduce_xPlusx_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "xPlusx"
    // Reduce.g:21:1: xPlusx : ^( ''+'' i= INT j= INT {...}?) -> ^( MULT[''*''] INT[''2''] $j) ;
    function xPlusx():IReduce_xPlusx_return{ITreeRuleReturnScope};
    // $ANTLR end xPlusx

    public
        type IReduce_multBy2_return=interface(ITreeRuleReturnScope)
        ['{F17101B2-0B9C-465C-BD7D-B4BB1440FFC6}']
        end;   
        type multBy2_return =class( TTreeRuleReturnScope , IReduce_multBy2_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "multBy2"
    // Reduce.g:26:1: multBy2 : ( ^( ''*'' x= INT {...}?y= . ) -> ^( SHIFT[''<<''] $y INT[''1''] ) | ^( ''*'' a= . b= INT {...}?) -> ^( SHIFT[''<<''] $a INT[''1''] ) );
    function multBy2():IReduce_multBy2_return{ITreeRuleReturnScope};
    // $ANTLR end multBy2

    public
        type IReduce_combineShifts_return=interface(ITreeRuleReturnScope)
        ['{4A0D1D39-2A00-473A-BC5A-AC5CB2EEAA32}']
        end;   
        type combineShifts_return =class( TTreeRuleReturnScope , IReduce_combineShifts_return)
        private
        public

        //tree:ICommonTree;
        //function getTree():IInterface;override;
        end;

    // $ANTLR start "combineShifts"
    // Reduce.g:33:1: combineShifts : ^( SHIFT ^( SHIFT e= . n= INT ) m= INT ) -> ^( SHIFT[''<<''] $e INT[IntToStr($n.int+$m.int)] ) ;
    function combineShifts():IReduce_combineShifts_return{ITreeRuleReturnScope};
    // $ANTLR end combineShifts

    // $ANTLR start "synpred3_Reduce"
    function synpred3_Reduce_fragment():Integer;
    // $ANTLR end synpred3_Reduce

    // Delegated rules

    function synpred3_Reduce():Boolean;
  protected
  end;

implementation
uses JclStacks,JclArrayLists,
    // delegates
    // delegators
 
    JclHashSets;

function TReduce.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TReduce.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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

procedure TReduce.InitBitsets;
begin
  FOLLOW_xPlusx_in_bottomup121 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_multBy2_in_bottomup130 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_combineShifts_in_bottomup139 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_12_in_xPlusx155 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_xPlusx159 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_INT_in_xPlusx163 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_multBy2197 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_multBy2201 := TAntlrBitSet.CreateWithBits([$000000000007FFF0]);
  FOLLOW_MULT_in_multBy2232 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_multBy2240 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_SHIFT_in_combineShifts278 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_SHIFT_in_combineShifts281 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_combineShifts289 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_INT_in_combineShifts294 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_MULT_in_synpred3_Reduce197 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_INT_in_synpred3_Reduce201 := TAntlrBitSet.CreateWithBits([$000000000007FFF0]);
    
end;

destructor TReduce.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TReduce.GetGrammarFileName():String;
begin
  Result:='Reduce.g'; 
end;




{
function TReduce.TReduce_bottomup_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "bottomup"
// Reduce.g:12:1: bottomup : ( xPlusx | multBy2 | combineShifts );
function TReduce.bottomup():IReduce_bottomup_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IReduce_bottomup_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  xPlusx1:IReduce_xPlusx_return{ITreeRuleReturnScope}; 

  multBy22:IReduce_multBy2_return{ITreeRuleReturnScope}; 

  combineShifts3:IReduce_combineShifts_return{ITreeRuleReturnScope}; 


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
        // ruleBlock:Reduce.g:13:5: ( xPlusx | multBy2 | combineShifts )
        _alt[1]:=3;

        case input.LA(1) of
         12: 
            begin
            _alt[1]:=1;
            end;
         MULT: 
            begin
            _alt[1]:=2;
            end;
         SHIFT: 
            begin
            _alt[1]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{bottomup_return(retval.getobject);});
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 1, 0, input);

        end;
        end;

        case (_alt[1]) of 
             1 :
                begin
                // Reduce.g:13:8: xPlusx
                begin
                _last := input.LT(1) as ICommonTree;
                pushFollow(FOLLOW_xPlusx_in_bottomup121);
                xPlusx1:=xPlusx();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval{bottomup_return(retval.getobject);};    Exit;
                end;
                if ( state.backtracking=1 ) then 
                 
                if ( _first_[0]=nil ) then _first_[0] := xPlusx1.tree as ICommonTree;

                if ( state.backtracking=1 ) then begin
                retval.tree := ICommonTree(_first_[0]);
                if Assigned(adaptor.getParent(retval.tree)) and adaptor.isNil( adaptor.getParent(retval.tree) ) then 
                    retval.tree := adaptor.getParent(retval.tree) as ICommonTree;end;
                end;
                end;
             2 :
                begin
                // Reduce.g:14:8: multBy2
                begin
                _last := input.LT(1) as ICommonTree;
                pushFollow(FOLLOW_multBy2_in_bottomup130);
                multBy22:=multBy2();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval{bottomup_return(retval.getobject);};    Exit;
                end;
                if ( state.backtracking=1 ) then 
                 
                if ( _first_[0]=nil ) then _first_[0] := multBy22.tree as ICommonTree;

                if ( state.backtracking=1 ) then begin
                retval.tree := ICommonTree(_first_[0]);
                if Assigned(adaptor.getParent(retval.tree)) and adaptor.isNil( adaptor.getParent(retval.tree) ) then 
                    retval.tree := adaptor.getParent(retval.tree) as ICommonTree;end;
                end;
                end;
             3 :
                begin
                // Reduce.g:15:8: combineShifts
                begin
                _last := input.LT(1) as ICommonTree;
                pushFollow(FOLLOW_combineShifts_in_bottomup139);
                combineShifts3:=combineShifts();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Result:=retval{bottomup_return(retval.getobject);};    Exit;
                end;
                if ( state.backtracking=1 ) then 
                 
                if ( _first_[0]=nil ) then _first_[0] := combineShifts3.tree as ICommonTree;

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
function TReduce.TReduce_xPlusx_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "xPlusx"
// Reduce.g:21:1: xPlusx : ^( ''+'' i= INT j= INT {...}?) -> ^( MULT[''*''] INT[''2''] $j) ;
function TReduce.xPlusx():IReduce_xPlusx_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IReduce_xPlusx_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  i:ICommonTree;
  j:ICommonTree;
  char_literal4:ICommonTree;

  i_tree:ICommonTree;
  j_tree:ICommonTree;
  char_literal4_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('12')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token 12');
  end;
begin
    initRule;
    retval := xPlusx_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlockSingleAlt:Reduce.g:21:7: ( ^( ''+'' i= INT j= INT {...}?) -> ^( MULT[''*''] INT[''2''] $j) )
        // Reduce.g:21:9: ^( ''+'' i= INT j= INT {...}?)
        begin
        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[1] := _last;
        _first_[1] := nil;
        _last := input.LT(1) as ICommonTree;
        char_literal4:=match(input,12,FOLLOW_12_in_xPlusx155) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{xPlusx_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('12')].add(char_literal4);


        if ( state.backtracking=1 ) then
        if ( _first_[0]=nil ) then _first_[0] := char_literal4;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{xPlusx_return(retval.getobject);};    Exit;
        end;
        _last := input.LT(1) as ICommonTree;
        i:=match(input,INT,FOLLOW_INT_in_xPlusx159) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{xPlusx_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(i);

        _last := input.LT(1) as ICommonTree;
        j:=match(input,INT,FOLLOW_INT_in_xPlusx163) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{xPlusx_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(j);

        if ( not ((Equal((IIF(Assigned(i), StrToInt(i.getText()),0)),(IIF(Assigned(j), StrToInt(j.getText()),0))))) ) then begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{xPlusx_return(retval.getobject);});
            end;
            raise EFailedPredicateException.Create(input, 'xPlusx', 'Equal($i.int,$j.int)');
        end;

        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{xPlusx_return(retval.getobject);};    Exit;
        end;_last := _save_last_[1];
        end;



        // AST REWRITE
        // elements: j, INT
        // token labels: j
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: 
        if ( state.backtracking=1 ) then begin
        retval.tree := root[0];
        _stream[SIndex('j')]:=TRewriteRuleNodeStream.CreateWithOne(getTreeAdaptor,'token j',j);
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 21:52: -> ^( MULT[''*''] INT[''2''] $j)
        begin
            // Reduce.g:21:55: ^( MULT[''*''] INT[''2''] $j)
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(MULT, '*'), root[1]));

              getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, '2'));
              getTreeAdaptor.addChild(root[1], _stream[SIndex('j')].nextNode());

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
    Result:=retval{xPlusx_return(retval.getobject);};
end;


{
function TReduce.TReduce_multBy2_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "multBy2"
// Reduce.g:26:1: multBy2 : ( ^( ''*'' x= INT {...}?y= . ) -> ^( SHIFT[''<<''] $y INT[''1''] ) | ^( ''*'' a= . b= INT {...}?) -> ^( SHIFT[''<<''] $a INT[''1''] ) );
function TReduce.multBy2():IReduce_multBy2_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IReduce_multBy2_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  x:ICommonTree;
  b:ICommonTree;
  char_literal5:ICommonTree;
  char_literal6:ICommonTree;
  y:ICommonTree;
  a:ICommonTree;

  x_tree:ICommonTree;
  b_tree:ICommonTree;
  char_literal5_tree:ICommonTree;
  char_literal6_tree:ICommonTree;
  y_tree:ICommonTree;
  a_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  _stream[SIndex('MULT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token MULT');
  end;
begin
    initRule;
    retval := multBy2_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlock:Reduce.g:27:5: ( ^( ''*'' x= INT {...}?y= . ) -> ^( SHIFT[''<<''] $y INT[''1''] ) | ^( ''*'' a= . b= INT {...}?) -> ^( SHIFT[''<<''] $a INT[''1''] ) )
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=MULT)) ) then 
        begin
          _LA[2,1] := input.LA(2);

          if ( ((_LA[2,1]=DOWN)) ) then 
          begin
            _LA[2,2] := input.LA(3);

            if ( ((_LA[2,2]=INT)) ) then 
            begin

              case input.LA(4) of
               INT: 
                  begin
                  _LA[2,5] := input.LA(5);

                  if ( ((_LA[2,5]=DOWN)) ) then 
                  begin
                    _alt[2]:=1;
                  end
                  else if ( ((_LA[2,5]=UP)) ) then 
                  begin
                    _LA[2,7] := input.LA(6);

                    if ( (synpred3_Reduce()) ) then 
                    begin
                      _alt[2]:=1;
                    end
                    else if ( (true) ) then 
                    begin
                      _alt[2]:=2;
                    end
                    else begin
                        if (state.backtracking>0) then 
                        begin 
                          state.failed:=true; 
                          Exit(retval{multBy2_return(retval.getobject);});
                        end;
                        //Todo:raise ENoViableAltException.CreateNoViable(''
                        raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                        , 2, 7, input);    

                    end;
                  end
                  else begin
                      if (state.backtracking>0) then 
                      begin 
                        state.failed:=true; 
                        Exit(retval{multBy2_return(retval.getobject);});
                      end;
                      //Todo:raise ENoViableAltException.CreateNoViable(''
                      raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                      , 2, 5, input);    

                  end;
                  end;
               MULT , 
               SHIFT , 
               VEC , 
               ID , 
               WS , 
               10 , 
               11 , 
               12 , 
               13 , 
               14 , 
               15 , 
               16 , 
               17 , 
               18: 
                  begin
                  _alt[2]:=1;
                  end;
               DOWN: 
                  begin
                  _alt[2]:=2;
                  end;
              else
              begin
                  if (state.backtracking>0) then 
                  begin 
                    state.failed:=true; 
                    Exit(retval{multBy2_return(retval.getobject);});
                  end;
                  //Todo:raise ENoViableAltException.CreateNoViable(''
                  raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                  , 2, 3, input);

              end;
              end;

            end
            else if ( (((_LA[2,2]>=MULT) and 
            ( _LA[2,2]<=ID)) or ((_LA[2,2]>=WS) and 
            ( _LA[2,2]<=18))) ) then 
            begin
              _alt[2]:=2;
            end
            else begin
                if (state.backtracking>0) then 
                begin 
                  state.failed:=true; 
                  Exit(retval{multBy2_return(retval.getobject);});
                end;
                //Todo:raise ENoViableAltException.CreateNoViable(''
                raise ENoViableAltException.CreateNoViable('ENoViableAltException'
                , 2, 2, input);    

            end;
          end
          else begin
              if (state.backtracking>0) then 
              begin 
                state.failed:=true; 
                Exit(retval{multBy2_return(retval.getobject);});
              end;
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 2, 1, input);    

          end;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{multBy2_return(retval.getobject);});
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 2, 0, input);    

        end;
        case (_alt[2]) of 
             1 :
                begin
                // Reduce.g:27:9: ^( ''*'' x= INT {...}?y= . )
                begin
                _last := input.LT(1) as ICommonTree;
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                _last := input.LT(1) as ICommonTree;
                char_literal5:=match(input,MULT,FOLLOW_MULT_in_multBy2197) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end; 
                if ( state.backtracking=1 ) then 
                _stream[SIndex('MULT')].add(char_literal5);


                if ( state.backtracking=1 ) then
                if ( _first_[0]=nil ) then _first_[0] := char_literal5;
                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end;
                _last := input.LT(1) as ICommonTree;
                x:=match(input,INT,FOLLOW_INT_in_multBy2201) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end; 
                if ( state.backtracking=1 ) then 
                _stream[SIndex('INT')].add(x);

                if ( not ((2=(IIF(Assigned(x), StrToInt(x.getText()),0)))) ) then begin
                    if (state.backtracking>0) then 
                    begin 
                      state.failed:=true; 
                      Exit(retval{multBy2_return(retval.getobject);});
                    end;
                    raise EFailedPredicateException.Create(input, 'multBy2', '2=$x.int');
                end;
                _last := input.LT(1) as ICommonTree;
                y:=ICommonTree(input.LT(1));
                matchAny(input); 
                if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end;
                 
                if ( state.backtracking=1 ) then
                if ( _first_[1]=nil ) then _first_[1] := y;

                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end;_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: INT, y
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: y
                if ( state.backtracking=1 ) then begin
                retval.tree := root[0];
                _stream[SIndex('y')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'wildcard y',y);
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 27:38: -> ^( SHIFT[''<<''] $y INT[''1''] )
                begin
                    // Reduce.g:27:41: ^( SHIFT[''<<''] $y INT[''1''] )
                    begin
                      root[1] := ICommonTree(getTreeAdaptor.null());
                      root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(SHIFT, '<<'), root[1]));

                      adaptor.addChild(root[1], _stream[SIndex('y')].nextTree());
                      getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, '1'));

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := adaptor.rulePostProcessing(root[0]) as ICommonTree;
                input.replaceChildren(adaptor.getParent(retval.start),
                                      adaptor.getChildIndex(retval.start),
                                      adaptor.getChildIndex(_last),
                                      retval.tree);end;
                end;
                end;
             2 :
                begin
                // Reduce.g:28:9: ^( ''*'' a= . b= INT {...}?)
                begin
                _last := input.LT(1) as ICommonTree;
                begin
                _save_last_[1] := _last;
                _first_[1] := nil;
                _last := input.LT(1) as ICommonTree;
                char_literal6:=match(input,MULT,FOLLOW_MULT_in_multBy2232) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end; 
                if ( state.backtracking=1 ) then 
                _stream[SIndex('MULT')].add(char_literal6);


                if ( state.backtracking=1 ) then
                if ( _first_[0]=nil ) then _first_[0] := char_literal6;
                match(input, DOWN, nil); if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end;
                _last := input.LT(1) as ICommonTree;
                a:=ICommonTree(input.LT(1));
                matchAny(input); 
                if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end;
                 
                if ( state.backtracking=1 ) then
                if ( _first_[1]=nil ) then _first_[1] := a;
                _last := input.LT(1) as ICommonTree;
                b:=match(input,INT,FOLLOW_INT_in_multBy2240) as ICommonTree; 
                if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end; 
                if ( state.backtracking=1 ) then 
                _stream[SIndex('INT')].add(b);

                if ( not ((2=(IIF(Assigned(b), StrToInt(b.getText()),0)))) ) then begin
                    if (state.backtracking>0) then 
                    begin 
                      state.failed:=true; 
                      Exit(retval{multBy2_return(retval.getobject);});
                    end;
                    raise EFailedPredicateException.Create(input, 'multBy2', '2=$b.int');
                end;

                match(input, UP, nil); if (state.failed) then
                begin
                  Result:=retval{multBy2_return(retval.getobject);};    Exit;
                end;_last := _save_last_[1];
                end;



                // AST REWRITE
                // elements: a, INT
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                // wildcard labels: a
                if ( state.backtracking=1 ) then begin
                retval.tree := root[0];
                _stream[SIndex('a')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'wildcard a',a);
                _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

                root[0] := ICommonTree(getTreeAdaptor.null());
                // 28:38: -> ^( SHIFT[''<<''] $a INT[''1''] )
                begin
                    // Reduce.g:28:41: ^( SHIFT[''<<''] $a INT[''1''] )
                    begin
                      root[1] := ICommonTree(getTreeAdaptor.null());
                      root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(SHIFT, '<<'), root[1]));

                      adaptor.addChild(root[1], _stream[SIndex('a')].nextTree());
                      getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, '1'));

                      getTreeAdaptor.addChild(root[0], root[1]);
                    end;

                end;

                retval.tree := adaptor.rulePostProcessing(root[0]) as ICommonTree;
                input.replaceChildren(adaptor.getParent(retval.start),
                                      adaptor.getChildIndex(retval.start),
                                      adaptor.getChildIndex(_last),
                                      retval.tree);end;
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
    Result:=retval{multBy2_return(retval.getobject);};
end;


{
function TReduce.TReduce_combineShifts_return.getTree():IInterface;//ttt
begin
  result:=tree;
end;
}
// $ANTLR start "combineShifts"
// Reduce.g:33:1: combineShifts : ^( SHIFT ^( SHIFT e= . n= INT ) m= INT ) -> ^( SHIFT[''<<''] $e INT[IntToStr($n.int+$m.int)] ) ;
function TReduce.combineShifts():IReduce_combineShifts_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IReduce_combineShifts_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  n:ICommonTree;
  m:ICommonTree;
  SHIFT7:ICommonTree;
  SHIFT8:ICommonTree;
  e:ICommonTree;

  n_tree:ICommonTree;
  m_tree:ICommonTree;
  SHIFT7_tree:ICommonTree;
  SHIFT8_tree:ICommonTree;
  e_tree:ICommonTree;
  procedure InitRule;
  begin
  _stream[SIndex('SHIFT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token SHIFT');
  _stream[SIndex('INT')]:=TRewriteRuleNodeStream.Create(getTreeAdaptor,'token INT');
  end;
begin
    initRule;
    retval := combineShifts_return.Create();
    retval.start := input.LT(1);

    root[0] := nil;

    _first_[0] := nil;
    _last := nil;

    try 
      try
        // ruleBlockSingleAlt:Reduce.g:34:5: ( ^( SHIFT ^( SHIFT e= . n= INT ) m= INT ) -> ^( SHIFT[''<<''] $e INT[IntToStr($n.int+$m.int)] ) )
        // Reduce.g:34:8: ^( SHIFT ^( SHIFT e= . n= INT ) m= INT )
        begin
        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[1] := _last;
        _first_[1] := nil;
        _last := input.LT(1) as ICommonTree;
        SHIFT7:=match(input,SHIFT,FOLLOW_SHIFT_in_combineShifts278) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('SHIFT')].add(SHIFT7);


        if ( state.backtracking=1 ) then
        if ( _first_[0]=nil ) then _first_[0] := SHIFT7;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end;
        _last := input.LT(1) as ICommonTree;
        begin
        _save_last_[2] := _last;
        _first_[2] := nil;
        _last := input.LT(1) as ICommonTree;
        SHIFT8:=match(input,SHIFT,FOLLOW_SHIFT_in_combineShifts281) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('SHIFT')].add(SHIFT8);


        if ( state.backtracking=1 ) then
        if ( _first_[1]=nil ) then _first_[1] := SHIFT8;
        match(input, DOWN, nil); if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end;
        _last := input.LT(1) as ICommonTree;
        e:=ICommonTree(input.LT(1));
        matchAny(input); 
        if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end;
         
        if ( state.backtracking=1 ) then
        if ( _first_[2]=nil ) then _first_[2] := e;
        _last := input.LT(1) as ICommonTree;
        n:=match(input,INT,FOLLOW_INT_in_combineShifts289) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(n);


        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end;_last := _save_last_[2];
        end;

        _last := input.LT(1) as ICommonTree;
        m:=match(input,INT,FOLLOW_INT_in_combineShifts294) as ICommonTree; 
        if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end; 
        if ( state.backtracking=1 ) then 
        _stream[SIndex('INT')].add(m);


        match(input, UP, nil); if (state.failed) then
        begin
          Result:=retval{combineShifts_return(retval.getobject);};    Exit;
        end;_last := _save_last_[1];
        end;



        // AST REWRITE
        // elements: SHIFT, INT, e
        // token labels: 
        // rule labels: retval
        // token list labels: 
        // rule list labels: 
        // wildcard labels: e
        if ( state.backtracking=1 ) then begin
        retval.tree := root[0];
        _stream[SIndex('e')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'wildcard e',e);
        _stream[SIndex('retval')]:=TRewriteRuleSubtreeStream.CreateWithOne(getTreeAdaptor,'rule retval',IIF(Assigned(retval), retval.gettree,nil));

        root[0] := ICommonTree(getTreeAdaptor.null());
        // 35:8: -> ^( SHIFT[''<<''] $e INT[IntToStr($n.int+$m.int)] )
        begin
            // Reduce.g:35:11: ^( SHIFT[''<<''] $e INT[IntToStr($n.int+$m.int)] )
            begin
              root[1] := ICommonTree(getTreeAdaptor.null());
              root[1] := ICommonTree(getTreeAdaptor.becomeRoot(getTreeAdaptor.CreateWithToken(SHIFT, '<<'), root[1]));

              adaptor.addChild(root[1], _stream[SIndex('e')].nextTree());
              getTreeAdaptor.addChild(root[1], getTreeAdaptor.CreateWithToken(INT, IntToStr((IIF(Assigned(n), StrToInt(n.getText()),0))+(IIF(Assigned(m), StrToInt(m.getText()),0)))));

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
    Result:=retval{combineShifts_return(retval.getobject);};
end;// $ANTLR start "synpred3_Reduce"
function TReduce.synpred3_Reduce_fragment():Integer;
var
  _alt:array [0..255] of Integer;
  x:ICommonTree;
  y:ICommonTree;

  x_tree:ICommonTree;
  y_tree:ICommonTree;
  procedure InitRule;
  begin
  end;
begin   
    // ruleBlockSingleAlt:Reduce.g:27:9: ( ^( ''*'' x= INT {...}?y= . ) )
    // Reduce.g:27:9: ^( ''*'' x= INT {...}?y= . )
    begin
    match(input,MULT,FOLLOW_MULT_in_synpred3_Reduce197); 
    if (state.failed) then
    begin
        Exit;
    end;

    match(input, DOWN, nil); 
    if (state.failed) then
    begin
        Exit;
    end;
    x:=match(input,INT,FOLLOW_INT_in_synpred3_Reduce201) as ICommonTree; 
    if (state.failed) then
    begin
        Exit;
    end;
    if ( not ((2=(IIF(Assigned(x), StrToInt(x.getText()),0)))) ) then begin
        if (state.backtracking>0) then 
        begin 
          state.failed:=true; 
          Exit(0);
        end;
        raise EFailedPredicateException.Create(input, 'synpred3_Reduce', '2=$x.int');
    end;
    y:=ICommonTree(input.LT(1));
    matchAny(input); 
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
// $ANTLR end synpred3_Reduce

function TReduce.synpred3_Reduce():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred3_Reduce_fragment(); // can never throw exception
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


 

procedure TReduce.setTreeAdaptor(AAdaptor:ITreeAdaptor);
begin
  adaptor:=nil;
  adaptor:=AAdaptor;
end; 

function TReduce.getTreeAdaptor():ITreeAdaptor;
begin
  if not Assigned(adaptor) then
    adaptor:=TAntlrCommonTreeAdaptor.CreateAdaptor;
  result:=adaptor;  
end;

//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.