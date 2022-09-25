#!/usr/bin/env perl6
# 
# arrays_with_sigils_and_without.raku            25 Sep 2022 

use v6;

## Bruce gray:

my @a = 1,2,3;
my @b = <a b c>;
(@a, @b) .= reverse;
.say for @a, @b;



