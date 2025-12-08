#!/usr/bin/env raku
# 
# seq_vs_range_array_assign.raku            07 Dec 2025 

use v6;

{
    my @a = 1..3;
    say @a;
}

{
    my @a = 1...3;
    say @a;
}
