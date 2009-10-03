// $ANTLR 3.1.2 SimpleCWalker.g 2009-07-23 21:45:54
unit SimpleCWalker;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

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
  TSimpleCWalker = class(TAntlrTreeParser)
  public
    tokenNames:TStrings;
    FOLLOW_declaration_in_prog49:IBitSet;
    FOLLOW_variable_in_declaration69:IBitSet;
    FOLLOW_FUNC_DECL_in_declaration80:IBitSet;
    FOLLOW_functionHeader_in_declaration82:IBitSet;
    FOLLOW_FUNC_DEF_in_declaration94:IBitSet;
    FOLLOW_functionHeader_in_declaration96:IBitSet;
    FOLLOW_block_in_declaration98:IBitSet;
    FOLLOW_VAR_DEF_in_variable119:IBitSet;
    FOLLOW_dtype_in_variable121:IBitSet;
    FOLLOW_declarator_in_variable123:IBitSet;
    FOLLOW_ID_in_declarator143:IBitSet;
    FOLLOW_FUNC_HDR_in_functionHeader164:IBitSet;
    FOLLOW_dtype_in_functionHeader166:IBitSet;
    FOLLOW_ID_in_functionHeader168:IBitSet;
    FOLLOW_formalParameter_in_functionHeader170:IBitSet;
    FOLLOW_ARG_DEF_in_formalParameter192:IBitSet;
    FOLLOW_dtype_in_formalParameter194:IBitSet;
    FOLLOW_declarator_in_formalParameter196:IBitSet;
    FOLLOW_set_in_dtype0:IBitSet;
    FOLLOW_TBLOCK_in_block274:IBitSet;
    FOLLOW_variable_in_block276:IBitSet;
    FOLLOW_stat_in_block279:IBitSet;
    FOLLOW_forStat_in_stat293:IBitSet;
    FOLLOW_expr_in_stat301:IBitSet;
    FOLLOW_block_in_stat309:IBitSet;
    FOLLOW_DFOR_in_forStat329:IBitSet;
    FOLLOW_expr_in_forStat331:IBitSet;
    FOLLOW_expr_in_forStat333:IBitSet;
    FOLLOW_expr_in_forStat335:IBitSet;
    FOLLOW_block_in_forStat337:IBitSet;
    FOLLOW_EQEQ_in_expr353:IBitSet;
    FOLLOW_expr_in_expr355:IBitSet;
    FOLLOW_expr_in_expr357:IBitSet;
    FOLLOW_LT_in_expr369:IBitSet;
    FOLLOW_expr_in_expr371:IBitSet;
    FOLLOW_expr_in_expr373:IBitSet;
    FOLLOW_PLUS_in_expr385:IBitSet;
    FOLLOW_expr_in_expr387:IBitSet;
    FOLLOW_expr_in_expr389:IBitSet;
    FOLLOW_EQ_in_expr401:IBitSet;
    FOLLOW_ID_in_expr403:IBitSet;
    FOLLOW_expr_in_expr405:IBitSet;
    FOLLOW_atom_in_expr416:IBitSet;
    FOLLOW_set_in_atom0:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "prog"
    // SimpleCWalker.g:8:1: prog : ( declaration )+ ;
    function prog():Integer;
    // $ANTLR end prog


    // $ANTLR start "declaration"
    // SimpleCWalker.g:12:1: declaration : ( variable | ^( FUNC_DECL functionHeader ) | ^( FUNC_DEF functionHeader block ) );
    function declaration():Integer;
    // $ANTLR end declaration


    // $ANTLR start "variable"
    // SimpleCWalker.g:18:1: variable : ^( VAR_DEF dtype declarator ) ;
    function variable():Integer;
    // $ANTLR end variable


    // $ANTLR start "declarator"
    // SimpleCWalker.g:22:1: declarator : ID ;
    function declarator():Integer;
    // $ANTLR end declarator


    // $ANTLR start "functionHeader"
    // SimpleCWalker.g:26:1: functionHeader : ^( FUNC_HDR dtype ID ( formalParameter )* ) ;
    function functionHeader():Integer;
    // $ANTLR end functionHeader


    // $ANTLR start "formalParameter"
    // SimpleCWalker.g:30:1: formalParameter : ^( ARG_DEF dtype declarator ) ;
    function formalParameter():Integer;
    // $ANTLR end formalParameter


    // $ANTLR start "dtype"
    // SimpleCWalker.g:34:1: dtype : ( ''int'' | ''char'' | ''void'' | ID );
    function dtype():Integer;
    // $ANTLR end dtype


    // $ANTLR start "block"
    // SimpleCWalker.g:41:1: block : ^( TBLOCK ( variable )* ( stat )* ) ;
    function block():Integer;
    // $ANTLR end block


    // $ANTLR start "stat"
    // SimpleCWalker.g:45:1: stat : ( forStat | expr | block );
    function stat():Integer;
    // $ANTLR end stat


    // $ANTLR start "forStat"
    // SimpleCWalker.g:50:1: forStat : ^( ''for'' expr expr expr block ) ;
    function forStat():Integer;
    // $ANTLR end forStat


    // $ANTLR start "expr"
    // SimpleCWalker.g:54:1: expr : ( ^( EQEQ expr expr ) | ^( LT expr expr ) | ^( PLUS expr expr ) | ^( EQ ID expr ) | atom );
    function expr():Integer;
    // $ANTLR end expr


    // $ANTLR start "atom"
    // SimpleCWalker.g:61:1: atom : ( ID | INT );
    function atom():Integer;
    // $ANTLR end atom

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TSimpleCWalker.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSimpleCWalker.CreateWithStream(input:ITreeNodeStream;AState:TRecognizerSharedState);
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

