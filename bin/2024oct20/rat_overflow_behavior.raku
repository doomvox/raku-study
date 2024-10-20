#!/usr/bin/env raku
# 
# rat_overflow_behavior.raku            20 Oct 2024 

use v6;

my $s = 1_000_000_000_000_000_000_000_000_000;
my $c = 100;

for ($s .. $s + $c) -> $x { 
    my $rat = Rat.new(1, $x);
    
    if $x%100 eq 0 {
        my $*RAT-OVERFLOW = FatRat;
        say $rat.WHAT;
        say "1/x where x $x: ", $rat;
        say "Overflow?" if $rat eq 0.000000000000000000000000001;
    }

}
