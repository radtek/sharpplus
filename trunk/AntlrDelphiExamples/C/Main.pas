unit Main;

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

uses CLexer, CParser, Antlr;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  lex:TCLexer;
  tokens:TAntlrCommonTokenStream;
  g:TCParser;
begin
//
  lex := TCLexer.CreateWithStream(TANTLRFileStream.Create('input',''));
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  g := TCParser.Create(tokens);

  try
      g.translation_unit();
  except on E:ERecognitionException do
      ShowMessage(E.Message);
  end;

end;

end.
