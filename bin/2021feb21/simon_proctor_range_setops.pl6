#!/usr/bin/env perl6
# 
# simon_proctor_range_setops.pl6            21 Feb 2021 

use v6;

# https://github.com/Scimon/p6-Range-SetOps

use Range::SetOps;
say 10 (elem) (1.5 .. 15.2); # True
say 20 (elem) (1.5 .. 15.2); # False

# say "===";
# ## Here, we show that I don't understand junctions well:

# say 10 == any(1.5 .. 15.2);
# # any(False, False, False, False, False, False, False, False, False, False, False, False, False, False)
# ### ?

# say 20 == any(1.5 .. 15.2);
# # any(False, False, False, False, False, False, False, False, False, False, False, False, False, False)


# ∈

say (1,2,3) (<) (2,3,1)  # False?
say (1,2) (<) (2,3,1)  # 
