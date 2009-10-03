
grammar T;

options {
language=Delphi;
k=2;
}


@members {
 tokens:ITokenRewriteStream; // avoid typecasts all over
 startT:IToken;
}

prog
@init {
    tokens := input as ITokenRewriteStream; 
    startT := input.LT(1);
}
    :   m=method+
       {
        tokens.insertBefore(startT,'public class Wrapper {'+sLineBreak);
        // note the reference to the last token matched for method:
        tokens.insertAfter($method.stop, sLineBreak+'}'+sLineBreak);
	//NG:Writeln(TMethod_Return(m).s);
       }
    ;

method returns [String s]
    :   m='method' ID '(' ')' body
        {tokens.replace(m, 'public void');
	 $s:='test';
	}
    ; 

body
scope {
    // decls is on body's local variable stack but is visible to
    // any rule that body calls such as stat.  From other rules
    // it is referenced as $body::decls
    // From within rule body, you can use $decls shorthand
    IJclSet decls;
    IJclIterator it;
}
@init {
    $body::decls := TJclHashSet.Create(16,false);
}
    :   lcurly='{' stat* '}'
        {
        // dump declarations for all identifiers seen in statement list
        $body::it := $body::decls.First();
        while ( $body::it.hasNext() ) do
            tokens.insertAfter($lcurly, sLineBreak+'int '+string($body::it.next())+';');
	    
        
        }
    ;

stat:   ID '=' expr ';' {$body::decls.add(TObject($ID.text));} // track left-hand-sides
    ;

expr:   mul ('+' mul)* 
    ;

mul :   atom ('*' atom)*
    ;

atom:   ID
    |   INT
    ;

ID  :   ('a'..'z'|'A'..'Z')+ ;

INT :   ('0'..'9')+ ;

WS  :   (' '|'\t'|'\r'|'\n')+ {$channel:=HIDDEN;}
    ;
