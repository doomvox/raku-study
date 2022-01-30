#!/usr/bin/env perl6
# 
# whispering_nothings.raku            30 Jan 2022 

use v6;

my $var1 = Nil;

my $var2 = Mu;

say "1: ";
say $var1;  # (Any)
say "2: ";
say $var2;  # (Mu)

say "var1: $var1, var2: $var2";


sub jstuff ($thing) {
    if ($thing) {
        say "looks truish: ";
        say $thing;
        }
    }




# ===
# Author:  doom@kzsu.stanford.edu

