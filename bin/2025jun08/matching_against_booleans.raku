#!/usr/bin/env raku
# 
# matching_against_booleans.raku            08 Jun 2025 

use v6;

my $b1 = True;
my $b2 = False;

if $b1 {
    say "Of course, true is true";  # Of course, true is true
}

if $b1 ~~ True {
    say "hm?";  # hm?
}
## warning:
##     Smartmatch against True always matches; if you mean to test the topic for truthiness, use :so or *.so or ?* instead

if $b1 ~~ False {
    say "Failure right?";  
} else {
    say "Yes, we fail reliably";   # Yes, we fail reliably
}

if $b1.so ~~ True {
    say "yah?"; # yah?
}

if $b1.so {
    say "is this at last okay?"; # is this at last okay?
}


my @check_results = ( True, False, False, True, Nil );
say @check_results.grep( * ~~ True ); 
# (True False False True (Any))
