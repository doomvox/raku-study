#!/usr/bin/env raku
# 
# duckmap_squared_example.raku            17 Jul 2025 

use v6;

say [[1,2,3],[[4,5],6,7]].duckmap( *² ); # OUTPUT: «[9 9]␤»

# [9 9]

