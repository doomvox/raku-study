#!/usr/bin/env perl6
# 
# gather_and_take_demo.pl6            07 Feb 2021 

use v6;

my @rabbits  = < bugs peter easter >;

my @a =
gather for @rabbits -> $r {
    if ( $r ~~ /^t/ ) {
        take $r.tc;
        }
};

say @a;  # [Tew Thuree]


