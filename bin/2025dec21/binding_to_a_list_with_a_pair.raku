#!/usr/bin/env raku
# 
# binding_to_a_list_with_a_pair.raku            21 Dec 2025 

use v6;

{
    my ($n, $m) = ("a", "b");
    say "n: $n, m: $m";  # n: a, m: alpha	beta
    say $m.WHAT; # (Pair)
}


{
    my ($n, $m) = ("a", alpha=>'beta');
    say "n: $n, m: $m";  # n: a, m: alpha	beta
    say $m.WHAT; # (Pair)
}


{
    my ($n, $m) := ("a", alpha=>'beta');
    say "n: $n, m: $m";

## Too few positionals passed to '<anon>'; expected 2 arguments but got 1
##   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025dec21/binding_to_a_list_with_a_pair.raku line 14

}
