#!/usr/bin/env raku
# 
# num_types.raku            11 Aug 2024 

use v6;


multi ecch (Num $n) { 
    say "1: we've got a Num type $n";
}

multi ecch (Int $n) { 
    say "Int: we've got an Int type $n";
}

multi ecch (Rat $n) { 
    say "Rat: we've got a Rat type $n";
}

multi ecch (Numeric $n) { 
    say "Numeric: we've got a Numeric type $n";
}

multi ecch (Real $n) { 
    say "Real: we've got a Real type $n";
}

ecch( 3 );     #  Int: we've got an Int type 3
ecch( 3.3 );   #  Rat: we've got a Rat type 3.3
ecch( 3e-3 );  #  1: we've got a Num type 0.003
ecch( 0.003 ); #  Rat: we've got a Rat type 0.003

my Cool $i;
$i = 3e-3;
ecch( $i );    #  1: we've got a Num type 0.003

## Conway's Constraint slide: tries rules in order of specifity, so:  Int -> Num -> Str
