#!/usr/bin/env raku
# 
# laziness3.raku            30 Jun 2024 

use v6;


sub something {
#    my @a is lazy = (1..1000);  ## with a value of 100000 it's 0.9 s without is lazy, faster 0.699s with is lazy
    lazy my @a =  (1..1000);  ## with a value of 100000 it's 0.9 s without is lazy, faster 0.699s with is lazy
}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}
