#!/usr/bin/env raku
# 
# binding_and_pointy_block_loops.raku            21 Dec 2025 

use v6;

## bruce plays with the bug in binding_to_a_list_with_a_pair.raku

{
    my @arr =
    ( "d", "e", "f", "g" ),
    ( "a", "b", "c", Pair.new('alpha','beta') ),
    ( "x", "y", "z", Pair.new('gamma','delta') ),
    ;

    for @arr -> ($m, $n, $o, $p) {
        say ($m, $n, $o, $p).raku;
    }

    ## ("d", "e", "f", "g")

    ## Too few positionals passed to '<anon>'; expected 4 arguments but got 3 in sub-signature
    ##   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025dec21/binding_and_pointy_block_loops.raku line 15
}
