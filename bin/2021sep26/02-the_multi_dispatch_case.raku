#!/usr/bin/env perl6
#                                                                         d
# 02-the_multi_dispatch_case.raku                20 Sep 2021 

use v6;

sub MAIN( $interations = 1 ) {
    my @items = ( 666, 2.71, 𝑒, "01", "whun", ('a', 'b', 'c').Set );
    for 1 .. $interations -> $i {
        say $i;

        for @items -> $item  {
            say "Checking: " ~ $item;
            say whats_my_type( $item );
        }
    }
}

multi sub whats_my_type (Int $item) {
    return "This is an Int";
}

multi sub whats_my_type (Rat $item) {
    return "   Caught a Rat";
}

multi sub whats_my_type (Numeric $item) {
    return "   This is a Numeric (but not an Int or a Rat)";
}

multi sub whats_my_type (Str $item) {
    return "   This is a Str";
}

multi sub whats_my_type ('whun' ) {
    return "   Detected special value 'whun'"; 
}

multi sub whats_my_type ($item) {  # Behaves like the "default" for given/when.
    return "   I guess this is a: " ~ $item.^name;
}


# Checking: 666
#    This is an Int
# Checking: 2.71
#    Caught a Rat
# Checking: 2.718281828459045
#    This is a Numeric (but not an Int or a Rat)
# Checking: 01
#    This is a Str
# Checking: whun
#    Detected special value 'whun'
# Checking: a b c
#    I guess this is a: Set

## Similar behavior to the given/when version, but not identical



# ===
# Author:  doom@kzsu.stanford.edu

