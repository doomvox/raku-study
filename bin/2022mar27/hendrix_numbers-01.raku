#!/usr/bin/env perl6
# 
# hendrix_numbers-01.raku            25 Mar 2022 

# Programming challenges #1 

# How many Hendrix Numbers are there between 1 and 1000?
# A Hendrix Number is an integer which is invariant when
# all 6s are turned into 9s, and all 9s are turned into 6s.

# Distinguish between Trivial and True in your answer,
# where Trivial Hendrix Numbers have no 6s or 9s.

use v6;

my @trivial;
my @hendrix;
for 1 .. 1000 -> $n {
    my $orig = $n;
    my $new  = $n.Str;
    if ( $new ~~ tr/69/96/ ) {             
        if ( $new.Int == $orig ) {
            @hendrix.push( $n );
        }
    } else {
        @trivial.push( $n );
    }
}

say "trival: ", @trivial.elems;
say "hendrix: ", @hendrix.elems;


# ===
# Author:  doom@kzsu.stanford.edu

