#!/usr/bin/env raku
# 
# laziness5.raku            30 Jun 2024 

use v6;

sub something {
    my @a = (1..Inf);   ##
}

for 1..1000 {
    something();
}
