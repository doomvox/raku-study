#!/usr/bin/env perl6
# 
# comb.raku            26 Mar 2022 

use v6;

say "abc".comb; # (a b c)

for "abc".comb -> $c {
    say "$c";
}
# a
# b
# c
say "---";

say 333.comb; # (3 3 3)

for 123.comb -> $d {
    say $d;
    }
# 1
# 2
# 3

