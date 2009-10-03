// $ANTLR 3.1.2 T.g 2009-07-23 21:41:48
unit TParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

    const WS=6;
    const INT=5;
    const ID=4;
    const EOF=-1;
    const T__7=7;              
type
  TTParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_identifier_in_stat30:IBitSet;
    FOLLOW_enumAsKeyword_in_stat43:IBitSet;
    FOLLOW_ID_in_identifier62:IBitSet;
    FOLLOW_enumAsID_in_identifier70:IBitSet;
    FOLLOW_7_in_enumAsKeyword85:IBitSet;
    FOLLOW_7_in_enumAsID96:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public

    //With this true, enum is seen as a keyword.  False, it's an identifier 
     enableEnum:Boolean; 



    // $ANTLR start "stat"
    // T.g:13:1: stat : ( identifier | enumAsKeyword );
    function stat():Integer;
    // $ANTLR end stat


    // $ANTLR start "identifier"
    // T.g:17:1: identifier : ( ID | enumAsID );
    function identifier():Integer;
    // $ANTLR end identifier


    // $ANTLR start "enumAsKeyword"
    // T.g:22:1: enumAsKeyword : {...}? ''enum'' ;
    function enumAsKeyword():Integer;
    // $ANTLR end enumAsKeyword


    // $ANTLR start "enumAsID"
    // T.g:24:1: enumAsID : {...}? ''enum'' ;
    function enumAsID():Integer;
    // $ANTLR end enumAsID

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
  tokenNames.Add('"''enum''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TTParser.InitBitsets;
begin
  FOLLOW_identifier_in_stat30 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumAsKeyword_in_stat43 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_ID_in_identifier62 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumAsID_in_identifier70 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_7_in_enumAsKeyword85 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_7_in_enumAsID96 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
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

// $ANTLR start "stat"
// T.g:13:1: stat : ( identifier | enumAsKeyword );
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
        // ruleBlock:T.g:13:5: ( identifier | enumAsKeyword )
        _alt[1]:=2;
        _LA[1,0] := input.LA(1);

        if ( ((_LA[1,0]=ID)) ) then 
        begin
          _alt[1]:=1;
        end
        else if ( ((_LA[1,0]=7)) ) then 
        begin
          _LA[1,2] := input.LA(2);

          if ( ((not enableEnum)) ) then 
          begin
            _alt[1]:=1;
          end
          else if ( ((enableEnum)) ) then 
          begin
            _alt[1]:=2;
          end
          else begin
              //Todo:raise ENoViableAltException.CreateNoViable(''
              raise ENoViableAltException.CreateNoViable('ENoViableAltException'
              , 1, 2, input);    

          end;
        end
        else begin
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 1, 0, input);    

        end;
        case (_alt[1]) of 
             1 :
                begin
                // T.g:13:7: identifier
                begin
                pushFollow(FOLLOW_identifier_in_stat30);
                identifier();

                state._fsp:=state._fsp-1;

                Writeln('enum is an ID');

                end;
                end;
             2 :
                begin
                // T.g:14:7: enumAsKeyword
                begin
                pushFollow(FOLLOW_enumAsKeyword_in_stat43);
                enumAsKeyword();

                state._fsp:=state._fsp-1;

                Writeln('enum is a keyword');

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
end;// $ANTLR start "identifier"
// T.g:17:1: identifier : ( ID | enumAsID );
function TTParser.identifier():Integer;
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
        // ruleBlock:T.g:18:5: ( ID | enumAsID )
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
                // T.g:18:7: ID
                begin
                match(input,ID,FOLLOW_ID_in_identifier62); 


                end;
                end;
             2 :
                begin
                // T.g:19:7: enumAsID
                begin
                pushFollow(FOLLOW_enumAsID_in_identifier70);
                enumAsID();

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
end;// $ANTLR start "enumAsKeyword"
// T.g:22:1: enumAsKeyword : {...}? ''enum'' ;
function TTParser.enumAsKeyword():Integer;
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
        // ruleBlockSingleAlt:T.g:22:15: ({...}? ''enum'' )
        // T.g:22:17: {...}? ''enum''
        begin
        if ( not ((enableEnum)) ) then begin
            raise EFailedPredicateException.Create(input, 'enumAsKeyword', 'enableEnum');
        end;
        match(input,7,FOLLOW_7_in_enumAsKeyword85); 


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
    end;
end;// $ANTLR start "enumAsID"
// T.g:24:1: enumAsID : {...}? ''enum'' ;
function TTParser.enumAsID():Integer;
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
        // ruleBlockSingleAlt:T.g:24:10: ({...}? ''enum'' )
        // T.g:24:12: {...}? ''enum''
        begin
        if ( not ((not enableEnum)) ) then begin
            raise EFailedPredicateException.Create(input, 'enumAsID', 'not enableEnum');
        end;
        match(input,7,FOLLOW_7_in_enumAsID96); 


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