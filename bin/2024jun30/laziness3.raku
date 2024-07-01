#!/usr/bin/env raku
# 
# laziness3.raku            30 Jun 2024 

use v6;


sub something {
#    my @a is lazy = (1..1000);  
#      ## Can't use unknown trait 'is' -> 'lazy' in  variable declaration.

#    my lazy @a =  (1..1000);  ## limit 1000, time of script 1m .18s
#     ## Type 'lazy' is not declared

#    lazy my @a =  (1..1000);  ## limit 1000, time of script 1m .18s

#    my @a = lazy (1..1000);  ## limit 1000, time of script 0m0.717s     THE WINNAH

#    my @a =  (1..1000);  ## without "lazy" (see below)

    my @a =  (1..100000);  ## and bigger limit without "lazy" (see below)


}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}


# This construct is a bit faster today (July 1):
#     my @a = lazy (1..1000);  ## limit 1000, time of script 0m0.717s     THE WINNAH
# with limit 1000
#   real	0m0.389s
# with limit 100000

# without "lazy" it's only a little slower:
#     my @a =  (1..1000);  
# with limit 1000
#   real	0m0.533s
# with limit 100000
#   real	1m0.567s
