#!/usr/bin/env perl6
# 
# hendrix_numbers-01.raku            25 Mar 2022 

use v6;

my @trivial;
my @hendrix;
for 1 .. 1000 -> $n {
    if ( $n ~~ m/<[36]>/ ) {
        my $orig = $n;
        my $new = gather {
            my $new_c;
            for $orig.comb -> $c {
                if ( $c ~~ s/3/6/ ) {
                } elsif ( $c ~~ s/6/3/ ) {
                ) 
                take $c;
            }
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

