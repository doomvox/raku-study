#!/usr/bin/env raku
# 
# running_raku_method_on_raku_output.raku            22 Dec 2024 

use v6;

    my $a;
    say $a;  # (Any)

    my $b = $a.raku;
    say $b;  # Any

    my $c = $b.raku;
    say $c;  # "Any"

    my $d = $c.raku;
    say $d;  # "\"Any\""

    my $e = $d.raku;
    say $e;  # "\"\\\"Any\\\"\""

