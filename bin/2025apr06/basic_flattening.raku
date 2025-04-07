#!/usr/bin/env raku
# 
# basic_flattening.raku            06 Apr 2025 

use v6;

my $structure = [[1, 2, 3], [(4, 5), 6, 7]] ;


say $structure.flat; # OUTPUT: «([1 2 3] [(4 5) 6 7])␤»
say [[1, 2, 3], [(4, 5), 6, 7]]».List.flat; # OUTPUT: «(1 2 3 4 5 6 7)␤»

