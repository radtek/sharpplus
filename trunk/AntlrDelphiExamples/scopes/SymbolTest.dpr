program SymbolTest;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  SymtabTestLexer in 'SymtabTestLexer.pas',
  SymtabTestParser in 'SymtabTestParser.pas';

procedure TestMain;

var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TSymtabTestParser;
begin
  input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TSymtabTestLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  //System.out.println("tokens="+tokens);
  parser := TSymtabTestParser.CreateWithStream(tokens,nil);


  try
    try
    //
		  parser.prog();
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
