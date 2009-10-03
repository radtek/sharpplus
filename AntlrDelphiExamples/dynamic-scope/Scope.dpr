program Scope;

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
  input := TAntlrFileStream.Create(ParamStr(1), '');//TAntlrStringStream.CreateWithInput('abc * 123');//new ANTLRFileStream(args[0]);
  lex :=  TTLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  //System.out.println("tokens="+tokens);
  parser := TTParser.CreateWithStream(tokens,nil);

  try
    try
    //
		  parser.prog;

      Writeln('Press enter to terminate ...');
      Readln;
    except
      on E: Exception do
        Writeln(E.Classname, ': ', E.Message);
    end;
  finally
    parser.free;
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
