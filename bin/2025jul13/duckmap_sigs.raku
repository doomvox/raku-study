#!/usr/bin/env raku
# 
# duckmap_sigs.raku            15 Jul 2025 

use v6;

{
    <a b c 1 2 3>.duckmap(-> $_ where Numeric { $_ + 1 }).say;
    # (a b c 2 3 4)
}

{
    # This works, but I'm not sure why: 
    <a b c 1 2 3>.duckmap( *.Int + 1 ).say;
    # (a b c 2 3 4)
}

{
    # say "a".Int;
    ## Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏a' (indicated by ⏏)
    }
