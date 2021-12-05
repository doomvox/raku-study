#!/usr/bin/env perl6
# 
# map_brackets.raku            05 Dec 2021 

use v6;


## perl5 syntax
##  my @doubled = map { $_*2 } @numbers;

my @numbers = 13, 15, 16;
my @doubled = @numbers.map( {$_*2} );
say @doubled; # [26 30 32]


my @quad = @numbers.map: {$_*2};
say @quad;
