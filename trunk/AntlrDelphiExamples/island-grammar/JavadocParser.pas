// $ANTLR 3.1.2 Javadoc.g 2009-07-23 21:43:22
unit JavadocParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr;

    const WS=7;
    const ID=4;
    const EOF=-1;
    const T__8=8;
    const TEND=6;
    const SIMPLE=5;              
type
  TJavadocParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_author_in_comment47:IBitSet;
    FOLLOW_8_in_author60:IBitSet;
    FOLLOW_ID_in_author62:IBitSet;
    

    // delegates
    // delegators
    

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public


    // $ANTLR start "comment"
    // Javadoc.g:31:1: comment : ( author )* ;
    function comment():Integer;
    // $ANTLR end comment


    // $ANTLR start "author"
    // Javadoc.g:33:1: author : ''@author'' ID ;
    function author():Integer;
    // $ANTLR end author

    // Delegated rules

  protected
  end;

implementation
uses JclStacks,
    // delegates
    // delegators
 
    JclHashSets;

function TJavadocParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TJavadocParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"ID"');
  tokenNames.Add('"SIMPLE"');
  tokenNames.Add('"TEND"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"''@author''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
  

end;

    // Delegated rules

procedure TJavadocParser.InitBitsets;
begin
  FOLLOW_author_in_comment47 := TAntlrBitSet.CreateWithBits([$0000000000000102]);
  FOLLOW_8_in_author60 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_ID_in_author62 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TJavadocParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TJavadocParser.GetGrammarFileName():String;
begin
  Result:='Javadoc.g'; 
end;

// $ANTLR start "comment"
// Javadoc.g:31:1: comment : ( author )* ;
function TJavadocParser.comment():Integer;
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
        // ruleBlockSingleAlt:Javadoc.g:31:9: ( ( author )* )
        // Javadoc.g:31:11: ( author )*
        begin
        // closureBlock:Javadoc.g:31:11: ( author )*
        repeat 
            _alt[1]:=2;
            _LA[1,0] := input.LA(1);

            if ( ((_LA[1,0]=8)) ) then 
            begin
              _alt[1]:=1;
            end

            ;

            case (_alt[1]) of
        	 1 :
        	    begin
        	    // Javadoc.g:31:13: author
        	    begin
        	    pushFollow(FOLLOW_author_in_comment47);
        	    author();

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
end;// $ANTLR start "author"
// Javadoc.g:33:1: author : ''@author'' ID ;
function TJavadocParser.author():Integer;
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
        // ruleBlockSingleAlt:Javadoc.g:33:9: ( ''@author'' ID )
        // Javadoc.g:33:11: ''@author'' ID
        begin
        match(input,8,FOLLOW_8_in_author60); 

        ID1:=match(input,ID,FOLLOW_ID_in_author62) as IToken; 

        Writeln('author '+(IIF(Assigned(ID1), ID1.getText(), '')));

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