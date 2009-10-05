program Symtbl;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  AntlrTree,
  CymbolLexer in 'CymbolLexer.pas',
  CymbolParser in 'CymbolParser.pas',
  DefRef in 'DefRef.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TCymbolParser;
  r:IParserRuleReturnScope;
  r0:ICommonTree;
  nodes:ICommonTreeNodeStream;
  walker:TDefRef;
begin
  //
	input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TCymbolLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
	parser := TCymbolParser.CreateWithStream(tokens,nil);
	r := parser.compilationUnit;
	//	System.out.println("tree: "+((Tree)r.tree).toStringTree());
	Writeln('Original Tree:'+(r.getTree as ITree).toStringTree);
	r0 := r.getTree as ICommonTree;

	nodes := TAntlrCommonTreeNodeStream.Create(r0);
	nodes.setTokenStream(tokens);
	walker := TDefRef.Create(nodes,nil);

  //
  walker.bottomup_ptr:= function(intf: TObject): IInterface
  begin
    TDefRef(intf).bottomup();
  end;

  walker.topdown_ptr:= function(intf: TObject): IInterface
  begin
    TDefRef(intf).topdown();
  end;

  try
    try
    //
      walker.downup(r0);
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
