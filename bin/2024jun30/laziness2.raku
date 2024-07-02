#!/usr/bin/env raku
# 
# laziness2.raku            30 Jun 2024 

use v6;


sub something {

#     my @a = (1..100000);  
#     say @a.WHAT;  # (Array)

    my $a = (1..100000);  
    say $a.WHAT;   # (Range)  
}

## Yesterday I thought I saw a big speed difference on $a vs @a:
##   with a value of 1000, it's 0.7s, if this were @a it'd be 1.3m  

# with $a,
# with limit 1000:
#   real	0m0.402s
# with limit 100000:
#   real	0m0.372s
# with @a
# with limit 1000:
#   real	0m0.538s
# with limit 100000:
#   real	0m59.612s

for 1..1000 {
    something();
}


## Theory: yeserday I had a big firefox instance running, which was
## probably burning a lot of memory.

## This morning I only hit the memory ceiling with bigger arrays.
