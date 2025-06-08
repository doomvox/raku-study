#!/usr/bin/env raku
# 
# old_smartmatch_behavior.raku            08 Jun 2025 

use v6;


say 2 ~~ *.Int;  # True

# pop quiz, true or false?
#   2 gets fed into *


say 0 ~~ *.Int;  # False


say 0.Int;  # 0
