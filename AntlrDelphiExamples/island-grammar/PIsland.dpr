program PIsland;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  JavadocLexer in 'JavadocLexer.pas',
  JavadocParser in 'JavadocParser.pas',
  SimpleLexer in 'SimpleLexer.pas',
  SimpleParser in 'SimpleParser.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:TSimpleLexer;
  tokens:ITokenStream;
  parser:TSimpleParser;
begin
//
  input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TSimpleLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  //System.out.println("tokens="+tokens);
  parser := TSimpleParser.CreateWithStream(tokens,nil);

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

