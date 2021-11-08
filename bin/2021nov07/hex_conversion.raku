#!/usr/bin/env perl6
# 
# hex_conversion.raku            07 Nov 2021 

use v6;

say :16<DEAD_BEEF>;
# 3735928559

say :16<FFFF>;
# 65535

# To specify a base other than ten, use the colonpair form :radix<number> 


"0x0000000000000000000000000000000000000000047546124890225541102135415377465907" | raku -ne '.Rat.base(10).put;' 


# ===
# Author:  doom@kzsu.stanford.edu

