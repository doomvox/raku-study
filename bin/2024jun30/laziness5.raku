#!/usr/bin/env raku
# 
# laziness5.raku            30 Jun 2024 

use v6;

sub something {
#    my @a = (1..Inf);   ## 0m0.747s
    my @a = (1..10000);   ## 0m0.747s
}

for 1..1000 {
    something();
}
