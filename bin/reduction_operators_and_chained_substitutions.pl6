#!/usr/bin/env perl6
# 
# reduction_operators_and_chained_substitutions.pl6            10 Jan 2021 

use v6;

## Make errors into warnings
##   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# These two are equivalent: 
say [+] 1, 2, 3;                # 6
say reduce &infix:<+>, 1, 2, 3; # 6

### trying things at random:
##  say reduce('+'), 1, 2, 3; # 6
### (1, 2, 3).reduce('+');

say (1..4).reduce(&infix:<+>);   # 10
say reduce &infix:<+>, 1..4;     # 10
say reduce &min, 1..4;           # 1
 

## that &infix jazz bothers me... this works:
say (1..4).reduce({ $^a + $^b });  # 10


my @output = map{ s/tagname/tagvalue/r; $_ } @input;
