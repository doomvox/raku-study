#!/usr/bin/env perl6
# 
# gather_and_take_demo.pl6            07 Feb 2021 

use v6;

my @a =
gather for @input -> $item {
    if ( $item ~~ /^t/ ) {
        take $item.tc;
        }
};

say @a;  # [Tew Thuree]


