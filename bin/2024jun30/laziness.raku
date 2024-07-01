#!/usr/bin/env raku
# 
# laziness.raku            30 Jun 2024 

use v6;

# Tim Schafer raises the point
say (1 .. 100).is-lazy; # False 
say (1 .. Inf).is-lazy; # True

## The "laziness" series all have a construct like this, a sub that does "something" 
## which is then run a thousand times.  

#  time laziness.raku

sub something {
    my @a = (1..1000);  ## with a value of 10000, it's 3mins, with only 1000 it's 1 min
}
## Changing to ... would take 13 secs

for 1...1000 {
    something();
}

