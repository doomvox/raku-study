#!/usr/bin/env perl6
# 
# dd.raku            25 Apr 2021 

## It's at least slightly disconcerting to the beginner,
## that the hash idiom a perl person is likely to use 
## is echoed in a different form by dd.

## Q: should the output of .raku be used as a guide to approved idioms?

use v6;

my %hashola = whun => 1, tew => 2, thuree => 3;

say %hashola;
# {tew => 2, thuree => 3, whun => 1}

dd %hashola;
# Hash %hashola = {:tew(2), :thuree(3), :whun(1)}

say %hashola.raku;
# {:tew(2), :thuree(3), :whun(1)}