procedure TSimpleCWalker.InitBitsets;
begin
  FOLLOW_declaration_in_prog49 := TAntlrBitSet.CreateWithBits([$0000000000000192]);
  FOLLOW_variable_in_declaration69 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_FUNC_DECL_in_declaration80 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_functionHeader_in_declaration82 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_FUNC_DEF_in_declaration94 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_functionHeader_in_declaration96 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_block_in_declaration98 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_VAR_DEF_in_variable119 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_dtype_in_variable121 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_declarator_in_variable123 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_ID_in_declarator143 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_FUNC_HDR_in_functionHeader164 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_dtype_in_functionHeader166 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_ID_in_functionHeader168 := TAntlrBitSet.CreateWithBits([$0000000000000028]);
  FOLLOW_formalParameter_in_functionHeader170 := TAntlrBitSet.CreateWithBits([$0000000000000028]);
  FOLLOW_ARG_DEF_in_formalParameter192 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_dtype_in_formalParameter194 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_declarator_in_formalParameter196 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_set_in_dtype0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_TBLOCK_in_block274 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_variable_in_block276 := TAntlrBitSet.CreateWithBits([$00000000000E3E18]);
  FOLLOW_stat_in_block279 := TAntlrBitSet.CreateWithBits([$00000000000E3E08]);
  FOLLOW_forStat_in_stat293 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expr_in_stat301 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_stat309 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_DFOR_in_forStat329 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_expr_in_forStat331 := TAntlrBitSet.CreateWithBits([$00000000000E1C00]);
  FOLLOW_expr_in_forStat333 := TAntlrBitSet.CreateWithBits([$00000000000E1C00]);
  FOLLOW_expr_in_forStat335 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_block_in_forStat337 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_EQEQ_in_expr353 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_expr_in_expr355 := TAntlrBitSet.CreateWithBits([$00000000000E1C00]);
  FOLLOW_expr_in_expr357 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_LT_in_expr369 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_expr_in_expr371 := TAntlrBitSet.CreateWithBits([$00000000000E1C00]);
  FOLLOW_expr_in_expr373 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_PLUS_in_expr385 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_expr_in_expr387 := TAntlrBitSet.CreateWithBits([$00000000000E1C00]);
  FOLLOW_expr_in_expr389 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_EQ_in_expr401 := TAntlrBitSet.CreateWithBits([$0000000000000004]);
  FOLLOW_ID_in_expr403 := TAntlrBitSet.CreateWithBits([$00000000000E1C00]);
  FOLLOW_expr_in_expr405 := TAntlrBitSet.CreateWithBits([$0000000000000008]);
  FOLLOW_atom_in_expr416 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_atom0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TSimpleCWalker.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSimpleCWalker.GetGrammarFileName():String;
