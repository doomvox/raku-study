#!/usr/bin/env perl6
# 
# junctionism.raku            20 Jun 2021 

use v6;

my $a = 3;

if $a == 3|5|42 {
    say "we're in!";
}

if $a == any( 3, 5, 42 ) {
    say "we're in!";
}

if $a == 3 || $a == 5 || $a == 42 {
    say "we're in!";
}
