#!/usr/bin/env raku
# 
# iteration_to_end_all.raku            23 Feb 2025 

use v6;

my $it = (1,2).iterator;
$it.pull-one for ^2;
say $it.pull-one =:= IterationEnd; # OUTPUT: «True␤»


my $something = $it.pull-one // 'something';
say $something;  #  IterationEnd

my $something = $it.pull-one || 'something';
say $something;  #  IterationEnd

say "".comb ~~ Empty;
# OUTPUT: «True␤»

