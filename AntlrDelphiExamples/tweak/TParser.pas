// $ANTLR 3.2 10 03, 2009 17:07:46 T.g 2009-10-03 17:22:06
unit TParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const WS=6;
    const T__15=15;
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
  TTParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_method_in_prog46:IBitSet;
    FOLLOW_7_in_method81:IBitSet;
    FOLLOW_ID_in_method83:IBitSet;
    FOLLOW_8_in_method85:IBitSet;
    FOLLOW_9_in_method87:IBitSet;
    FOLLOW_body_in_method89:IBitSet;
    FOLLOW_10_in_body130:IBitSet;
    FOLLOW_stat_in_body132:IBitSet;
    FOLLOW_11_in_body135:IBitSet;
    FOLLOW_ID_in_stat159:IBitSet;
    FOLLOW_12_in_stat161:IBitSet;
    FOLLOW_expr_in_stat163:IBitSet;
    FOLLOW_13_in_stat165:IBitSet;
    FOLLOW_mul_in_expr182:IBitSet;
    FOLLOW_14_in_expr185:IBitSet;
    FOLLOW_mul_in_expr187:IBitSet;
    FOLLOW_atom_in_mul205:IBitSet;
    FOLLOW_15_in_mul208:IBitSet;
    FOLLOW_atom_in_mul210:IBitSet;
    FOLLOW_set_in_atom0:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public

     tokens:ITokenRewriteStream; // avoid typecasts all over
     startT:IToken;



    // $ANTLR start "prog"
    // T.g:15:1: prog : (m= method )+ ;
    function prog():Integer;
    // $ANTLR end prog

    public
        type ITParser_method_return=interface(IParserRuleReturnScope)
        ['{CCA5D991-A061-4995-858B-21EED4B08D66}']

                  function gets:String;
                  procedure sets(AValue:String);
                  property s:String read gets write sets;
                  
        end;   
        type method_return =class( TParserRuleReturnScope , ITParser_method_return)
        private
           Fs:String;
        public


                  function gets:String;
                  procedure sets(AValue:String);
                  property s:String read gets write sets;
                  
        end;

    // $ANTLR start "method"
    // T.g:29:1: method returns [String s] : m= ''method'' ID ''('' '')'' body ;
    function method():ITParser_method_return{IParserRuleReturnScope};
    // $ANTLR end method

    public 
      type 
        Tbody_scope=class(TInterfacedObject) 
        decls:IJclSet;
        it:IJclIterator;
        end;
    public
        body_stack:IJclStack;


    // $ANTLR start "body"
    // T.g:36:1: body : lcurly= ''{'' ( stat )* ''}'' ;
    function body():Integer;
    // $ANTLR end body


    // $ANTLR start "stat"
    // T.g:59:1: stat : ID ''='' expr '';'' ;
    function stat():Integer;
    // $ANTLR end stat


    // $ANTLR start "expr"
    // T.g:62:1: expr : mul ( ''+'' mul )* ;
    function expr():Integer;
    // $ANTLR end expr


    // $ANTLR start "mul"
    // T.g:65:1: mul : atom ( ''*'' atom )* ;
    function mul():Integer;
    // $ANTLR end mul


    // $ANTLR start "atom"
    // T.g:68:1: atom : ( ID | INT );
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

function TTParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TTParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
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
  tokenNames.Add('"''+''"');
  tokenNames.Add('"''*''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
      body_stack:=TJclStack.Create(16,false);

  

end;

    // Delegated rules

procedure TTParser.InitBitsets;
begin
  FOLLOW_method_in_prog46 := TAntlrBitSet.CreateWithBits([$0000000000000082]);
  FOLLOW_7_in_method81 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_method83 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_8_in_method85 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_9_in_method87 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_body_in_method89 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_10_in_body130 := TAntlrBitSet.CreateWithBits([$0000000000000810]);
  FOLLOW_stat_in_body132 := TAntlrBitSet.CreateWithBits([$0000000000000810]);
  FOLLOW_11_in_body135 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_stat159 := TAntlrBitSet.CreateWithBits([$0000000000001000]);
  FOLLOW_12_in_stat161 := TAntlrBitSet.CreateWithBits([$0000000000000030]);
  FOLLOW_expr_in_stat163 := TAntlrBitSet.CreateWithBits([$0000000000002000]);
  FOLLOW_13_in_stat165 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_mul_in_expr182 := TAntlrBitSet.CreateWithBits([$0000000000004002]);
  FOLLOW_14_in_expr185 := TAntlrBitSet.CreateWithBits([$0000000000000030]);
  FOLLOW_mul_in_expr187 := TAntlrBitSet.CreateWithBits([$0000000000004002]);
  FOLLOW_atom_in_mul205 := TAntlrBitSet.CreateWithBits([$0000000000008002]);
  FOLLOW_15_in_mul208 := TAntlrBitSet.CreateWithBits([$0000000000000030]);
  FOLLOW_atom_in_mul210 := TAntlrBitSet.CreateWithBits([$0000000000008002]);
  FOLLOW_set_in_atom0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TTParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TTParser.GetGrammarFileName():String;
begin
  Result:='T.g'; 
end;

// $ANTLR start "prog"
// T.g:15:1: prog : (m= method )+ ;
function TTParser.prog():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  m:ITParser_method_return{IParserRuleReturnScope}; 


begin

        tokens := input as ITokenRewriteStream; 
        startT := input.LT(1);

    try 
      try
        // ruleBlockSingleAlt:T.g:20:5: ( (m= method )+ )
        // T.g:20:9: (m= method )+
        begin
        // positiveClosureBlock:T.g:20:10: (m= method )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=7)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // T.g:20:10: m= method
        	    begin
        	    pushFollow(FOLLOW_method_in_prog46);
        	    m:=method();

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


                tokens.insertBefore(startT,'public class Wrapper {'+sLineBreak);
                // note the reference to the last token matched for method:
                tokens.insertAfter((m.stop as IToken), sLineBreak+'}'+sLineBreak);
        	//NG:Writeln(TMethod_Return(m).s);
               

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
function TTParser.method_return.gets:String;
begin
  Result:=Fs;
end;

procedure TTParser.method_return.sets(AValue:String);
begin
  Fs:=AValue;
end;



// $ANTLR start "method"
// T.g:29:1: method returns [String s] : m= ''method'' ID ''('' '')'' body ;
function TTParser.method():ITParser_method_return{IParserRuleReturnScope};
var
  _alt:array [0..255] of Integer;
  retval:ITParser_method_return{IParserRuleReturnScope};
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  m:IToken;

begin
    retval := method_return.Create();
    retval.start := input.LT(1);

    try 
      try
        // ruleBlockSingleAlt:T.g:30:5: (m= ''method'' ID ''('' '')'' body )
        // T.g:30:9: m= ''method'' ID ''('' '')'' body
        begin
        m:=match(input,7,FOLLOW_7_in_method81) as IToken; 

        match(input,ID,FOLLOW_ID_in_method83); 

        match(input,8,FOLLOW_8_in_method85); 

        match(input,9,FOLLOW_9_in_method87); 

        pushFollow(FOLLOW_body_in_method89);
        body();

        state._fsp:=state._fsp-1;

        tokens.replace(m, 'public void');
        	 retval.s:='test';
        	

        end;

        retval.stop := input.LT(-1);

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
    Result:=retval//method_return(retval.getobject);;
end;// $ANTLR start "body"
// T.g:36:1: body : lcurly= ''{'' ( stat )* ''}'' ;
function TTParser.body():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  lcurly:IToken;

begin
    body_stack.push(Tbody_scope.Create);

        (Tbody_scope(body_stack.peek())).decls := TJclHashSet.Create(16, false);

    try 
      try
        // ruleBlockSingleAlt:T.g:48:5: (lcurly= ''{'' ( stat )* ''}'' )
        // T.g:48:9: lcurly= ''{'' ( stat )* ''}''
        begin
        lcurly:=match(input,10,FOLLOW_10_in_body130) as IToken; 

        // closureBlock:T.g:48:20: ( stat )*
        repeat 
            _alt[2]:=2;
            _LA[2,0] := input.LA(1);

            if ( ((_LA[2,0]=ID)) ) then 
            begin
              _alt[2]:=1;
            end

            ;

            case (_alt[2]) of
        	 1 :
        	    begin
        	    // T.g:48:20: stat
        	    begin
        	    pushFollow(FOLLOW_stat_in_body132);
        	    stat();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match(input,11,FOLLOW_11_in_body135); 


                // dump declarations for all identifiers seen in statement list
                (Tbody_scope(body_stack.peek())).it := (Tbody_scope(body_stack.peek())).decls.First();
                while ( (Tbody_scope(body_stack.peek())).it.hasNext() ) do
                    tokens.insertAfter(lcurly, sLineBreak+'int '+string((Tbody_scope(body_stack.peek())).it.next())+';');
        	    
                
                

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        body_stack.pop().Free;
    end;
end;// $ANTLR start "stat"
// T.g:59:1: stat : ID ''='' expr '';'' ;
function TTParser.stat():Integer;
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
        // ruleBlockSingleAlt:T.g:59:5: ( ID ''='' expr '';'' )
        // T.g:59:9: ID ''='' expr '';''
        begin
        ID1:=match(input,ID,FOLLOW_ID_in_stat159) as IToken; 

        match(input,12,FOLLOW_12_in_stat161); 

        pushFollow(FOLLOW_expr_in_stat163);
        expr();

        state._fsp:=state._fsp-1;

        match(input,13,FOLLOW_13_in_stat165); 

        (Tbody_scope(body_stack.peek())).decls.add(TObject((IIF(Assigned(ID1), ID1.getText(), ''))));

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
// T.g:62:1: expr : mul ( ''+'' mul )* ;
function TTParser.expr():Integer;
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
        // ruleBlockSingleAlt:T.g:62:5: ( mul ( ''+'' mul )* )
        // T.g:62:9: mul ( ''+'' mul )*
        begin
        pushFollow(FOLLOW_mul_in_expr182);
        mul();

        state._fsp:=state._fsp-1;

        // closureBlock:T.g:62:13: ( ''+'' mul )*
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
        	    // T.g:62:14: ''+'' mul
        	    begin
        	    match(input,14,FOLLOW_14_in_expr185); 

        	    pushFollow(FOLLOW_mul_in_expr187);
        	    mul();

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
end;// $ANTLR start "mul"
// T.g:65:1: mul : atom ( ''*'' atom )* ;
function TTParser.mul():Integer;
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
        // ruleBlockSingleAlt:T.g:65:5: ( atom ( ''*'' atom )* )
        // T.g:65:9: atom ( ''*'' atom )*
        begin
        pushFollow(FOLLOW_atom_in_mul205);
        atom();

        state._fsp:=state._fsp-1;

        // closureBlock:T.g:65:14: ( ''*'' atom )*
        repeat 
            _alt[4]:=2;
            _LA[4,0] := input.LA(1);

            if ( ((_LA[4,0]=15)) ) then 
            begin
              _alt[4]:=1;
            end

            ;

            case (_alt[4]) of
        	 1 :
        	    begin
        	    // T.g:65:15: ''*'' atom
        	    begin
        	    match(input,15,FOLLOW_15_in_mul208); 

        	    pushFollow(FOLLOW_atom_in_mul210);
        	    atom();

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
end;// $ANTLR start "atom"
// T.g:68:1: atom : ( ID | INT );
function TTParser.atom():Integer;
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
        // ruleBlockSingleAlt:T.g:68:5: ( ID | INT )
        // T.g:
        begin
        if ( ((input.LA(1)>=ID) and (input.LA(1)<=INT)) ) then
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