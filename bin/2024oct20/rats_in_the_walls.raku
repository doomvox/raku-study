#!/usr/bin/env raku
# 
# rats_in_the_walls.raku            05 Nov 2024 

use v6;

## Starting again, looking at some oddities in Fat/FatRat/etc behavior.


## https://docs.raku.org/language/numerics#Rat

## "The last Rational type-- FatRat-- keeps all of the precision you
## ask of it, storing the numerator and denominator as two Int
## objects."

## "A FatRat is more infectious than a Rat, so many math operations
## with a FatRat will produce another FatRat, preserving all of the
## available precision."

## "Where a Rat degrades to a Num, math with a FatRat keeps chugging along:"
