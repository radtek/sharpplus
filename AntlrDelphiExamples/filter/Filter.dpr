program Filter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Antlr,
  T in 'T.pas';

procedure TestMain;
var
  input:ICharStream;
  lex:ITokenSource;
  tokens:ITokenStream;
  t:IToken;

begin
  input := TAntlrStringStream.CreateWithInput('<br> ''a'' /*ttt*/ ab1 //abc'+ #13#10+' <p> 0x3446u');
  lex := TT.CreateWithStream(input,nil);
  tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
  //tokens.toString();
  //System.out.println(tokens);
  while True do
  begin
    t := lex.nextToken();
    if (t=nil) or (t.GetType=EOF) then
      break;
    if t.GetChannel=HIDDEN_CHANNEL then
      Continue;
    Writeln('### '+t.ToString());
  end;

end;

begin
  TestMain;
end.
