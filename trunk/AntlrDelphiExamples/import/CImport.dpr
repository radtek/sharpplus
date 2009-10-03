program CImport;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  CommonLexer in 'CommonLexer.pas',
  Simple_CommonLexer in 'Simple_CommonLexer.pas',
  SimpleLexer in 'SimpleLexer.pas',
  SimpleParser in 'SimpleParser.pas';

procedure TestMain;
var
  input:ICharStream;
  lexer:ITokenSource;
  tokens:ITokenStream;
  parser:TSimpleParser;
begin
//
	input := TANTLRFileStream.Create(ParamStr(1),'');

	lexer := TSimpleLexer.CreateWithStream(input,nil);
  tokens:=TAntlrCommonTokenStream.CreateWithSource(lexer);
{
	for (Object t : tokens.getTokens())
		System.out.println(t);
}
   parser := TSimpleParser.CreateWithStream(tokens,nil);

  try
    try
    //
      parser.t_file;
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
