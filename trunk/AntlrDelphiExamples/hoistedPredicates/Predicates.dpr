program Predicates;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  TLexer in 'TLexer.pas',
  TParser in 'TParser.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TTParser;
begin
  input := TANTLRFileStream.Create(ParamStr(1), '');
  lex := TTLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  //System.out.println("tokens="+tokens);
  parser := TTParser.Create(tokens,nil);
  parser.enableEnum:=True;
  try
    try
      parser.stat();
    except on E:Exception do
      Writeln('Exception:'+E.Message);
    end;
  finally
    parser.Free;
  end;
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
