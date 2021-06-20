#!/usr/bin/env perl6
# 
# ternaryism.raku            20 Jun 2021 

use v6;

my $condition = True;

my $result = $condition ?? "first" !! "second";
say "result: $result\n";a

my $result2 = do 
if $condition  {
    "first";
} else {
    "second";
};

say "result2: $result2\n";
