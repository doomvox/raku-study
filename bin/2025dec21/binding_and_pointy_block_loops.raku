#!/usr/bin/env raku
# 
# binding_and_pointy_block_loops.raku            21 Dec 2025 

use v6;

## bruce plays with the bug in binding_to_a_list_with_a_pair.raku

my @arr =
        ( "d", "e", "f", "g" ),
        ( "a", "b", "c", Pair.new('alpha','beta') ),
        ( "x", "y", "z", Pair.new('gamma','delta') ),
    ;

    for @arr -> ($m, $n, $o, $p) {
        say ($m, $n, $o, $p).raku;
    }
