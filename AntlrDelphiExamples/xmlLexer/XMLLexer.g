{** XML parser by Oliver Zeigermann October 10, 2005 *}
lexer grammar XMLLexer;

options
{
language=Delphi;
}

DOCUMENT
    :  XMLDECL? WS? DOCTYPE? WS? ELEMENT WS? 
    ;

fragment DOCTYPE
    :
        '<!DOCTYPE' WS rootElementName=GENERIC_ID 
        { Writeln('ROOTELEMENT: '+rootElementName.getText()); }   
        WS
        ( 
            ( 'SYSTEM' WS sys1=VALUE
                { Writeln('SYSTEM: '+sys1.getText()); }   
                
            | 'PUBLIC' WS pub=VALUE WS sys2=VALUE
                { Writeln('PUBLIC: '+pub.getText()); }   
                { Writeln('SYSTEM: '+sys2.getText()); }   
            )
            ( WS )?
        )?
        ( dtd=INTERNAL_DTD
            { Writeln('INTERNAL DTD: '+dtd.getText()); }   
        )?
		'>'
	;

fragment INTERNAL_DTD : '[' (options {greedy=false;} : .)* ']' ;

fragment PI :
        '<?' target=GENERIC_ID WS? 
          { Writeln('PI: '+target.getText()); }
        ( ATTRIBUTE WS? )*  '?>'
	;

fragment XMLDECL :
        '<?' ('x'|'X') ('m'|'M') ('l'|'L') WS? 
          { Writeln('XML declaration'); }
        ( ATTRIBUTE WS? )*  '?>'
	;


fragment ELEMENT
    : ( START_TAG
            (ELEMENT
            | t=PCDATA
                { Writeln('PCDATA: "'+$t.getText()+'"'); }
            | t=CDATA
                { Writeln('CDATA: "'+$t.getText()+'"'); }
            | t=COMMENT
                { Writeln('Comment: "'+$t.getText()+'"'); }
            | pi=PI
            )*
            END_TAG
        | EMPTY_ELEMENT
        )
    ;

fragment START_TAG 
    : '<' WS? name=GENERIC_ID WS?
          { Writeln('Start Tag: '+name.getText()); }
        ( ATTRIBUTE WS? )* '>'
    ;

fragment EMPTY_ELEMENT 
    : '<' WS? name=GENERIC_ID WS?
          { Writeln('Empty Element: '+name.getText()); }
        ( ATTRIBUTE WS? )* '/>'
    ;

fragment ATTRIBUTE 
    : name=GENERIC_ID WS? '=' WS? value=VALUE
        { Writeln('Attr: '+name.getText()+'='+value.getText()); }
    ;

fragment END_TAG 
    : '</' WS? name=GENERIC_ID WS? '>'
        { Writeln('End Tag: '+name.getText()); }
    ;

fragment COMMENT
	:	'<!--' (options {greedy=false;} : .)* '-->'
	;

fragment CDATA
	:	'<![CDATA[' (options {greedy=false;} : .)* ']]>'
	;

fragment PCDATA : (~'<')+ ; 

fragment VALUE : 
        ( '\"' (~'\"')* '\"'
        | '\'' (~'\'')* '\''
        )
	;

fragment GENERIC_ID 
    : ( LETTER | '_' | ':') 
        ( options {greedy=true;} : LETTER | '0'..'9' | '.' | '-' | '_' | ':' )*
	;

fragment LETTER
	: 'a'..'z' 
	| 'A'..'Z'
	;

fragment WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+
    ;    

