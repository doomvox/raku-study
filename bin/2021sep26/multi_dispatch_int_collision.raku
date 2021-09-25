#!/usr/bin/env perl6
# 
# multi_dispatch_int_collision.raku            24 Sep 2021 

use v6;

multi sub speak (Int $i) {
    say "FIRST PLACE: The Int is $i";
}

# multi sub speak (Int $i) {
multi sub speak (Int $i) is default {
    say "SECOND PLACE: The Int is $i";
}

speak(3);


# OUTPUT:
#
# Without "is default":
#   Ambiguous call to 'speak(Int)'; these signatures all match:
#     (Int $i)
#     (Int $i)


# With "is default":
#    SECOND PLACE: The Int is 3
# (And the first version will never be called.)


# ===
# Author:  doom@kzsu.stanford.edu


