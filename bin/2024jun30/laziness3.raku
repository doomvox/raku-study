#!/usr/bin/env raku
# 
# laziness3.raku            30 Jun 2024 

use v6;


sub something {
    my @a = (1..10000);  ## with a value of 1000 it's 1.3mins
}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}
