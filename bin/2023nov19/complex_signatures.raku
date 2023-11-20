#!/usr/bin/env raku
# 
# complex_signatures.raku            19 Nov 2023 

use v6;


sub echo_int ( Int $a ) {
    say $a;
}
echo_int( 3 );


sub echo_array_int ( Array(Int) $a ) {
    say $a;
}
echo_array_int( (3, 4).Array );


sub echo_array_int_2 ( Array(Int) $a ) {
    say $a;
}
echo_array_int_2( [3, 4] );


echo_array_int_2( ['a', 'b'] );

echo_array_int_2( 7 );

# echo_array_int_2( 'c' );
# Type check failed in binding to parameter '$a'; expected Array(Int) but got Str ("c")


echo_array_int_2( 13, 27 );
