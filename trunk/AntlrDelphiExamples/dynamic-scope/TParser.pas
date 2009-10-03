// $ANTLR 3.1.2 T.g 2009-07-23 21:39:07
unit TParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

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
    FOLLOW_method_in_prog24:IBitSet;
    FOLLOW_7_in_method43:IBitSet;
    FOLLOW_ID_in_method45:IBitSet;
    FOLLOW_8_in_method47:IBitSet;
    FOLLOW_9_in_method49:IBitSet;
    FOLLOW_body_in_method53:IBitSet;
    FOLLOW_10_in_body68:IBitSet;
    FOLLOW_stat_in_body70:IBitSet;
    FOLLOW_11_in_body73:IBitSet;
    FOLLOW_ID_in_stat87:IBitSet;
    FOLLOW_12_in_stat89:IBitSet;
    FOLLOW_expr_in_stat91:IBitSet;
    FOLLOW_13_in_stat93:IBitSet;
    FOLLOW_method_in_stat103:IBitSet;
    FOLLOW_mul_in_expr118:IBitSet;
    FOLLOW_14_in_expr121:IBitSet;
    FOLLOW_mul_in_expr123:IBitSet;
    FOLLOW_atom_in_mul141:IBitSet;
    FOLLOW_15_in_mul144:IBitSet;
    FOLLOW_atom_in_mul146:IBitSet;
    FOLLOW_ID_in_atom164:IBitSet;
    FOLLOW_INT_in_atom177:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "prog"
    // T.g:7:1: prog : method ;
    function prog():Integer;
    // $ANTLR end prog

    public 
      type 
        Tmethod_scope=class(TInterfacedObject) 
        name:String;
        end;
    public
        method_stack:IJclStack;


    // $ANTLR start "method"
    // T.g:9:1: method : ''method'' ID ''('' '')'' body ;
    function method():Integer;
    // $ANTLR end method


    // $ANTLR start "body"
    // T.g:16:1: body : ''{'' ( stat )* ''}'' ;
    function body():Integer;
    // $ANTLR end body


    // $ANTLR start "stat"
    // T.g:19:1: stat : ( ID ''='' expr '';'' | method );
    function stat():Integer;
    // $ANTLR end stat


    // $ANTLR start "expr"
    // T.g:23:1: expr : mul ( ''+'' mul )* ;
    function expr():Integer;
    // $ANTLR end expr


    // $ANTLR start "mul"
    // T.g:26:1: mul : atom ( ''*'' atom )* ;
    function mul():Integer;
    // $ANTLR end mul


    // $ANTLR start "atom"
    // T.g:29:1: atom : ( ID | INT );
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
      method_stack:=TJclStack.Create(16,false);

  

end;

    // Delegated rules

procedure TTParser.InitBitsets;
begin
  FOLLOW_method_in_prog24 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_7_in_method43 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_method45 := TAntlrBitSet.CreateWithBits([$0000000000000100]);
  FOLLOW_8_in_method47 := TAntlrBitSet.CreateWithBits([$0000000000000200]);
  FOLLOW_9_in_method49 := TAntlrBitSet.CreateWithBits([$0000000000000400]);
  FOLLOW_body_in_method53 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_10_in_body68 := TAntlrBitSet.CreateWithBits([$0000000000000890]);
  FOLLOW_stat_in_body70 := TAntlrBitSet.CreateWithBits([$0000000000000890]);
  FOLLOW_11_in_body73 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_stat87 := TAntlrBitSet.CreateWithBits([$0000000000001000]);
  FOLLOW_12_in_stat89 := TAntlrBitSet.CreateWithBits([$0000000000000030]);
  FOLLOW_expr_in_stat91 := TAntlrBitSet.CreateWithBits([$0000000000002000]);
  FOLLOW_13_in_stat93 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_method_in_stat103 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_mul_in_expr118 := TAntlrBitSet.CreateWithBits([$0000000000004002]);
  FOLLOW_14_in_expr121 := TAntlrBitSet.CreateWithBits([$0000000000000030]);
  FOLLOW_mul_in_expr123 := TAntlrBitSet.CreateWithBits([$0000000000004002]);
  FOLLOW_atom_in_mul141 := TAntlrBitSet.CreateWithBits([$0000000000008002]);
  FOLLOW_15_in_mul144 := TAntlrBitSet.CreateWithBits([$0000000000000030]);
  FOLLOW_atom_in_mul146 := TAntlrBitSet.CreateWithBits([$0000000000008002]);
  FOLLOW_ID_in_atom164 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_INT_in_atom177 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
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
// T.g:7:1: prog : method ;
function TTParser.prog():Integer;
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
        // ruleBlockSingleAlt:T.g:7:6: ( method )
        // T.g:7:8: method
        begin
        pushFollow(FOLLOW_method_in_prog24);
        method();

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
end;// $ANTLR start "method"
// T.g:9:1: method : ''method'' ID ''('' '')'' body ;
function TTParser.method():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID1:IToken;

