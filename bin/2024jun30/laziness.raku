#!/usr/bin/env raku
# 
# laziness.raku            30 Jun 2024 

use v6;

# Time Schafer raises the point
say (1 .. 100).is-lazy; # False 
say (1 .. Inf).is-lazy; # True
