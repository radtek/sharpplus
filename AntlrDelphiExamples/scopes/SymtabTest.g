grammar SymtabTest;

options {
language=Delphi;
}

scope Symbols {
  IJclIntfList names;
}

@header {
  JclArrayLists,
}

@members {
 level:Integer;
}

prog:   globals (method)*
    ;

globals
scope Symbols;
@init {
    Inc(Level);
    $Symbols::names := TJclIntfArrayList.Create(50);
}
    :   (decl)*
        {
        Writeln('globals: '+sLineBreak+Get_List_Msg($Symbols::names));
        Dec(Level);
        }
    ;

method
    :   'method' ID '(' ')' block
    ;

block
scope Symbols;
@init {
    Inc(Level);
    $Symbols::names := TJclIntfArrayList.Create(50);
}
    :   '{' (decl)* (stat)* '}'
        {
        Writeln('level '+IntToStr(level)+' symbols: '+sLineBreak+Get_List_Msg($Symbols::names));
        Dec(Level);
        }
    ;

stat:   ID '=' INT ';'
    |   block
    ;

decl:   'int' ID ';'
        {$Symbols::names.add($ID);} // add to current symbol table
    ;

ID  :   ('a'..'z')+
    ;

INT :   ('0'..'9')+
    ;

WS  :   (' '|'\n'|'\r')+ {$channel:=HIDDEN;}
    ;
