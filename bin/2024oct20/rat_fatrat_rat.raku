#!/usr/bin/env raku
# 
# rat_fatrat_rat.raku            20 Oct 2024 

use v6;

my $d = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000;

# When denominator $d is too big, instead of a Rat you get a Num (default behavior)
my $badrat = 1 / $d;
say $badrat.^name, ': ', $badrat, ' '; ## Num: 1e-45      
##   note: no .nude method on Num

# Rat.new allows overflow denominators
my $rat = Rat.new(1, $d);   ## doesn't throw an error, and gives you a Rat, not a Num
say $rat.^name, ' ', $rat, ' ', $rat.nude;
# Rat 0.000000000000000000000000000000000000000000001 (1 1000000000000000000000000000000000000000000000)

my $fat = $rat.FatRat;
say $fat.^name, ' ', $fat.nude;
# FatRat (1 1000000000000000000000000000000000000000000000)

my $rat2 = $fat.Rat;
say $rat2.^name, ' ', $rat2.nude;
# Cannot convert from FatRat to Rat because denominator is too big
