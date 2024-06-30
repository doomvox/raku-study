#!/usr/bin/env raku
# 
# laziness2.raku            30 Jun 2024 

use v6;


sub something {
    my @a = (1..1000);  ## with a value of 10000, it's 3mins, with only 1000 it's 1 min
}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}
