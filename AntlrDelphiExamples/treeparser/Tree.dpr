program Tree;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  LangDumpDecl in 'LangDumpDecl.pas',
  LangLexer in 'LangLexer.pas',
  LangParser in 'LangParser.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TLangParser;
  r:IParserRuleReturnScope;
  r0:ITree;
  nodes:ICommonTreeNodeStream;
  walker:TLangDumpDecl;
begin
  //
	input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TLangLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
	parser := TLangParser.CreateWithStream(tokens,nil);
	r := parser.start();
	//	System.out.println("tree: "+((Tree)r.tree).toStringTree());
  Writeln((r.getTree as ITree).toStringTree);
	r0 := r.getTree as ITree;

	nodes := TAntlrCommonTreeNodeStream.Create(r0);
	nodes.setTokenStream(tokens);
  walker := TLangDumpDecl.CreateWithStream(nodes,nil);

  try
    try
    //
      walker.decl();
    except
      on E: Exception do
        Writeln(E.Classname, ': ', E.Message);
    end;
  finally
    parser.Free;
    walker.Free;
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
