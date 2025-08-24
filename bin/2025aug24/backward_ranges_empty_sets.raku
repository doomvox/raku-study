#!/usr/bin/env raku
# 
# backward_ranges_empty_sets.raku            24 Aug 2025 

use v6;


for (3..5) {.say; }
# 3
# 4
# 5
say "---";
for (5..3) {.say; }
say "---";
## ---
## ---

## Rlang allows reverse ranges, but not Raku
# > 1:10
#  [1]  1  2  3  4  5  6  7  8  9 10
# > 10:1
#  [1] 10  9  8  7  6  5  4  3  2  1


for (5..3).reverse {.say; }
