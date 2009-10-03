grammar Simple;
options{
language=Delphi;
}

tokens {
	RCURLY='}';
}

@lexer::header{
   JavadocParser, JavadocLexer,
}

@lexer::members {
public
  const JAVADOC_CHANNEL = 1;
public
  nesting:Integer;
  procedure ParseComment();
}

@lexer::membersImp {
procedure TSimpleLexer.ParseComment();
var
  j:ITokenSource;
  tokens:ITokenStream;
  p:TJavadocParser;
begin
    j := TJavadocLexer.CreateWithStream(input,nil);
    tokens := TAntlrCommonTokenStream.CreateWithSource(j);
    tokens.discardTokenType(TJavadocLexer.WS);
    p := TJavadocParser.Create(tokens,nil);
    p.comment();
    p.free;
end;
}

prog : (variable)*
          (method)+
        ;
variable: 'int' ID ('=' expr)? ';'
        ;
method  : 'method' ID '(' ')' {Writeln('enter method '+$ID.text);}
          block
        ;

block   : '{'
            (variable)*
            (statement)+
          '}'
        ;

statement
        : ID '=' expr ';' {Writeln('assignment to '+$ID.text);}
        | 'return' expr ';'
        | block
        ;

expr    : ID
        | INT
        ;

ID      : ('a'..'z'|'A'..'Z')+ ;
INT     : ('0'..'9')+ ;
WS      : (' '|'\t'|'\n'|'\r')+ {$channel:=HIDDEN;}
        ;
LCURLY  : '{' {Inc(nesting);}
        ;
/** If we have a '}' with nesting level 0 then it must match the '{'
 *  (unseen by this grammar) that started an embedded Simple statement
 *  block within a javadoc comment.
 */
RCURLY  : '}'
          {
          if ( nesting<=0 ) then
	  begin
                emit(EOF_TOKEN);
                Writeln('exiting embedded simple');
          end
          else 
                Dec(nesting);
          }
        ;
JAVADOC : '/**'
          {
            // create a new javadoc lexer/parser duo that feeds
            // off the current input stream
            Writeln('enter javadoc');
	    ParseComment();
            // returns a JAVADOC token to the java parser but on a
            // different channel than the normal token stream so it
            // doesn't get in the way.
            $channel := JAVADOC_CHANNEL;
          }
        ;
