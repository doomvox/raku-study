#!/usr/bin/env raku
# 
# laziness4.raku            30 Jun 2024 

use v6;

sub something {
    my Int @a = (1..100000);  ## with a value of 100000 it's 0.9 s without is lazy, faster 0.699s with is lazy
}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}
