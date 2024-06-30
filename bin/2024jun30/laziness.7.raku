#!/usr/bin/env raku
# 
# laziness.7.raku            30 Jun 2024 

use v6;

sub something {
    my @a[10001] = (1..10000);  # 
}

for 1..1000 {
    something();
}
