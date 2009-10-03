program Fuzzy;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  FuzzyJava in 'FuzzyJava.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
begin
  input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TFuzzyJava.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  Writeln(tokens.toString());
end;

begin
  if ParamCount=0 then
    Writeln('Error:Please specify the input file name.'+sLineBreak
      +Format('Usage:%s input', [ExtractFileName(ParamStr(0))]))
  else
  begin
    if not FileExists(ParamStr(1)) then
      Writeln(Format('Error:Input file <%s> does not exists!', [ParamStr(1)]))
    else
      TestMain;
  end;
end.
