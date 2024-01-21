#!/usr/bin/env raku
# 
# basics_of_match_object.raku            21 Jan 2024 

use v6;

my $s = 'roses are red';
my $mo = $s ~~ s/roses/lilacs/;

dd $mo;
