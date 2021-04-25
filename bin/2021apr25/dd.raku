#!/usr/bin/env perl6
# 
# dd.raku            25 Apr 2021 

use v6;

my %hashola = whun => 1, tew => 2, thuree => 3;

say %hashola;
# {tew => 2, thuree => 3, whun => 1}

dd %hashola;
# Hash %hashola = {:tew(2), :thuree(3), :whun(1)}


say %hashola.raku;
# {:tew(2), :thuree(3), :whun(1)}
