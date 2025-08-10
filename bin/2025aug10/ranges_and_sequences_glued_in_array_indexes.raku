#!/usr/bin/env raku
# 
# ranges_and_sequences_glued_in_array_indexes.raku            10 Aug 2025 

use v6;

my @a = 0..50;
say @a[ 3, 5 ... 11, 13..15 ];
(3 5 7 9 11 3)
