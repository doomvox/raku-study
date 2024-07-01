#!/usr/bin/env raku
# 
# laziness2.raku            30 Jun 2024 

use v6;


sub something {
    my $a = (1..1000);  ## with a value of 1000, it's 0.7s, if this were @a it'd be 1.3m  
    say $a.WHAT;  # (Range)   and with @a this is (Array)
}
## Changing to ... would take 13 secs

for 1..1000 {
    something();
}