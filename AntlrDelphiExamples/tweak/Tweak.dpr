program Tweak;

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
  parser:TTParser;
  tokens:ITokenStream;
  r:TTParser.method_return;
begin
  //
	input := TANTLRFileStream.Create(ParamStr(1), '');
  lex := TTLexer.CreateWithStream(input,nil);
  tokens := TTokenRewriteStream.CreateWithSource(lex);
	//System.out.println("before, tokens="+tokens);
 	parser := TTParser.CreateWithStream(tokens,nil);

  try
    try
    //
      parser.prog;
      Writeln(tokens.ToString);
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
