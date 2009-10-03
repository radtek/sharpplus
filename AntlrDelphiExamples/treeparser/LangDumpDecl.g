tree grammar LangDumpDecl;
options {
    language=Delphi;
    tokenVocab=Lang;
    ASTLabelType = ITree;
}

decl : ^(TDECL dtype declarator)
       // label.start, label.start, label.text
       {Writeln('int '+$declarator.text);}
     ;

dtype : INTTYPE ;

declarator
     : ID
     ;
