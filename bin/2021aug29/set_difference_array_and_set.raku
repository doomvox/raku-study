#!/usr/bin/env perl6
# 
# mixed_type_set_operations_with_arrays_and_hashes.raku            21 Aug 2021 

mixed_type_set_operations_with_arrays_and_hashes.raku

use v6;

{
    my @monsters      = < godzilla grendel wormface blob >;
    my $cool_monsters = < godzilla ghidra mothera >.Set;

    say @monsters.WHAT;          # (Array)
    say $cool_monsters.WHAT;     # (Set)

    my $just_monsters = @monsters (-) $cool_monsters;
    say $just_monsters; # Set(blob grendel wormface)

}

{
    my %threat_level   = godzilla => 9, grendel => 3, wormface => 7, blob => 4;
    my %coolness_level = godzilla => 9, grendel => 2, wormface => 8, blob => 2;

    my %result = %threat_level.Mix (-) %coolness_level.Mix;
    say %result;
    # {blob => 2, grendel => 1, wormface => -1}

    my %result = %threat_level (-) %coolness_level;
    say %result;  # {}
}


# ===
# Author:  doom@kzsu.stanford.edu

