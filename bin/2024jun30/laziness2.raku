#!/usr/bin/env raku
# 
# laziness2.raku            30 Jun 2024 

use v6;


sub something {

#     my @a = (1..1000);  
#     say @a.WHAT;  # (Range)   and with @a this is (Array)

    my $a = (1..1000);  
    say $a.WHAT;  # (Range)   and with $a this is (Array)

}

## Yesterday I thought I saw a big speed difference on $a vs @a:
##   with a value of 1000, it's 0.7s, if this were @a it'd be 1.3m  

# with $a,
#   real	0m0.402s
# with @a
#   real	0m0.538s

for 1..1000 {
    something();
}
