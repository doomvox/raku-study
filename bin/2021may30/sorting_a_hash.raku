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


say %power.sort;
