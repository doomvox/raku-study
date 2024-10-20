#!/usr/bin/env raku
# 
# rat_overflow_behavior.raku            20 Oct 2024 

use v6;


for (1 .. 1000) -> $x { 
    my $rat = Rat.new(1, $x);
    say "1/x where x $x: ", $rat if $x%100;
}
