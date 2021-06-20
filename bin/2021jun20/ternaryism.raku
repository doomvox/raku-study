#!/usr/bin/env perl6
# 
# ternaryism.raku            20 Jun 2021 

use v6;

my $condition = True;

my $result = $condition ?? "first" !! "second";

my $result2 = do 
if( $condition ) {
    "first";
} else {
    "second";
};
