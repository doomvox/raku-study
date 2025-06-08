#!/usr/bin/env raku
# 
# matching_against_booleans.raku            08 Jun 2025 

use v6;

my $b1 = True;
my $b2 = False;

if $b1 {
    say "Of course, true is true";
}


if $b1 ~~ True {
    say "hm?";
    
}
