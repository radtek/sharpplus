unit CIsland;

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

uses JavadocLexer, JavadocParser, SimpleLexer, SimpleParser, Antlr;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  input:ICharStream;
  lex:TSimpleLexer;
  tokens:ITokenStream;
  parser:TSimpleParser;
begin
//
  input := TANTLRFileStream.Create('input','');
  lex := TSimpleLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  //System.out.println("tokens="+tokens);
  parser := TSimpleParser.CreateWithStream(tokens,nil);
  parser.prog();
  parser.Free;
end;

end.
