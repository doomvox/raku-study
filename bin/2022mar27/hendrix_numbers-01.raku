#!/usr/bin/env perl6
# 
# hendrix_numbers-01.raku            25 Mar 2022 

use v6;

my @trivial;
my @hendrix;
for 1 .. 1000 -> $n {
    if ( $n ~~ m/<[36]>/ ) {
        my $orig = $n;
        my $new  = $n;
        if ( $new ~~ tr/69/96/ ) {

        }
        if ( $new == $orig ) {
            @hendrix.push( $n );
        }
    } else {
        @trivial.push( $n );
    }
}


say @trivial;
say @hendrix;


# ===
# Author:  doom@kzsu.stanford.edu

