#!/usr/bin/env raku
# 
# ranges_and_sequences_oh_my.raku            10 Aug 2025 

use v6;

say 0...5,3...7;
# (0 1 2 3 4 7)

say 0...5;
# (0 1 2 3 4 5)


put 0..5,3..7;
# 0..53..7
# 0 1 2 3 4 53 4 5 6 7
