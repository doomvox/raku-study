#!/usr/bin/env perl6
# 
# hendrix_numbers-01.raku            25 Mar 2022 

use v6;

my @trivial;
my @hendrix;
for 1 .. 1000 -> $n {
    if ( $n ~~ m/<[36]>/ ) {
        my $orig = $n;
        my $new;

        # $new.comb ## loop over each character
        
        gather $new 
        for $orig.comb() -> $c {
            $new_c = $c.subst( :g, '3', '6');
            $new_c = $c.subst( :g, '6', '3');
            take $new_c;
        }
        
        if ( $new == $orig ) {
            @hendrix.push( $orig );
        }
    } else {
        @trivial.push( $orig );
    }
}


say @trivial;
say @hendrix;


# ===
# Author:  doom@kzsu.stanford.edu

