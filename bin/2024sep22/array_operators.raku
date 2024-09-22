#!/usr/bin/env raku
# 
# array_operators.raku            22 Sep 2024 

use v6;

use CoreHackers::Sourcery;
#    say sourcery( @array, 'item');

say &circumfix:<[ ]>.sourcery( (1, 2, 3) );
