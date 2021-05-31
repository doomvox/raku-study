#!/usr/bin/env perl6
# 
# sorting_a_hash.raku            30 May 2021 

use v6;

my %power = ( 
    godzilla => 8,
    mothera  => 7,
    ghidora  => 4,
    gammera  => 3,
    golem    => 5,
    rhodan   => 6,
    );
say %power;
# {gammera => 3, ghidora => 4, godzilla => 8, golem => 5, mothera => 7, rhodan => 6}

say %power.sort;
# (gammera => 3 ghidora => 4 godzilla => 8 golem => 5 mothera => 7 rhodan => 6)

for %power.sort -> $element {
    # say $element.WHAT; # (Pair)
    say $element;
}
# gammera => 3
# ghidora => 4
# godzilla => 8
# golem => 5
# mothera => 7
# rhodan => 6


my @pairs = ( 
    alpha => 1,
    beta  => 2,
    gamma => 3,
    );


for @pairs -> $p {
    say $p.WHAT;
    }
