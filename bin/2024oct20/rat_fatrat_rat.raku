#!/usr/bin/env raku
# 
# rat_fatrat_rat.raku            20 Oct 2024 

use v6;

my $d = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000;


my $nfr = FatRat.new(1, $d);
say $nfr.^name, ': ', $nfr.nude;



# When denominator $d is too big, instead of a Rat you get a Num (default behavior)
my $badrat = 1 / $d;
say $badrat.^name, ': ', $badrat, ' '; ## Num: 1e-45      
##   note: no .nude method on Num

# Rat.new allows overflow denominators
my $rat = Rat.new(1, $d);   ## doesn't throw an error, and gives you a Rat, not a Num
say $rat.^name, ': ', $rat, ' ';
say $rat.nude;
# Rat: 0.000000000000000000000000000000000000000000001
# (1 1000000000000000000000000000000000000000000000)

# Can cast the overflowed Rat to a FatRat...
my $fat = $rat.FatRat;
say $fat.^name, ': ', $fat.nude;
# FatRat: (1 1000000000000000000000000000000000000000000000)

# Can't cast that FatRat back to a Rat
my $rat2 = $fat.Rat;
say $rat2.^name, ' ', $rat2.nude;
# Cannot convert from FatRat to Rat because denominator is too big


