#!/usr/bin/env perl6
# 
# find_palindromes.raku            12 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }



my Str $pattern = 'ailemac';
say 'camelia' ~~ / $($pattern.flip) /;     # OUTPUT: «｢camelia｣␤»


