program SimplifyTest;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  AntlrTree,
  Simplify in 'Simplify.pas',
  VecMathLexer in 'VecMathLexer.pas',
  VecMathParser in 'VecMathParser.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TVecMathParser;
  r:IParserRuleReturnScope;
  r0:ICommonTree;
  nodes:ICommonTreeNodeStream;
  walker:TSimplify;
begin
  //
	input := TANTLRFileStream.Create(ParamStr(1),'');
  lex := TVecMathLexer.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
	parser := TVecMathParser.CreateWithStream(tokens,nil);
	r := parser.prog();
	//	System.out.println("tree: "+((Tree)r.tree).toStringTree());
	Writeln('Original Tree:'+(r.getTree as ITree).toStringTree);
	r0 := r.getTree as ICommonTree;

	nodes := TAntlrCommonTreeNodeStream.Create(r0);
	nodes.setTokenStream(tokens);
	walker := TSimplify.Create(nodes,nil);

  //
  walker.bottomup_ptr:= function(intf: TObject): IInterface
  begin
    Exit(TSimplify(intf).bottomup());
  end;

  walker.topdown_ptr:= function(intf: TObject): IInterface
  begin
    Exit(TSimplify(intf).topdown());
  end;

  try
    try
    //
      r0:=walker.downup(r0) as ICommonTree;
      Writeln('Rewrited Tree:'+r0.toStringTree());
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

