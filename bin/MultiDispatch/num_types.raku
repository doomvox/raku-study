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

ecch( 3 );  #  Int: we've got an Int type 3

multi ecch (Rat $n) { 
    say "Rat: we've got an Rat type $n";
}

ecch( 3.3 );   # Rat: we've got an Rat type 3.3



multi ecch (Numeric $n) { 
    say "Numeric: we've got an Numeric type $n";
}

ecch( 3e-3 );
