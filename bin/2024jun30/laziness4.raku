#!/usr/bin/env raku
# 
# laziness4.raku            30 Jun 2024 

use v6;

sub something {
#    my Int @a = (1..100000);  ## script takes 0.7s
#    my @a = (1..100000);  ## script takes 1.5m
    my int @a = (1..100000);  ## script takes __
}

for 1..1000 {
    something();
}
