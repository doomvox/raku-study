#!/usr/bin/env raku
# 
# rat_overflow_behavior.raku            20 Oct 2024 

use v6;

my $s = 1_000_000_000_000;
my $c = 1000;

for ($s .. $s + $c) -> $x { 
    my $rat = Rat.new(1, $x);
    say "1/x where x $x: ", $rat if $x%100 eq 0;

    say "exact?" if $rat eq 0.000000000000000000000000001;

}
