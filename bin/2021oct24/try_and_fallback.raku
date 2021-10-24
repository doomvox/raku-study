#!/usr/bin/env perl6
# 
# try_and_fallback.raku            24 Oct 2021 

use v6;

sub toho_alone( $input ) {
    say "input: $input";
    if ( $input eq 'gammera' ) {
        die "wrong production company";
    }
    return $input;
}

my $arg = "rhodan";
# $arg = "gammera";

my $default = 'godzilla';

my $ret = ((try toho_alone($arg)) // $default);
say $ret;





# ===
# Author:  doom@kzsu.stanford.edu

