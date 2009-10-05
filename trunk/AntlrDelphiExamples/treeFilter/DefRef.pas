// $ANTLR 3.2 10 04, 2009 23:19:32 DefRef.g 2009-10-05 22:10:28
unit DefRef;

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
    const T__16=16;
    const EXPR=10;
    const WS=14;
    const T__18=18;
    const T__17=17;
    const ELIST=9;
    const SL_COMMENT=15;
    const CALL=8;              
type
  TDefRef = class(TAntlrTreeFilter)
  public
    tokenNames:TStrings;
    FOLLOW_enterBlock_in_topdown63:IBitSet;
    FOLLOW_enterMethod_in_topdown73:IBitSet;
    FOLLOW_varDeclaration_in_topdown83:IBitSet;
    FOLLOW_exitBlock_in_bottomup102:IBitSet;
    FOLLOW_exitMethod_in_bottomup112:IBitSet;
    FOLLOW_assignment_in_bottomup122:IBitSet;
    FOLLOW_idref_in_bottomup132:IBitSet;
    FOLLOW_T_BLOCK_in_enterBlock154:IBitSet;
    FOLLOW_T_BLOCK_in_exitBlock173:IBitSet;
    FOLLOW_METHOD_DECL_in_enterMethod196:IBitSet;
    FOLLOW_typ_in_enterMethod198:IBitSet;
    FOLLOW_ID_in_enterMethod200:IBitSet;
    FOLLOW_METHOD_DECL_in_exitMethod233:IBitSet;
    FOLLOW_set_in_varDeclaration258:IBitSet;
    FOLLOW_typ_in_varDeclaration264:IBitSet;
    FOLLOW_ID_in_varDeclaration266:IBitSet;
    FOLLOW_set_in_typ0:IBitSet;
    FOLLOW_24_in_assignment346:IBitSet;
    FOLLOW_ID_in_assignment348:IBitSet;
    FOLLOW_ID_in_idref383:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public




    // $ANTLR start "topdown"
    // DefRef.g:13:1: topdown : ( enterBlock | enterMethod | varDeclaration );
    function topdown():Integer;
    // $ANTLR end topdown


    // $ANTLR start "bottomup"
    // DefRef.g:19:1: bottomup : ( exitBlock | exitMethod | assignment | idref );
    function bottomup():Integer;
    // $ANTLR end bottomup


    // $ANTLR start "enterBlock"
    // DefRef.g:29:1: enterBlock : T_BLOCK ;
    function enterBlock():Integer;
    // $ANTLR end enterBlock


    // $ANTLR start "exitBlock"
    // DefRef.g:32:1: exitBlock : T_BLOCK ;
    function exitBlock():Integer;
    // $ANTLR end exitBlock


    // $ANTLR start "enterMethod"
    // DefRef.g:38:1: enterMethod : ^( METHOD_DECL typ ID ( . )* ) ;
    function enterMethod():Integer;
    // $ANTLR end enterMethod


    // $ANTLR start "exitMethod"
    // DefRef.g:45:1: exitMethod : METHOD_DECL ;
    function exitMethod():Integer;
    // $ANTLR end exitMethod


    // $ANTLR start "varDeclaration"
    // DefRef.g:53:1: varDeclaration : ^( ( ARG_DECL | VAR_DECL ) typ ID ( . )? ) ;
    function varDeclaration():Integer;
    // $ANTLR end varDeclaration


    // $ANTLR start "typ"
    // DefRef.g:61:1: typ : ( ''float'' | ''int'' | ''void'' );
    function typ():Integer;
    // $ANTLR end typ


    // $ANTLR start "assignment"
    // DefRef.g:70:1: assignment : ^( ''='' ID . ) ;
    function assignment():Integer;
    // $ANTLR end assignment

    public
        type IDefRef_idref_return=interface(ITreeRuleReturnScope)
        ['{43E72875-F190-4318-A713-85D44511CE8F}']
        end;   
        type idref_return =class( TTreeRuleReturnScope , IDefRef_idref_return)
        private
        public

        end;

    // $ANTLR start "idref"
    // DefRef.g:78:1: idref : {...}? ID ;
    function idref():IDefRef_idref_return{ITreeRuleReturnScope};
    // $ANTLR end idref

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,JclArrayLists,
    // delegates
    // delegators
 
    JclHashSets;

function TDefRef.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TDefRef.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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

