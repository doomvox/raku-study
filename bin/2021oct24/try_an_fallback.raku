#!/usr/bin/env perl6
# 
# try_an_fallback.raku            24 Oct 2021 

use v6;



sub toho_alone {
    if ( $_ eq 'gammera' ) {
        die "wrong production company";
    }

}

my $default = 'godzilla';

my $ret = ((try toho_alone) // $default);
say $ret;

# ===
# Author:  doom@kzsu.stanford.edu

