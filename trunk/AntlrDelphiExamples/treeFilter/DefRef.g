// START: header
tree grammar DefRef;
options {
  tokenVocab = Cymbol;
  ASTLabelType = ICommonTree;
  filter = true;
  language=Delphi;
}
@members {
}
// END: header

topdown
    :   enterBlock
    |   enterMethod
    |   varDeclaration
    ;

bottomup
    :   exitBlock
    |   exitMethod
    |   assignment
    |   idref
    ;

// S C O P E S

// START: T_BLOCK
enterBlock
    :   T_BLOCK // push scope
    ;
exitBlock
    :   T_BLOCK
    ;
// END: T_BLOCK

// START: method
enterMethod // match method subtree with 0-or-more args
    :   ^(METHOD_DECL typ ID .*) 
        {
        Writeln('line '+IntToStr($ID.getLine())+': def method '+
                           $ID.text);
        }
    ;
exitMethod
    :   METHOD_DECL
    ;
// END: method

// D e f i n e  s y m b o l s

// START: var
varDeclaration // global, parameter, or local variable
    :   ^((ARG_DECL|VAR_DECL) typ ID .?) 
        {
        Writeln('line '+IntToStr($ID.getLine())+': def '+$ID.text);
        }
    ;
// END: var

/** Not included in tree pattern matching directly.  Needed by declarations */
typ 
    :   'float'
    |   'int'
    |   'void'
    ;

// R e s o l v e  I D s

assignment
    :   ^('=' ID .)
        {
        writeln('line '+IntToStr($ID.getLine()));
        }
    ;

// START: idref
idref
    :   {$start.hasAncestor(EXPR)}? ID
    ;
// END: idref
