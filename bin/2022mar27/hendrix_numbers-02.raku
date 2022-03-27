#!/usr/bin/env perl6
# 
# hendrix_numbers-02.raku            26 Mar 2022 

use v6;

my $n = 699;
my $new = $n;
if ( $new ~~ tr/69/96/ ) {
    say "$new";
}
