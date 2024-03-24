#!/usr/bin/env raku
# 
# digit_sum.raku            24 Mar 2024 

use v6;

# a component of weekly challenge 261 #1

my @a = (12, 99, 2);

# say @a.map({ $_.Str.split });

for @a -> $n {
    say $n.Str;
}
