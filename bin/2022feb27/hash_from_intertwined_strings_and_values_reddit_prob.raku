#!/usr/bin/env perl6
# 
# hash_from_intertwined_strings_and_values_reddit_prob.raku            27 Feb 2022 

use v6;


        @arr.categorize(-> $x { state $cat = Nil; if $x ~~ Str { $cat = $x; Empty } else { $cat } })
