program CMain;

{$APPTYPE CONSOLE}

uses
  {/*FastMM4,
  FastMM4Messages,}
  SysUtils, Antlr,
  CLexer in 'CLexer.pas',
  CParser in 'CParser.pas';

procedure TestMain;
var
  lex:ITokenSource;
  tokens:ITokenStream;
  g:TCParser;
  t:IToken;
begin
//
  lex := TCLexer.CreateWithStream(TANTLRFileStream.Create(ParamStr(1),''),nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  g := TCParser.CreateWithStream(tokens, nil);
{
    t:=lex.nextToken;
    while (t.GetType <> EOF)do
    begin
      Writeln(Format('Token:%s type:%d', [t.getText, t.GetType]));
      t:=lex.nextToken;
    end;
 }
  try
    try
        g.translation_unit();
        Writeln('Please enter to terminate...');
        Readln;
    except on E:ERecognitionException do
        Writeln(E.Message);
    end;
  finally
    g.Free;
  end;

end;

begin
  if ParamCount=0 then
    Writeln('Error:Please specify the input file name.'+sLineBreak+'Usage:CMain input')
  else
  begin
    if not FileExists(ParamStr(1)) then
      Writeln(Format('Error:Input file <%s> does not exists!', [ParamStr(1)]))
    else
      TestMain;
  end;
end.
