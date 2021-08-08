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


# say $cognito( 1, 2, 3);
# Too many positionals passed; expected 2 arguments but got 3

my &over = { $^a * $^b };
say &over( 3, 3 ); # 9


my &mission = sub { $^a * $^b };
say &mission( 5, 4 ); # 20

my &marine := sub { $^a - $^b };
say &marine( 3, 2 ); # 1

my &traction := { $^a - $^b };
say &traction( 7, 3 );  # 4

say %mission.WHAT;
&mission =  { $^a ** $^b };
say &mission( 2, 3 );  # 8
say %mission.WHAT;

# &marine = sub { $^a ** $^b };
