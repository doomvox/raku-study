#!/usr/bin/env perl6
# 
# bg_example_subs.raku            05 Dec 2021 

use v6;

# raku -e 'sub f { say 42; }; sub g {...}; say .yada for &f, &g;'
# False
# True 

sub f {
    say 42;
};
sub g {...};
say .yada for &f, &g;
