#!/usr/bin/env raku
# 
# laziness.6.raku            30 Jun 2024 

use v6;

sub something {
    my $a := (1..10000);
}

for 1..1000 {
    something();
}
