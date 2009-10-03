grammar Simple;
options {
language=Delphi;
}

// pull in all rules even if not referenced so comments etc... work
import CommonLexer; 

t_file : 'program' ID ';' {Writeln('found program '+$ID.text);}
       decl+
     ;

decl : 'var' ID ('=' expr)? ';'
       {Writeln('found var '+$ID.text);}
     ;

expr : INT | FLOAT ;
