#!/usr/bin/env perl6
# 
# vector_distances.raku            24 Jul 2022 

use v6;

# https://unix.stackexchange.com/questions/710834/how-to-compute-the-distance-between-two-adjacent-coordinates/710954#710954



1  2  3 
4  5  6
7  8  9
10 11 12



my @a=lines.rotor(2 => -1).words; for @a -> \x1,\y1,\z1,\x2,\y2,\z2 {say sqrt((x1 - x2)**2 + (y1 - y2)**2 + (z1 - z2)**2)};

