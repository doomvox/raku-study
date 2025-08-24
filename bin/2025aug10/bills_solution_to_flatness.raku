#!/usr/bin/env raku
# 
# bills_solution_to_flatness.raku            24 Aug 2025 

use v6;


say (0...4; 2...6; 0...2).flat;
# (0 1 2 3 4 2 3 4 5 6 0 1 2)

say (0..4; 2..6; 0..2).flat;
# (0 1 2 3 4 2 3 4 5 6 0 1 2)

say (0..4, 2..6, 0..2).flat;
# (0 1 2 3 4 2 3 4 5 6 0 1 2)

say (4..0, 2..6, 0..2).flat;
# (2 3 4 5 6 0 1 2)

say (4...0, 2..6, 0..2).flat;
# (4 3 2 1 0 2..6 0..2)

## This does what bill wants:
say (4...0; 2..6; 0..2).flat;
# (4 3 2 1 0 2 3 4 5 6 0 1 2)
