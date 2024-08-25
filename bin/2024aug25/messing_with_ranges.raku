#!/usr/bin/env raku
# 
# messing_with_ranges.raku            25 Aug 2024 

use v6;


say (1..3)[2];  # 3

say (1..3).sum; # 6

say (1..3).WHAT; # (Range)
