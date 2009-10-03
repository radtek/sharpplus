// $ANTLR 3.2 10 03, 2009 17:07:46 SymtabTest.g 2009-10-03 17:17:07
unit SymtabTestParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 

       JclArrayLists,
 
     Antlr, AntlrTree;

    const WS=6;
    const T__12=12;
    const T__11=11;
    const T__14=14;
    const T__13=13;
    const T__10=10;
    const INT=5;
    const ID=4;
    const EOF=-1;
    const T__9=9;
    const T__8=8;
    const T__7=7;              
type
  TSymtabTestParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_globals_in_prog40:IBitSet;
    FOLLOW_method_in_prog43:IBitSet;
    FOLLOW_decl_in_globals75:IBitSet;
    FOLLOW_7_in_method106:IBitSet;
    FOLLOW_ID_in_method108:IBitSet;
    FOLLOW_8_in_method110:IBitSet;
    FOLLOW_9_in_method112:IBitSet;
    FOLLOW_block_in_method114:IBitSet;
    FOLLOW_10_in_block143:IBitSet;
    FOLLOW_decl_in_block146:IBitSet;
    FOLLOW_stat_in_block151:IBitSet;
    FOLLOW_11_in_block155:IBitSet;
    FOLLOW_ID_in_stat179:IBitSet;
    FOLLOW_12_in_stat181:IBitSet;
    FOLLOW_INT_in_stat183:IBitSet;
    FOLLOW_13_in_stat185:IBitSet;
    FOLLOW_block_in_stat195:IBitSet;
    FOLLOW_14_in_decl209:IBitSet;
    FOLLOW_ID_in_decl211:IBitSet;
    FOLLOW_13_in_decl213:IBitSet;
    

    // delegates
    // delegators
    

    public 
      type TSymbols_scope=class(TInterfacedObject) 
        names:IJclIntfList;
      end;
    public
      Symbols_stack:IJclStack ;

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public

     level:Integer;



    // $ANTLR start "prog"
    // SymtabTest.g:19:1: prog : globals ( method )* ;
    function prog():Integer;
    // $ANTLR end prog


    // $ANTLR start "globals"
    // SymtabTest.g:22:1: globals : ( decl )* ;
    function globals():Integer;
    // $ANTLR end globals


    // $ANTLR start "method"
    // SymtabTest.g:35:1: method : ''method'' ID ''('' '')'' block ;
    function method():Integer;
    // $ANTLR end method


    // $ANTLR start "block"
    // SymtabTest.g:39:1: block : ''{'' ( decl )* ( stat )* ''}'' ;
    function block():Integer;
    // $ANTLR end block


    // $ANTLR start "stat"
    // SymtabTest.g:52:1: stat : ( ID ''='' INT '';'' | block );
    function stat():Integer;
    // $ANTLR end stat


    // $ANTLR start "decl"
    // SymtabTest.g:56:1: decl : ''int'' ID '';'' ;
    function decl():Integer;
    // $ANTLR end decl

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TSymtabTestParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TSymtabTestParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"ID"');
  tokenNames.Add('"INT"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"''method''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"''{''"');
  tokenNames.Add('"''}''"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"''int''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
    Symbols_stack :=TJclStack.Create(16,false);
  

end;

    // Delegated rules

procedure TSymtabTestParser.InitBitsets;
begin
  FOLLOW_globals_in_prog40 := TAntlrBitSet.CreateWithBits([$0000000000000082]);
  FOLLOW_method_in_prog43 := TAntlrBitSet.CreateWithBits([$0000000000000082]);
  FOLLOW_decl_in_globals75 := TAntlrBitSet.CreateWithBits([$0000000000004002]);
  FOLLOW_7_in_method106 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_method108 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_8_in_method110 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_9_in_method112 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_block_in_method114 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_10_in_block143 := TAntlrBitSet.CreateWithBits([$0000000000004C10]);
  FOLLOW_decl_in_block146 := TAntlrBitSet.CreateWithBits([$0000000000004C10]);
  FOLLOW_stat_in_block151 := TAntlrBitSet.CreateWithBits([$0000000000000C10]);
  FOLLOW_11_in_block155 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_stat179 := TAntlrBitSet.CreateWithBits([$0000000000001000]);
  FOLLOW_12_in_stat181 := TAntlrBitSet.CreateWithBits([$0000000000000020]);
  FOLLOW_INT_in_stat183 := TAntlrBitSet.CreateWithBits([$0000000000002000]);
  FOLLOW_13_in_stat185 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_block_in_stat195 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_14_in_decl209 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_decl211 := TAntlrBitSet.CreateWithBits([$0000000000002000]);
  FOLLOW_13_in_decl213 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TSymtabTestParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TSymtabTestParser.GetGrammarFileName():String;
begin
  Result:='SymtabTest.g'; 
end;

// $ANTLR start "prog"
// SymtabTest.g:19:1: prog : globals ( method )* ;
function TSymtabTestParser.prog():Integer;
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
        // ruleBlockSingleAlt:SymtabTest.g:19:5: ( globals ( method )* )
        // SymtabTest.g:19:9: globals ( method )*
        begin
        pushFollow(FOLLOW_globals_in_prog40);
        globals();

        state._fsp:=state._fsp-1;

        // closureBlock:SymtabTest.g:19:17: ( method )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=7)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // SymtabTest.g:19:18: method
        	    begin
        	    pushFollow(FOLLOW_method_in_prog43);
        	    method();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
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
end;// $ANTLR start "globals"
// SymtabTest.g:22:1: globals : ( decl )* ;
function TSymtabTestParser.globals():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    Symbols_stack.push(TSymbols_scope.Create);


        Inc(Level);
        (TSymbols_scope(Symbols_stack.peek())).names := TJclIntfArrayList.Create(50);

    try 
      try
        // ruleBlockSingleAlt:SymtabTest.g:28:5: ( ( decl )* )
        // SymtabTest.g:28:9: ( decl )*
        begin
        // closureBlock:SymtabTest.g:28:9: ( decl )*
        repeat 
            _alt[2]:=2;
            _LA[2,0] := input.LA(1);

            if ( ((_LA[2,0]=14)) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            case (_alt[2]) of
        	 1 :
        	    begin
        	    // SymtabTest.g:28:10: decl
        	    begin
        	    pushFollow(FOLLOW_decl_in_globals75);
        	    decl();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


                Writeln('globals: '+sLineBreak+Get_List_Msg((TSymbols_scope(Symbols_stack.peek())).names));
                Dec(Level);
                

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        Symbols_stack.pop().Free;

    end;
end;// $ANTLR start "method"
// SymtabTest.g:35:1: method : ''method'' ID ''('' '')'' block ;
function TSymtabTestParser.method():Integer;
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
        // ruleBlockSingleAlt:SymtabTest.g:36:5: ( ''method'' ID ''('' '')'' block )
        // SymtabTest.g:36:9: ''method'' ID ''('' '')'' block
        begin
        match(input,7,FOLLOW_7_in_method106); 

        match(input,ID,FOLLOW_ID_in_method108); 

        match(input,8,FOLLOW_8_in_method110); 

        match(input,9,FOLLOW_9_in_method112); 

        pushFollow(FOLLOW_block_in_method114);
        block();

        state._fsp:=state._fsp-1;


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
// SymtabTest.g:39:1: block : ''{'' ( decl )* ( stat )* ''}'' ;
function TSymtabTestParser.block():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    Symbols_stack.push(TSymbols_scope.Create);


        Inc(Level);
        (TSymbols_scope(Symbols_stack.peek())).names := TJclIntfArrayList.Create(50);

    try 
      try
        // ruleBlockSingleAlt:SymtabTest.g:45:5: ( ''{'' ( decl )* ( stat )* ''}'' )
        // SymtabTest.g:45:9: ''{'' ( decl )* ( stat )* ''}''
        begin
        match(input,10,FOLLOW_10_in_block143); 

        // closureBlock:SymtabTest.g:45:13: ( decl )*
        repeat 
            _alt[3]:=2;
            _LA[3,0] := input.LA(1);

            if ( ((_LA[3,0]=14)) ) then 
            begin
              _alt[3]:=1;
            end

            ;

            case (_alt[3]) of
        	 1 :
        	    begin
        	    // SymtabTest.g:45:14: decl
        	    begin
        	    pushFollow(FOLLOW_decl_in_block146);
        	    decl();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // closureBlock:SymtabTest.g:45:21: ( stat )*
        repeat 
            _alt[4]:=2;
            _LA[4,0] := input.LA(1);

            if ( ((_LA[4,0]=ID) or (_LA[4,0]=10)) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            case (_alt[4]) of
        	 1 :
        	    begin
        	    // SymtabTest.g:45:22: stat
        	    begin
        	    pushFollow(FOLLOW_stat_in_block151);
        	    stat();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match(input,11,FOLLOW_11_in_block155); 


                Writeln('level '+IntToStr(level)+' symbols: '+sLineBreak+Get_List_Msg((TSymbols_scope(Symbols_stack.peek())).names));
                Dec(Level);
                

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        Symbols_stack.pop().Free;

    end;
end;// $ANTLR start "stat"
// SymtabTest.g:52:1: stat : ( ID ''='' INT '';'' | block );
function TSymtabTestParser.stat():Integer;
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
        // ruleBlock:SymtabTest.g:52:5: ( ID ''='' INT '';'' | block )
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=ID)) ) then 
        begin
          _alt[5]:=1;
        end
        else if ( ((_LA[5,0]=10)) ) then 
        begin
          _alt[5]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 5, 0, input);    

        end;
        case (_alt[5]) of 
             1 :
                begin
                // SymtabTest.g:52:9: ID ''='' INT '';''
                begin
                match(input,ID,FOLLOW_ID_in_stat179); 

                match(input,12,FOLLOW_12_in_stat181); 

                match(input,INT,FOLLOW_INT_in_stat183); 

                match(input,13,FOLLOW_13_in_stat185); 


                end;
                end;
             2 :
                begin
                // SymtabTest.g:53:9: block
                begin
                pushFollow(FOLLOW_block_in_stat195);
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
end;// $ANTLR start "decl"
// SymtabTest.g:56:1: decl : ''int'' ID '';'' ;
function TSymtabTestParser.decl():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID1:IToken;

begin
    try 
      try
        // ruleBlockSingleAlt:SymtabTest.g:56:5: ( ''int'' ID '';'' )
        // SymtabTest.g:56:9: ''int'' ID '';''
        begin
        match(input,14,FOLLOW_14_in_decl209); 

        ID1:=match(input,ID,FOLLOW_ID_in_decl211) as IToken; 

        match(input,13,FOLLOW_13_in_decl213); 

        (TSymbols_scope(Symbols_stack.peek())).names.add(ID1);

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