unit CTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Antlr, SimpleCLexer, SimpleCParser, SimpleCWalker;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TSimpleCParser;
  r:IParserRuleReturnScope;
  nodes:ICommonTreeNodeStream;
  walker:TSimpleCWalker;
begin
  input := TANTLRFileStream.Create('input','');
  lex := TSimpleCLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);

  parser := TSimpleCParser.CreateWithStream(tokens,nil);
  r := parser.prog();
  //r:=parser.variable;
  ShowMessage('tree='+(r.getTree as ITree).toStringTree());

  if ( parser.getNumberOfSyntaxErrors()>0 ) then
    // don't tree parse if has errors
    Exit;


  nodes := TAntlrCommonTreeNodeStream.Create(r.gettree as ITree);
  nodes.setTokenStream(tokens);
  walker := TSimpleCWalker.CreateWithStream(nodes,nil);
  walker.prog();
  walker.free;
  parser.Free;

end;

end.
