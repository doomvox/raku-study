#!/usr/bin/env perl6
# 
# hendrix_numbers-01.raku            25 Mar 2022 

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

