#!/usr/bin/env raku
# 
# rat_fatrat_rat.raku            20 Oct 2024 

use v6;

my $d = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000;

# new syntax Rat allows overflow denominators
my $rat = Rat.new(1, $d);

say $rat, ' ', $rat.nude;
# 0.000000000000000000000000000000000000000000001 (1 1000000000000000000000000000000000000000000000)

my $fat = $rat.FatRat;
say $fat, ' ', $fat.nude;
