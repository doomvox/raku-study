#!/usr/bin/env raku
# 
# laziness3.raku            30 Jun 2024 

use v6;


sub something {
#    my @a is lazy = (1..1000);  
#      ## Can't use unknown trait 'is' -> 'lazy' in  variable declaration.

#    lazy my @a =  (1..1000);  ## limit 1000, time of script 1m .18s

    my @a = lazy (1..1000);  ## limit 1000, time of script 0m0.717s

#    my lazy @a =  (1..1000);  ## limit 1000, time of script 1m .18s
#     ## Type 'lazy' is not declared

}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}
