#!/usr/bin/env perl6
# 
# classify.raku            09 Oct 2022 

use v6;

## playing with classify

{
## an example from the docs:
say classify { $_ %% 2 ?? 'even' !! 'odd' }, (1, 7, 6, 3, 2);
# {even => [6 2], odd => [1 7 3]}
}

{
## That's a simplification of a typical idiom:
my %classified;
my @numbs  = (1, 7, 6, 3, 2);
for @numbs -> $n {
    if $n %% 2 {
        %classified{ 'even' } = $n;
    }
    else {
        %classified{ 'odd' } = $n;
    }
}
say %classified;