begin
    method_stack.push(Tmethod_scope.Create);
    try 
      try
        // ruleBlockSingleAlt:T.g:13:5: ( ''method'' ID ''('' '')'' body )
        // T.g:13:9: ''method'' ID ''('' '')'' body
        begin
        match(input,7,FOLLOW_7_in_method43); 

        ID1:=match(input,ID,FOLLOW_ID_in_method45) as IToken; 

        match(input,8,FOLLOW_8_in_method47); 

        match(input,9,FOLLOW_9_in_method49); 

        (Tmethod_scope(method_stack.peek())).name:=(IIF(Assigned(ID1), ID1.getText(), ''));
        pushFollow(FOLLOW_body_in_method53);
        body();

        state._fsp:=state._fsp-1;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        method_stack.pop().Free;
    end;
end;// $ANTLR start "body"
// T.g:16:1: body : ''{'' ( stat )* ''}'' ;
function TTParser.body():Integer;
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
        // ruleBlockSingleAlt:T.g:16:5: ( ''{'' ( stat )* ''}'' )
        // T.g:16:9: ''{'' ( stat )* ''}''
        begin
        match(input,10,FOLLOW_10_in_body68); 

        // closureBlock:T.g:16:13: ( stat )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=ID) or (_LA[1,0]=7)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // T.g:16:13: stat
        	    begin
        	    pushFollow(FOLLOW_stat_in_body70);
        	    stat();

        	    state._fsp:=state._fsp-1;


        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        match(input,11,FOLLOW_11_in_body73); 


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
// T.g:19:1: stat : ( ID ''='' expr '';'' | method );
function TTParser.stat():Integer;
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
        // ruleBlock:T.g:19:5: ( ID ''='' expr '';'' | method )
        _alt[2]:=2;
        _LA[2,0] := input.LA(1);

        if ( ((_LA[2,0]=ID)) ) then 
        begin
          _alt[2]:=1;
        end
        else if ( ((_LA[2,0]=7)) ) then 
        begin
          _alt[2]:=2;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 2, 0, input);    

        end;
        case (_alt[2]) of 
             1 :
                begin
                // T.g:19:9: ID ''='' expr '';''
                begin
                match(input,ID,FOLLOW_ID_in_stat87); 

                match(input,12,FOLLOW_12_in_stat89); 

                pushFollow(FOLLOW_expr_in_stat91);
                expr();

                state._fsp:=state._fsp-1;

                match(input,13,FOLLOW_13_in_stat93); 


                end;
                end;
             2 :
                begin
                // T.g:20:9: method
                begin
                pushFollow(FOLLOW_method_in_stat103);
                method();

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
end;// $ANTLR start "expr"
// T.g:23:1: expr : mul ( ''+'' mul )* ;
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
        // ruleBlockSingleAlt:T.g:23:5: ( mul ( ''+'' mul )* )
        // T.g:23:9: mul ( ''+'' mul )*
        begin
        pushFollow(FOLLOW_mul_in_expr118);
        mul();

        state._fsp:=state._fsp-1;

        // closureBlock:T.g:23:13: ( ''+'' mul )*
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
        	    // T.g:23:14: ''+'' mul
        	    begin
        	    match(input,14,FOLLOW_14_in_expr121); 

        	    pushFollow(FOLLOW_mul_in_expr123);
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
// T.g:26:1: mul : atom ( ''*'' atom )* ;
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
        // ruleBlockSingleAlt:T.g:26:5: ( atom ( ''*'' atom )* )
        // T.g:26:9: atom ( ''*'' atom )*
        begin
        pushFollow(FOLLOW_atom_in_mul141);
        atom();

        state._fsp:=state._fsp-1;

        // closureBlock:T.g:26:14: ( ''*'' atom )*
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
        	    // T.g:26:15: ''*'' atom
        	    begin
        	    match(input,15,FOLLOW_15_in_mul144); 

        	    pushFollow(FOLLOW_atom_in_mul146);
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
// T.g:29:1: atom : ( ID | INT );
function TTParser.atom():Integer;
var
  _alt:array [0..255] of Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  ID2:IToken;
  INT3:IToken;

begin
    try 
      try
        // ruleBlock:T.g:34:5: ( ID | INT )
        _alt[5]:=2;
        _LA[5,0] := input.LA(1);

        if ( ((_LA[5,0]=ID)) ) then 
        begin
          _alt[5]:=1;
        end
        else if ( ((_LA[5,0]=INT)) ) then 
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
                // T.g:34:9: ID
                begin
                ID2:=match(input,ID,FOLLOW_ID_in_atom164) as IToken; 

                Writeln('ref '+(IIF(Assigned(ID2), ID2.getText(), ''))+' from method '+(Tmethod_scope(method_stack.peek())).name);

                end;
                end;
             2 :
                begin
                // T.g:35:9: INT
                begin
                INT3:=match(input,INT,FOLLOW_INT_in_atom177) as IToken; 

                Writeln('int '+(IIF(Assigned(INT3), INT3.getText(), ''))+' in method '+(Tmethod_scope(method_stack.peek())).name);

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
end;


 


//Begin Parser Members Implementation
 
//End Parser Members Implementation
end.