program Filter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  VecMathLexer in 'VecMathLexer.pas',
  VecMathParser in 'VecMathParser.pas',
  Simplify in 'Simplify.pas',
  Reduce in 'Reduce.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
