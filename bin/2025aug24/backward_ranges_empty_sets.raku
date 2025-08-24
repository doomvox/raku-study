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

## Rlang allows reverse ranges, not Raku
