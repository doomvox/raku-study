#!/usr/bin/env perl6
# 
# deepmap_and_containers.raku            19 Dec 2021 

use v6;


my @a = [1, [2, 3]];
my @b = @a.deepmap: *.clone;
say @b[0].VAR.^name;     # Scalar, this is OK
say @b[1].^name;         # Array, as expected
say @b[1][0].VAR.^name;  # Int, why?
@b[0] = 4;               # this works
@b[1][0] = 5;            # error: Cannot assign to an immutable value

