program Composite;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  Java_JavaAnnotations in 'Java_JavaAnnotations.pas',
  Java_JavaDecl in 'Java_JavaDecl.pas',
  Java_JavaExpr in 'Java_JavaExpr.pas',
  Java_JavaLexerRules in 'Java_JavaLexerRules.pas',
  Java_JavaStat in 'Java_JavaStat.pas',
  JavaLexer in 'JavaLexer.pas',
  JavaParser in 'JavaParser.pas';



procedure TestMain;
var
  input:ICharStream;
  lexer:ITokenSource;
  tokens:ITokenStream;
  parser:TJavaParser;

begin
  input:=TANTLRFileStream.Create(ParamStr(1), '');
  lexer:=TJavaLexer.CreateWithStream(input,nil);
  tokens:=TAntlrCommonTokenStream.Create;
  tokens.setTokenSource(lexer);
  parser:=TJavaParser.CreateWithStream(tokens, nil);

  try
    try
    //
      parser.compilationUnit;
      Writeln(Format('Parse %s OK', [ParamStr(1)]));
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
