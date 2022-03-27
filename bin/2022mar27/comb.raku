#!/usr/bin/env perl6
# 
# comb.raku            26 Mar 2022 

use v6;

say "abc".comb; # (a b c)

for "abc".comb -> $c {
    say "$c";
}
