program Polydiff;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  AntlrTree,
  PolyDifferentiator in 'PolyDifferentiator.pas',
  PolyLexer in 'PolyLexer.pas',
  PolyParser in 'PolyParser.pas',
  Simplifier in 'Simplifier.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  parser:TPolyParser;
  r:TPolyParser.IPolyParser_poly_return;
  nodes:ICommonTreeNodeStream;
  differ:TPolyDifferentiator;
  r2:TPolyDifferentiator.IPolyDifferentiator_poly_return;
  reducer:TSimplifier;
  r3:TSimplifier.ISimplifier_poly_return;
begin
//
		input := TANTLRFileStream.Create(ParamStr(1),'');

		// BUILD AST
		lex := TPolyLexer.CreateWithStream(input, nil);
		tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
		parser := TPolyParser.CreateWithStream(tokens, nil);
    r:=parser.poly;
    Writeln('tree='+ (r.Tree as ITree).toStringTree);


		// DIFFERENTIATE
    nodes := TAntlrCommonTreeNodeStream.Create(r.tree);
		nodes.setTokenStream(tokens);
		differ := TPolyDifferentiator.CreateWithStream(nodes,nil);
		r2 := differ.poly();
		Writeln('d/dx='+(r2.tree as ITree).toStringTree());

		// SIMPLIFY / NORMALIZE
    nodes := TAntlrCommonTreeNodeStream.Create(r2.tree);
		nodes.setTokenStream(tokens);
		reducer := TSimplifier.CreateWithStream(nodes,nil);
		r3 := reducer.poly();
		Writeln('simplified='+(r3.tree as ITree).toStringTree());

{
		// CONVERT BACK TO POLYNOMIAL
       	nodes = new CommonTreeNodeStream((Tree)r3.tree);
		nodes.setTokenStream(tokens);
		PolyPrinter printer = new PolyPrinter(nodes);
		PolyPrinter.poly_return r4 = printer.poly();
		System.out.println(r4.st.toString());
}

  try
    try
    //
    except
      on E: Exception do
        Writeln(E.Classname, ': ', E.Message);
    end;
  finally
    reducer.Free;
    differ.Free;
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
