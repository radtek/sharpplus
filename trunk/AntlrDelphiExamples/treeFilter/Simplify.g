tree grammar Simplify;
options {
    tokenVocab=VecMath;      // use tokens from VecMath.g
    ASTLabelType=ICommonTree; // we're using CommonTree nodes
    output=AST;              // build ASTs from input AST
    filter=true;             // tree pattern matching mode
    backtrack=true;          // allow backtracking if necessary
    language=Delphi;
}

// START: strategy
topdown : scalarVectorMult ; // tell ANTLR when to attempt which rule
bottomup: zeroX | xZero ;
// END: strategy

// START: scalarVectorMult
scalarVectorMult : ^('*' INT ^(VEC (e+=.)+)) -> ^(VEC ^('*' INT $e)+) ;
// END: scalarVectorMult

// START: multByZero
zeroX : ^('*' a=INT b=INT {0=$a.int}?) -> $a ; // 0*x -> 0
xZero : ^('*' a=INT b=INT {0=$b.int}?) -> $b ; // x*0 -> 0
// END: multByZero
