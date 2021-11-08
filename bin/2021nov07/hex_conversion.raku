#!/usr/bin/env perl6
# 
# hex_conversion.raku            07 Nov 2021 

use v6;

say :16<DEAD_BEEF>;
# 3735928559

say :16<FFFF>;
# 65535

# To specify a base other than ten, use the colonpair form :radix<number> 


0x0000000000000000000000000000000000000000047546124890225541102135415377465907.Rat.base(10).put;
# 388355321549592156970965297418600041568519

# Note: .Num would inadvertantly (silently) mess with the result:
0x0000000000000000000000000000000000000000047546124890225541102135415377465907.Num.base(10).put;
# 388355321549592131276271723329077324546048


# ===
# Author:  doom@kzsu.stanford.edu

