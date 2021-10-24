#!/usr/bin/env perl6
# 
# given_when_vs_passing_to_block.raku            24 Oct 2021 

use v6;

## Example in the docs:

# The given statement is often used alone:

given 42 { .say; .Numeric; }  # 42

# This is a lot more understandable than:

{ .say; .Numeric; }(42);       # 42


sub stuffy($_){
    .say;
    .Numeric;
};

say stuffy(42);  # 42



{ .say; .Numeric; }(42) 

{ say "$a + $b is {$a+$b}" }(|$_) 

sub mah_stuff($_) {
    { say "$a + $b is {$a+$b}" } } 
}


# ===
# Author:  doom@kzsu.stanford.edu

