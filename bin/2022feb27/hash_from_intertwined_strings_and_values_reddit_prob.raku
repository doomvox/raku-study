#!/usr/bin/env perl6
# 
# hash_from_intertwined_strings_and_values_reddit_prob.raku            27 Feb 2022 

use v6;

# Given data:
my @arr =
 ["real", 12, -5, 77, 61, "diff", 40, 0, "wrong", 88, 8, -51];

## Desired output:
#  {diff => [40, 0], real => [12, -5, 77, 61], wrong => [88, 8, -51]} 

# moon-chilled solution

my $result =  @arr.categorize(-> $x { state $cat = Nil; if $x ~~ Str { $cat = $x; Empty } else { $cat } });
say $result;
# {diff => [40 0], real => [12 -5 77 61], wrong => [88 8 -51]}