procedure TDefRef.InitBitsets;
begin
  FOLLOW_enterBlock_in_topdown63 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enterMethod_in_topdown73 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_varDeclaration_in_topdown83 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_exitBlock_in_bottomup102 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_exitMethod_in_bottomup112 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_assignment_in_bottomup122 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_idref_in_bottomup132 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_T_BLOCK_in_enterBlock154 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_T_BLOCK_in_exitBlock173 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_METHOD_DECL_in_enterMethod196 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_typ_in_enterMethod198 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_ID_in_enterMethod200 := TAntlrBitSet.CreateWithBits([$000000000FFFFFF8]);
  FOLLOW_METHOD_DECL_in_exitMethod233 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_varDeclaration258 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_typ_in_varDeclaration264 := TAntlrBitSet.CreateWithBits([$0000000000000800]);
  FOLLOW_ID_in_varDeclaration266 := TAntlrBitSet.CreateWithBits([$000000000FFFFFF8]);
  FOLLOW_set_in_typ0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_24_in_assignment346 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_ID_in_assignment348 := TAntlrBitSet.CreateWithBits([$000000000FFFFFF0]);
  FOLLOW_ID_in_idref383 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TDefRef.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TDefRef.GetGrammarFileName():String;
begin
  Result:='DefRef.g'; 
end;

