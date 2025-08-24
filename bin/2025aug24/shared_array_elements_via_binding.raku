#!/usr/bin/env raku
# 
# shared_array_elements_via_binding.raku            24 Aug 2025 

use v6;


my @a = 0,1,3;
my @b = <a b c>;


@a[0] := @b[0];

say @a, @b;
# [a 1 3][a b c]
