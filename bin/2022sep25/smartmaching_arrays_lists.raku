#!/usr/bin/env perl6
# 
# smartmaching_arrays_lists.raku            25 Sep 2022 

use v6;

my @a = 1, 2, 3;
say @a; # [1 2 3]

say so @a eqv (1, 2, 3);
# False

say so @a ~~ (1, 2, 3);
