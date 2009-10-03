grammar Javadoc;
options{
language=Delphi;
}

@lexer::headerImp{
   SimpleParser, SimpleLexer,
}

@lexer::members {
public
  procedure ParseStatement();
}

@lexer::membersImp {
procedure TJavadocLexer.ParseStatement();
var
  lex:ITokenSource;
  tokens:ITokenStream;
  p:TSimpleParser;
begin
    lex := TSimpleLexer.CreateWithStream(input,nil);
    tokens := TAntlrCommonTokenStream.CreateWithSource(lex);
    //Writeln('tokens='+tokens.ToString);
    p := TSimpleParser.Create(tokens,nil);
    p.statement();
    p.free;
end;
}

comment : ( author )* ;

author  : '@author' ID {Writeln('author '+$ID.text);} ;

ID      : ('a'..'z'|'A'..'Z')+
        ;

SIMPLE  :   '{'
            {
            Writeln('enter embedded Simple escape');
	    ParseStatement();
	    }
            {$channel:=HIDDEN;}
        ;

TEND     : '*/' {emit(EOF_TOKEN);}
          {Writeln('exit javadoc');}
        ;

WS      : (' '|'\t'|'\n'|'\r')+
        ;
