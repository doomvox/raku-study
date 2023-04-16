#!/usr/bin/env raku
# 
# bg_bag.raku            16 Apr 2023 

use v6;

my %h = (9,9,10,10).Bag; say %h.keys.min; # 10?

