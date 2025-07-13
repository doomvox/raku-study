#!/usr/bin/env raku
# 
# trig_on_arrays.raku            13 Jul 2025 

use v6;

my @n = (1, 2, 3);
say @n;

say @n.sin;
# 0.1411200080598672

say 3.sin;
# 0.1411200080598672

## Okay: so this misbegotten feature is still there, even with a 2025
