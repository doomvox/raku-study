#!/usr/bin/env perl6
# 
# alternate_approach_ch2.raku            16 Jan 2022 

use v6;

constant @pents = map ->\n { n *(3*n - 1) div 2 }, 1..*;

my %p = @pents.head(2400).Set;

say @pents.head(2400).combinations(2).first(
    { %p{ .sum } and
      %p{ [R-] .list } }
);


%p{ [+] .list ] 
say @pents.head(2400).combinations(2).first(
    {     %p{  [+] .list }
          and %p{ [R-] .list } }
); 

