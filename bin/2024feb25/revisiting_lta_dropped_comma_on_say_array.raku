#!/usr/bin/env raku
# 
# revisiting_lta_dropped_comma_on_say_array.raku            25 Feb 2024 

use v6;


my @a = < A B C >;

say "output: ", @a[1]; # B


say "output: " @a[1];
# Two terms in a row