begin
  Result:='SimpleCWalker.g'; 
end;

// $ANTLR start "prog"
// SimpleCWalker.g:8:1: prog : ( declaration )+ ;
function TSimpleCWalker.prog():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:9:5: ( ( declaration )+ )
        // SimpleCWalker.g:9:9: ( declaration )+
        begin
        // positiveClosureBlock:SimpleCWalker.g:9:9: ( declaration )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=VAR_DEF) or ((_LA[1,0]>=FUNC_DECL) and 
            ( _LA[1,0]<=FUNC_DEF))) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // SimpleCWalker.g:9:9: declaration
        	    begin
        	    pushFollow(FOLLOW_declaration_in_prog49);
        	    declaration();

        	    state._fsp:=state._fsp-1;


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

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "declaration"
// SimpleCWalker.g:12:1: declaration : ( variable | ^( FUNC_DECL functionHeader ) | ^( FUNC_DEF functionHeader block ) );
function TSimpleCWalker.declaration():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlock:SimpleCWalker.g:13:5: ( variable | ^( FUNC_DECL functionHeader ) | ^( FUNC_DEF functionHeader block ) )
        _alt[2]:=3;

        case input.LA(1) of
         VAR_DEF: 
            begin
            _alt[2]:=1;
            end;
         FUNC_DECL: 
            begin
            _alt[2]:=2;
            end;
         FUNC_DEF: 
            begin
            _alt[2]:=3;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 2, 0, input);

        end;
        end;

        case (_alt[2]) of 
             1 :
                begin
                // SimpleCWalker.g:13:9: variable
                begin
                pushFollow(FOLLOW_variable_in_declaration69);
                variable();

                state._fsp:=state._fsp-1;


                end;
                end;
             2 :
                begin
                // SimpleCWalker.g:14:9: ^( FUNC_DECL functionHeader )
                begin
                match(input,FUNC_DECL,FOLLOW_FUNC_DECL_in_declaration80); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_functionHeader_in_declaration82);
                functionHeader();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 


                end;
                end;
             3 :
                begin
                // SimpleCWalker.g:15:9: ^( FUNC_DEF functionHeader block )
                begin
                match(input,FUNC_DEF,FOLLOW_FUNC_DEF_in_declaration94); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_functionHeader_in_declaration96);
                functionHeader();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_block_in_declaration98);
                block();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 


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
end;// $ANTLR start "variable"
// SimpleCWalker.g:18:1: variable : ^( VAR_DEF dtype declarator ) ;
function TSimpleCWalker.variable():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:19:5: ( ^( VAR_DEF dtype declarator ) )
        // SimpleCWalker.g:19:9: ^( VAR_DEF dtype declarator )
        begin
        match(input,VAR_DEF,FOLLOW_VAR_DEF_in_variable119); 


        match(input, DOWN, nil); 
        pushFollow(FOLLOW_dtype_in_variable121);
        dtype();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_declarator_in_variable123);
        declarator();

        state._fsp:=state._fsp-1;


        match(input, UP, nil); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "declarator"
// SimpleCWalker.g:22:1: declarator : ID ;
function TSimpleCWalker.declarator():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:23:5: ( ID )
        // SimpleCWalker.g:23:9: ID
        begin
        match(input,ID,FOLLOW_ID_in_declarator143); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "functionHeader"
// SimpleCWalker.g:26:1: functionHeader : ^( FUNC_HDR dtype ID ( formalParameter )* ) ;
function TSimpleCWalker.functionHeader():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:27:5: ( ^( FUNC_HDR dtype ID ( formalParameter )* ) )
        // SimpleCWalker.g:27:9: ^( FUNC_HDR dtype ID ( formalParameter )* )
        begin
        match(input,FUNC_HDR,FOLLOW_FUNC_HDR_in_functionHeader164); 


        match(input, DOWN, nil); 
        pushFollow(FOLLOW_dtype_in_functionHeader166);
        dtype();

        state._fsp:=state._fsp-1;

        match(input,ID,FOLLOW_ID_in_functionHeader168); 

        // closureBlock:SimpleCWalker.g:27:29: ( formalParameter )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=ARG_DEF)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // SimpleCWalker.g:27:29: formalParameter
        	    begin
        	    pushFollow(FOLLOW_formalParameter_in_functionHeader170);
        	    formalParameter();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        match(input, UP, nil); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "formalParameter"
