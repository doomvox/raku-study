#!/usr/bin/env perl6
# 
# hendrix_numbers-01.raku            25 Mar 2022 

use v6;

my @trivial;
my @hendrix;
for (1 .. 1000) {
    if( m/<[36]>/ ) {

        my $orig = $_;
        .subst( :g, '3', '6');
        .subst( :g, '6', '3');
        if( $_ == $orig ) {
            @hendrix.push( $orig );
        } else {
            @trivial.push( $orig );
        }
    }
}




# ===
# Author:  doom@kzsu.stanford.edu

