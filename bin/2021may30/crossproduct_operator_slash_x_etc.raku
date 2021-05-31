#!/usr/bin/env perl6
# 
# crossproduct_operator_slash_x_etc.raku            30 May 2021 

use v6;

## looking at bruce gray's solution:
##  http://rosettacode.org/wiki/Sum_of_first_n_cubes 

## playing with the component operators used there:

my @n = 1, 2, 3, 4, 5, 6;


say [+] @n;   # 21
say [\+] @n;  # (1 3 6 10 15 21)

# "triangle operator"
# "produce"  (triangular reduction)

say 1 + 2;
# say 1 \+ 2;

say <A B C> X~ <1 2 3>;
# (A1 A2 A3 B1 B2 B3 C1 C2 C3)

say <A B C> X~ 0;
# (A0 B0 C0)

say (1, 3, 5) X+ 1;
# (2 4 6)

say (1, 3, 5) X+ (10, 20, 30);
# (11 21 31 13 23 33 15 25 35)

say @n X** 2;
# (1 4 9 16 25 36)

say @n X** 3;
# (1 8 27 64 125 216)

say (1,3,5) >>**>> 4;  ## parallelizable
# (1 81 625)

say (1,3,5) X** 4;
# (1 81 625)

