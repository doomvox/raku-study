#!/usr/bin/env raku
# 
# laziness.raku            30 Jun 2024 

use v6;

# Tim Schafer raises the point
say (1 .. 100).is-lazy; # False 
say (1 .. Inf).is-lazy; # True

# Marton explains that 1..Inf can't possibly *not* be lazy, so Raku defaults to it in that case

#===

## Note: the "laziness*.raku" series all have a construct like this, 
## a sub that does "something" which is then run a thousand times.  


sub something {
    my @a = (1..1000);  ## with a value of 10000, it's 3mins, with only 1000 it's 1 min
}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}


## Re-checking timing I see this afternoon (July  1, 2024) my machine is a lot faster
## and *also* I'm seeing a different result than I reported above ".." is much faster  
## than "...": around 13x faster.

#  time laziness.raku
#  real	0m0.532s   
#  with code:
#    my @a = (1..1000)

#  real	0m7.002s
# with code:
#    my @a = (1...1000)
