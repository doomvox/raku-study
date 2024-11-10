#!/usr/bin/env raku
# 
# fatrat_new.raku            09 Nov 2024 

use v6;

## FatRat.new does create a FatRat, as expected
my $nfr = FatRat.new(1, $d);
say $nfr.^name, ': ', $nfr.nude;
# FatRat: (1 1000000000000000000000000000000000000000000000)
