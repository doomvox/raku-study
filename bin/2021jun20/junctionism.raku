#!/usr/bin/env perl6
# 
# junctionism.raku            20 Jun 2021 

use v6;

my $a = 3;

# check if 3 is one of a number of values in one step with "any":
if $a == any( 3, 5, 42 ) {
    say "we're in!";
}

## shorthand to create an "any" junction is: "|" 
## Note: bitwise is now +|
if $a == 3|5|42 {
    say "we're in!";
}

# those are much neater than:
if $a == 3 || $a == 5 || $a == 42 {
    say "we're in!";
}


my $silly_junction = ($a == 3) | ($a == 5) | ($a == 42);
say $silly_junction;       # any(True, False, False)
say $silly_junction.WHAT;  # (Junction)
if $silly_junction {
 say "hi there";  # hi there
}

