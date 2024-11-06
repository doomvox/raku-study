#!/usr/bin/env raku
# 
# rats_in_the_walls.raku            05 Nov 2024 

use v6;

## Starting again, looking at some oddities in Fat/FatRat/etc behavior.


## https://docs.raku.org/language/numerics#Rat

## Rat:

## It supports rationals with denominators as large as 64 bits.

## Rat objects with larger denominators can be created directly, however,

## when Rats with such denominators are the result of mathematical operations, they degrade to a Num object.



## If a mathematical operation that produces a Rat answer would produce a Rat with denominator larger than 64 bits, that operation would instead return a Num object. 

## When constructing a Rat (i.e. when it is not a result of some mathematical expression), however, a larger denominator can be used:





## "The last Rational type-- FatRat-- keeps all of the precision you
## ask of it, storing the numerator and denominator as two Int
## objects."

## "A FatRat is more infectious than a Rat, so many math operations
## with a FatRat will produce another FatRat, preserving all of the
## available precision."

## "Where a Rat degrades to a Num, math with a FatRat keeps chugging along:"



## ===

## https://docs.raku.org/language/numerics#Rat
