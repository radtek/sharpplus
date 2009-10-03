tree grammar Reduce;
options {
    tokenVocab=VecMath;      // use tokens from VecMath.g
    ASTLabelType=ICommonTree; // we're using CommonTree nodes
    output=AST;              // build new ASTs from input AST
    filter=true;             // tree pattern matching mode
    backtrack=true;          // allow backtracking if it's needed
    language=Delphi;
}

// START: strategy
bottomup // match these rules bottom-up
    :  xPlusx
    |  multBy2
    |  combineShifts
    ;
// END: strategy

// START: xPlusx
// x+x -> 2*x  (notation INT['2'] creates an INT node with text '2')
xPlusx: ^('+' i=INT j=INT {Equal($i.int,$j.int)}?) -> ^(MULT['*'] INT['2'] $j);
// END: xPlusx

// START: multBy2
// 2*x to be x<<1
multBy2
    :   ^('*' x=INT {2=$x.int}? y=.) -> ^(SHIFT['<<'] $y INT['1'])
    |   ^('*' a=. b=INT {2=$b.int}?) -> ^(SHIFT['<<'] $a INT['1'])
    ;
// END: multBy2

// START: combineShifts
combineShifts // x<<n<<m to be x<<(n+m)
    :  ^(SHIFT ^(SHIFT e=. n=INT) m=INT)
       -> ^(SHIFT['<<'] $e INT[IntToStr($n.int+$m.int)])
	;
// END: combineShifts
