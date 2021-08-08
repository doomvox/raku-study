#!/usr/bin/env perl6
# 
# anonymous_routines_with_placeholder_variables.raku            10 Jul 2021 

use v6;


my $cognito = { $^a + $^b };

say $cognito( 3, 4 );  # 7

say $cognito.WHAT; # (Block)

# A Block and a WhateverCode both are Code
# my impulse is to specify Code... but if
# there's no use for a whatever star, maybe
# Block is better...


$cognito( 1, 2, 3);