// SimpleCWalker.g:30:1: formalParameter : ^( ARG_DEF dtype declarator ) ;
function TSimpleCWalker.formalParameter():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:31:5: ( ^( ARG_DEF dtype declarator ) )
        // SimpleCWalker.g:31:9: ^( ARG_DEF dtype declarator )
        begin
        match(input,ARG_DEF,FOLLOW_ARG_DEF_in_formalParameter192); 


        match(input, DOWN, nil); 
        pushFollow(FOLLOW_dtype_in_formalParameter194);
        dtype();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_declarator_in_formalParameter196);
        declarator();

        state._fsp:=state._fsp-1;


        match(input, UP, nil); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "dtype"
// SimpleCWalker.g:34:1: dtype : ( ''int'' | ''char'' | ''void'' | ID );
function TSimpleCWalker.dtype():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:35:5: ( ''int'' | ''char'' | ''void'' | ID )
        // SimpleCWalker.g:
        begin
        if ( (input.LA(1)=ID) or ((input.LA(1)>=INT_TYPE) and (input.LA(1)<=VOID)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;
        end
        else 
        begin
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
end;// $ANTLR start "block"
// SimpleCWalker.g:41:1: block : ^( TBLOCK ( variable )* ( stat )* ) ;
function TSimpleCWalker.block():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:42:5: ( ^( TBLOCK ( variable )* ( stat )* ) )
        // SimpleCWalker.g:42:9: ^( TBLOCK ( variable )* ( stat )* )
        begin
        match(input,TBLOCK,FOLLOW_TBLOCK_in_block274); 


        if ( input.LA(1)=DOWN ) then
        begin
          match(input, DOWN, nil); 
          // closureBlock:SimpleCWalker.g:42:18: ( variable )*
          repeat 
              _alt[4]:=2;
              _LA[4,0] := input.LA(1);

              if ( ((_LA[4,0]=VAR_DEF)) ) then 
              begin
                _alt[4]:=1;
              end

              ;

              case (_alt[4]) of
          	 1 :
          	    begin
          	    // SimpleCWalker.g:42:18: variable
          	    begin
          	    pushFollow(FOLLOW_variable_in_block276);
          	    variable();

          	    state._fsp:=state._fsp-1;


          	    end;
          	    end;

          	else 
          	    break;
              end;
           until (false);

          // closureBlock:SimpleCWalker.g:42:28: ( stat )*
          repeat 
              _alt[5]:=2;
              _LA[5,0] := input.LA(1);

              if ( (((_LA[5,0]>=TBLOCK) and 
              ( _LA[5,0]<=DFOR)) or ((_LA[5,0]>=EQEQ) and 
              ( _LA[5,0]<=PLUS))) ) then 
              begin
                _alt[5]:=1;
              end

              ;

              case (_alt[5]) of
          	 1 :
          	    begin
          	    // SimpleCWalker.g:42:28: stat
          	    begin
          	    pushFollow(FOLLOW_stat_in_block279);
          	    stat();

          	    state._fsp:=state._fsp-1;


          	    end;
          	    end;

          	else 
          	    break;
              end;
           until (false);


          match(input, UP, nil); 
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
end;// $ANTLR start "stat"
// SimpleCWalker.g:45:1: stat : ( forStat | expr | block );
function TSimpleCWalker.stat():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlock:SimpleCWalker.g:45:5: ( forStat | expr | block )
        _alt[6]:=3;

        case input.LA(1) of
         DFOR: 
            begin
            _alt[6]:=1;
            end;
         ID , 
         EQ , 
         INT , 
         EQEQ , 
         LT , 
         PLUS: 
            begin
            _alt[6]:=2;
            end;
         TBLOCK: 
            begin
            _alt[6]:=3;
            end;
        else
        begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 6, 0, input);

        end;
        end;

        case (_alt[6]) of 
             1 :
                begin
                // SimpleCWalker.g:45:7: forStat
                begin
                pushFollow(FOLLOW_forStat_in_stat293);
                forStat();

                state._fsp:=state._fsp-1;


                end;
                end;
             2 :
                begin
                // SimpleCWalker.g:46:7: expr
                begin
                pushFollow(FOLLOW_expr_in_stat301);
                expr();

                state._fsp:=state._fsp-1;


                end;
                end;
             3 :
                begin
                // SimpleCWalker.g:47:7: block
                begin
                pushFollow(FOLLOW_block_in_stat309);
                block();

                state._fsp:=state._fsp-1;


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
end;// $ANTLR start "forStat"
// SimpleCWalker.g:50:1: forStat : ^( ''for'' expr expr expr block ) ;
function TSimpleCWalker.forStat():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:51:5: ( ^( ''for'' expr expr expr block ) )
        // SimpleCWalker.g:51:9: ^( ''for'' expr expr expr block )
        begin
        match(input,DFOR,FOLLOW_DFOR_in_forStat329); 


        match(input, DOWN, nil); 
        pushFollow(FOLLOW_expr_in_forStat331);
        expr();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_expr_in_forStat333);
        expr();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_expr_in_forStat335);
        expr();

        state._fsp:=state._fsp-1;

        pushFollow(FOLLOW_block_in_forStat337);
        block();

        state._fsp:=state._fsp-1;


        match(input, UP, nil); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "expr"
