program CTreeParser;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  AntlrTree,
  SimpleCLexer in 'SimpleCLexer.pas',
  SimpleCParser in 'SimpleCParser.pas',
  SimpleCWalker in 'SimpleCWalker.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TSimpleCParser;
  r:IParserRuleReturnScope;
  nodes:ICommonTreeNodeStream;
  walker:TSimpleCWalker;
begin
  input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TSimpleCLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);

  parser := TSimpleCParser.CreateWithStream(tokens,nil);
  r := parser.prog();
  //r:=parser.variable;
  Writeln('tree='+(r.getTree as ITree).toStringTree());

  if ( parser.getNumberOfSyntaxErrors()>0 ) then
    // don't tree parse if has errors
    Exit;


  nodes := TAntlrCommonTreeNodeStream.Create(r.gettree as ITree);
  nodes.setTokenStream(tokens);
  walker := TSimpleCWalker.CreateWithStream(nodes,nil);

  try
    try
    //
      walker.prog();
    except
      on E: Exception do
        Writeln(E.Classname, ': ', E.Message);
    end;
  finally
    walker.free;
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
