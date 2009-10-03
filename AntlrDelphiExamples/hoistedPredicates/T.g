grammar T;

options {
language=Delphi;
k=2;
}

@members {
//With this true, enum is seen as a keyword.  False, it's an identifier 
 enableEnum:Boolean; 
}

stat: identifier    {Writeln('enum is an ID');}
    | enumAsKeyword {Writeln('enum is a keyword');}
    ;

identifier
    : ID
    | enumAsID
    ;

enumAsKeyword : {enableEnum}? 'enum' ;

enumAsID : {not enableEnum}? 'enum' ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	('0'..'9')+
    ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+
        { $channel:=HIDDEN; }
    ;    