// SimpleCWalker.g:54:1: expr : ( ^( EQEQ expr expr ) | ^( LT expr expr ) | ^( PLUS expr expr ) | ^( EQ ID expr ) | atom );
function TSimpleCWalker.expr():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlock:SimpleCWalker.g:54:5: ( ^( EQEQ expr expr ) | ^( LT expr expr ) | ^( PLUS expr expr ) | ^( EQ ID expr ) | atom )
        _alt[7]:=5;

        case input.LA(1) of
         EQEQ: 
            begin
            _alt[7]:=1;
            end;
         LT: 
            begin
            _alt[7]:=2;
            end;
         PLUS: 
            begin
            _alt[7]:=3;
            end;
         EQ: 
            begin
            _alt[7]:=4;
            end;
         ID , 
         INT: 
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
                // SimpleCWalker.g:54:9: ^( EQEQ expr expr )
                begin
                match(input,EQEQ,FOLLOW_EQEQ_in_expr353); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_expr_in_expr355);
                expr();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_expr_in_expr357);
                expr();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 


                end;
                end;
             2 :
                begin
                // SimpleCWalker.g:55:9: ^( LT expr expr )
                begin
                match(input,LT,FOLLOW_LT_in_expr369); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_expr_in_expr371);
                expr();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_expr_in_expr373);
                expr();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 


                end;
                end;
             3 :
                begin
                // SimpleCWalker.g:56:9: ^( PLUS expr expr )
                begin
                match(input,PLUS,FOLLOW_PLUS_in_expr385); 


                match(input, DOWN, nil); 
                pushFollow(FOLLOW_expr_in_expr387);
                expr();

                state._fsp:=state._fsp-1;

                pushFollow(FOLLOW_expr_in_expr389);
                expr();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 


                end;
                end;
             4 :
                begin
                // SimpleCWalker.g:57:9: ^( EQ ID expr )
                begin
                match(input,EQ,FOLLOW_EQ_in_expr401); 


                match(input, DOWN, nil); 
                match(input,ID,FOLLOW_ID_in_expr403); 

                pushFollow(FOLLOW_expr_in_expr405);
                expr();

                state._fsp:=state._fsp-1;


                match(input, UP, nil); 


                end;
                end;
             5 :
                begin
                // SimpleCWalker.g:58:9: atom
                begin
                pushFollow(FOLLOW_atom_in_expr416);
                atom();

                state._fsp:=state._fsp-1;


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
end;// $ANTLR start "atom"
// SimpleCWalker.g:61:1: atom : ( ID | INT );
function TSimpleCWalker.atom():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    try 
      try
        // ruleBlockSingleAlt:SimpleCWalker.g:62:5: ( ID | INT )
        // SimpleCWalker.g:
        begin
        if ( (input.LA(1)=ID) or (input.LA(1)=INT) ) then
        begin
            input.consume();
            state.errorRecovery:=false;
        end
        else 
        begin
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
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.