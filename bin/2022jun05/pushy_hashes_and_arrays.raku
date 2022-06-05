#!/usr/bin/env perl6
# 
# pushy_hashes_and_arrays.raku            05 Jun 2022 

use v6;


## Starting with an example in the docs:
my @a = <a b c>;
my @b = <d e f>;
@a.push: @b;

say @a;

# say @a.elems;               # OUTPUT: «4␤» 
# say @a[3].join;             # OUTPUT: «def␤»

