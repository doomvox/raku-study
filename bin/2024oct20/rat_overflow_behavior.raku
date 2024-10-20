#!/usr/bin/env raku
# 
# rat_overflow_behavior.raku            20 Oct 2024 

use v6;


for (0 .. 1000) -> $x { 
    my $fr = FatRat.new(1, $x);
    say $fr;
}
