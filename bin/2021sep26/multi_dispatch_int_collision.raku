#!/usr/bin/env perl6
# 
# multi_dispatch_int_collision.raku            24 Sep 2021 

use v6;

multi sub speak (Int $i) {
    say "FIRST PLACE: The Int is $i";
}

multi sub speak (Int $i) {
# multi sub speak (Int $i) is default {
    say "SECOND PLACE: The Int is $i";
}

speak(3);


# Without "is default":
#   Ambiguous call to 'speak(Int)'; these signatures all match:
#     (Int $i)
#     (Int $i)


# With "is default":



# ===
# Author:  doom@kzsu.stanford.edu




# multi sub speak (Int $i) {
#     say "In case you hadn't heard, The Int is $i";
# }
# Ambiguous call to 'speak(Int)'; these signatures all match:
#   (Int $i)
#   (Int $i)
