program Xml;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  XMLLexer in 'XMLLexer.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;

begin
	try
    input := TANTLRFileStream.Create(ParamStr(1), '');
    lex := TXMLLexer.CreateWithStream(input,nil);
    while (lex.nextToken().GetType <> EOF)do
    begin

    end;
	except on E:Exception do
	  Writeln('exception: '+E.Message);
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
