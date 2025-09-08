#!/usr/bin/env raku
# 
# pick_roll_etc.raku            07 Sep 2025 

use v6;

say pick(1..6);
# ()

say (1..6).pick;
# 3

say (1..6).roll;
# 3

say (1..6).pick(3);
# (3 6 1)

say (1..6).roll(3);
# (6 5 2)


say pick(2, 1..6);
