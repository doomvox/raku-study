#!/usr/bin/env perl6
# 
# trailing_if.raku            20 Jun 2021 

use v6;

say (15 if 3 > 4); # ()

my $var = (15 if 3 > 4); 
say $var.raku;
say $var.WHAT;
