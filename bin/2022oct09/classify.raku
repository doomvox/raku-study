#!/usr/bin/env perl6
# 
# classify.raku            09 Oct 2022 

use v6;

## playing with classify

## an example from the docs:
say classify { $_ %% 2 ?? 'even' !! 'odd' }, (1, 7, 6, 3, 2);
# {even => [6 2], odd => [1 7 3]}
