#!/usr/bin/env perl6
# 
# rob_flat_on_array_check_if_can.raku            08 May 2022 

use v6;


my @dyad = <a b>, <c d>;
# [(a b) (c d)]
 
@dyad = @dyad.flat[*;*];
@dyad .= flat[*;*];
say @dyad;
# [a b c d]

say @dyad.can('flat');
# (flat flat flat)    ## ?


