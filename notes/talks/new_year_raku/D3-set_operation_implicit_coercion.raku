#!/usr/bin/env perl6
# 
# D3-set_operation_implicit_coercion.raku

# modified from:
#  set_difference_array_and_set.raku            21 Aug 2021 

use v6;
{
    my @monsters      = < godzilla grendel wormface blob >;
    my $cool_monsters = < godzilla ghidra mothera >.Set;

    say @monsters.WHAT;          # (Array)
    say $cool_monsters.WHAT;     # (Set)

    my $just_monsters = @monsters (-) $cool_monsters;  # set difference 
    say $just_monsters; # Set(blob grendel wormface)
}

{
    my %threat_level   = godzilla => 8, grendel => 2, ghidra => 9,  blob => 3;
    my %coolness_level = godzilla => 7, grendel => 3, ghidra => 10, blob => 3;

    my %result = %threat_level.Mix (-) %coolness_level.Mix;
    say %result;
    # {ghidra => -1, godzilla => 1, grendel => -1}

    my %non_result = %threat_level (-) %coolness_level; # treated as sets (membership is Bool == True)
    say %non_result;  # {}  identical sets, difference is empty set
}


# ===
# Author:  doom@kzsu.stanford.edu

