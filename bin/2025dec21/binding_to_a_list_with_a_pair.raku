#!/usr/bin/env raku
# 
# binding_to_a_list_with_a_pair.raku            21 Dec 2025 

use v6;

{
    my ($n, $m) := ("a", alpha=>'beta');
    say "n: $n, m: $m";
}


{
    my ($n, $m) := ("a", alpha=>'beta');
}
