#!/usr/bin/env perl6
# 
# anon_var_vs_topic.raku            13 Sep 2021 

use v6;

# RAKU
# Q: isn't this a bug?  
# Why is $++ acting as though I'm checking $_ there?

# raku -e 'for 1 .. 100 { last if $++ > 20; say $_ if .is-prime; }'
# 2
# 3
# 5
# 7
# 11
# 13
# 17
# 19

for 1 .. 100 {
    last if $++ > 20;
    say $_ if .is-prime;
}



# ===
# Author:  doom@kzsu.stanford.edu

