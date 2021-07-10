#!/usr/bin/env perl6
# 
# anonymous_routines_with_placeholder_variables.raku            10 Jul 2021 

use v6;


my $cognito = { $^a + $^b };

say $cognito( 3, 4 );

