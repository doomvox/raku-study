#!/usr/bin/env perl6
# 
# multi_dispatch_int_collision.raku            24 Sep 2021 

use v6;

multi sub speak (Int $i) {
    say "The Int is $i";
}

# multi sub speak (Int $i) {
#     say "In case you hadn't heard, The Int is $i";
# }
# Ambiguous call to 'speak(Int)'; these signatures all match:
#   (Int $i)
#   (Int $i)

multi sub speak (Int $i) is default {
    say "In case you hadn't heard, The Int is $i";
}


speak(3);



# ===
# Author:  doom@kzsu.stanford.edu

