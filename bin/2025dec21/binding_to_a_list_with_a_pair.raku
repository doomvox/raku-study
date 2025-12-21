#!/usr/bin/env raku
# 
# binding_to_a_list_with_a_pair.raku            21 Dec 2025 

use v6.e.PREVIEW;

## Rob found a raku bug:

{ # you can bind a pair to a var
    my $p := alpha=>'beta';
    say $p;      ## alpha => beta
    say $p.WHAT; ## (Pair)
    }

{ # you can bind a list to a list
    my ($n, $m) := ("a", "b");
    say "n: $n    m: $m";  # n: a    m: b
}

{ # you can assign a list to a list even if an element is a pair
    my ($n, $m) = ("a", alpha=>'beta');
    say "n: $n    m: $m";  # n: a    m: alpha	beta
    say $m.WHAT; # (Pair)
}

{ # if you bind a list to a list and one element is a pair, it fails:
    my ($n, $m) := ("a", alpha=>'beta');
    say "n: $n    m: $m";

    ## Too few positionals passed to '<anon>'; expected 2 arguments but got 1
    ##   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025dec21/binding_to_a_list_with_a_pair.raku line 14

    ## Note: this shows the same problem:
    # my ($n, $m) := (alpha=>'beta', "a");

}
