#!/usr/bin/env raku
# 
# ranges_positional.raku            25 Aug 2024 

use v6;


my $r = 1..3;
say $r.WHAT;  # (Range)

say $r ~~ Positional; # True

say $r ~~ Range; # True