// $ANTLR start "topdown"
// DefRef.g:13:1: topdown : ( enterBlock | enterMethod | varDeclaration );
function TDefRef.topdown():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    try 
      try
        // ruleBlock:DefRef.g:14:5: ( enterBlock | enterMethod | varDeclaration )
        _alt[1]:=3;

        case input.LA(1) of
         T_BLOCK: 
            begin
            _alt[1]:=1;
            end;
         METHOD_DECL: 
            begin
            _alt[1]:=2;
            end;
         ARG_DECL , 
         VAR_DECL: 
            begin
            _alt[1]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 1, 0, input);

        end;
        end;

        case (_alt[1]) of 
             1 :
                begin
                // DefRef.g:14:9: enterBlock
                begin
                pushFollow(FOLLOW_enterBlock_in_topdown63);
                enterBlock();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // DefRef.g:15:9: enterMethod
                begin
                pushFollow(FOLLOW_enterMethod_in_topdown73);
                enterMethod();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // DefRef.g:16:9: varDeclaration
                begin
                pushFollow(FOLLOW_varDeclaration_in_topdown83);
                varDeclaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

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
end;// $ANTLR start "bottomup"
// DefRef.g:19:1: bottomup : ( exitBlock | exitMethod | assignment | idref );
function TDefRef.bottomup():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    try 
      try
        // ruleBlock:DefRef.g:20:5: ( exitBlock | exitMethod | assignment | idref )
        _alt[2]:=4;

        case input.LA(1) of
         T_BLOCK: 
            begin
            _alt[2]:=1;
            end;
         METHOD_DECL: 
            begin
            _alt[2]:=2;
            end;
         24: 
            begin
            _alt[2]:=3;
            end;
         ID: 
            begin
            _alt[2]:=4;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 2, 0, input);

        end;
        end;

        case (_alt[2]) of 
             1 :
                begin
                // DefRef.g:20:9: exitBlock
                begin
                pushFollow(FOLLOW_exitBlock_in_bottomup102);
                exitBlock();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // DefRef.g:21:9: exitMethod
                begin
                pushFollow(FOLLOW_exitMethod_in_bottomup112);
                exitMethod();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // DefRef.g:22:9: assignment
                begin
                pushFollow(FOLLOW_assignment_in_bottomup122);
                assignment();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // DefRef.g:23:9: idref
                begin
                pushFollow(FOLLOW_idref_in_bottomup132);
                idref();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

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
end;// $ANTLR start "enterBlock"
// DefRef.g:29:1: enterBlock : T_BLOCK ;
function TDefRef.enterBlock():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:30:5: ( T_BLOCK )
        // DefRef.g:30:9: T_BLOCK
        begin
        match(input,T_BLOCK,FOLLOW_T_BLOCK_in_enterBlock154); 
        if (state.failed) then
        begin
          Exit;
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
end;// $ANTLR start "exitBlock"
// DefRef.g:32:1: exitBlock : T_BLOCK ;
function TDefRef.exitBlock():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:33:5: ( T_BLOCK )
        // DefRef.g:33:9: T_BLOCK
        begin
        match(input,T_BLOCK,FOLLOW_T_BLOCK_in_exitBlock173); 
        if (state.failed) then
        begin
          Exit;
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
end;// $ANTLR start "enterMethod"
// DefRef.g:38:1: enterMethod : ^( METHOD_DECL typ ID ( . )* ) ;
function TDefRef.enterMethod():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID1:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:39:5: ( ^( METHOD_DECL typ ID ( . )* ) )
        // DefRef.g:39:9: ^( METHOD_DECL typ ID ( . )* )
        begin
        match(input,METHOD_DECL,FOLLOW_METHOD_DECL_in_enterMethod196); 
        if (state.failed) then
        begin
          Exit;
        end;

        match(input, DOWN, nil); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_typ_in_enterMethod198);
        typ();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        ID1:=match(input,ID,FOLLOW_ID_in_enterMethod200) as ICommonTree; 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:DefRef.g:39:30: ( . )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( (((_LA[3,0]>=METHOD_DECL) and 
            ( _LA[3,0]<=27))) ) then 
            begin
              _alt[3]:=1;
            end
            else if ( ((_LA[3,0]=UP)) ) then 
            begin
              _alt[3]:=2;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // DefRef.g:39:30: .
        	    begin
        	    matchAny(input); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        match(input, UP, nil); 
        if (state.failed) then
        begin
          Exit;
        end;
        if ( state.backtracking=1 ) then 
        begin

                  Writeln('line '+IntToStr(ID1.getLine())+': def method '+
                                     (IIF(Assigned(ID1), ID1.getText(), '')));
                  
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
end;// $ANTLR start "exitMethod"
// DefRef.g:45:1: exitMethod : METHOD_DECL ;
function TDefRef.exitMethod():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:46:5: ( METHOD_DECL )
        // DefRef.g:46:9: METHOD_DECL
        begin
        match(input,METHOD_DECL,FOLLOW_METHOD_DECL_in_exitMethod233); 
        if (state.failed) then
        begin
          Exit;
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
end;// $ANTLR start "varDeclaration"
// DefRef.g:53:1: varDeclaration : ^( ( ARG_DECL | VAR_DECL ) typ ID ( . )? ) ;
function TDefRef.varDeclaration():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID2:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:54:5: ( ^( ( ARG_DECL | VAR_DECL ) typ ID ( . )? ) )
        // DefRef.g:54:9: ^( ( ARG_DECL | VAR_DECL ) typ ID ( . )? )
        begin
        if ( (input.LA(1)=ARG_DECL) or (input.LA(1)=VAR_DECL) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        match(input, DOWN, nil); 
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_typ_in_varDeclaration264);
        typ();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        ID2:=match(input,ID,FOLLOW_ID_in_varDeclaration266) as ICommonTree; 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:DefRef.g:54:38: ( . )?
        _alt[4]:=2;
        _LA[4,0] := input.LA(1);

        if ( (((_LA[4,0]>=METHOD_DECL) and 
        ( _LA[4,0]<=27))) ) then 
        begin
          _alt[4]:=1;
        end
        ;
        case (_alt[4]) of
             1 :
                begin
                // DefRef.g:54:38: .
                begin
                matchAny(input); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        match(input, UP, nil); 
        if (state.failed) then
        begin
          Exit;
        end;
        if ( state.backtracking=1 ) then 
        begin

                  Writeln('line '+IntToStr(ID2.getLine())+': def '+(IIF(Assigned(ID2), ID2.getText(), '')));
                  
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
end;// $ANTLR start "typ"
// DefRef.g:61:1: typ : ( ''float'' | ''int'' | ''void'' );
function TDefRef.typ():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:63:5: ( ''float'' | ''int'' | ''void'' )
        // DefRef.g:
        begin
        if ( ((input.LA(1)>=19) and (input.LA(1)<=21)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
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
end;// $ANTLR start "assignment"
// DefRef.g:70:1: assignment : ^( ''='' ID . ) ;
function TDefRef.assignment():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

  ID3:ICommonTree;

begin
    try 
      try
        // ruleBlockSingleAlt:DefRef.g:71:5: ( ^( ''='' ID . ) )
        // DefRef.g:71:9: ^( ''='' ID . )
        begin
        match(input,24,FOLLOW_24_in_assignment346); 
        if (state.failed) then
        begin
          Exit;
        end;

        match(input, DOWN, nil); 
        if (state.failed) then
        begin
          Exit;
        end;
        ID3:=match(input,ID,FOLLOW_ID_in_assignment348) as ICommonTree; 
        if (state.failed) then
        begin
          Exit;
        end;
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
        if ( state.backtracking=1 ) then 
        begin

                  writeln('line '+IntToStr(ID3.getLine()));
                  
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
end;

// $ANTLR start "idref"
// DefRef.g:78:1: idref : {...}? ID ;
function TDefRef.idref():IDefRef_idref_return{ITreeRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:IDefRef_idref_return{ITreeRuleReturnScope};
  root:array [0..255] of ICommonTree;

  _first_:array [0..255] of ICommonTree;

  _save_last_:array [0..255] of ICommonTree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ICommonTree;

begin
    retval := idref_return.Create();
    retval.start := input.LT(1);

    try 
      try
        // ruleBlockSingleAlt:DefRef.g:79:5: ({...}? ID )
        // DefRef.g:79:9: {...}? ID
        begin
        if ( not (((ICommonTree(retval.start)).hasAncestor(EXPR))) ) then begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(retval{idref_return(retval.getobject);});
            end;
            raise EFailedPredicateException.Create(input, 'idref', '$start.hasAncestor(EXPR)');
        end;
        match(input,ID,FOLLOW_ID_in_idref383); 
        if (state.failed) then
        begin
          Result:=retval{idref_return(retval.getobject);};    Exit;
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
    Result:=retval{idref_return(retval.getobject);};
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.