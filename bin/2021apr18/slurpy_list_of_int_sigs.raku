#!/usr/bin/env perl6
# 
# slurpy_list_of_int_sigs.raku            18 Apr 2021 

use v6;

sub f(*@a where {$_.all ~~ Int}) { say @a };

