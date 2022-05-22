#!/usr/bin/env perl6
# 
# sigma_operator_example.raku            22 May 2022 

use v6;

# https://docs.raku.org/language/optut

# general operator to sum n numbers 
sub prefix:<Σ>( *@number-list ) {
    [+] @number-list
}
 
say Σ (13, 16, 1); # OUTPUT: 30


# Q: are the parens necessary?
# A: yes, but the behavior without them is *weird*
say Σ 13, 16, 1; # OUTPUT: 13161

