#!/usr/bin/env raku
# 
# smartmatch_against_arrays.raku            08 Jun 2025 

use v6;


my @monsters = << godzilla mothera javascript >>;
say @monsters ~~ /^ \w+ $/;  # ｢godzilla｣

my $ret = @monsters ~~ /^ \w+ $/;  
say $ret; # ｢godzilla｣
say $ret.WHAT; # (Match)

say $ret ~~ m/^g/;  # ｢g｣

say 'a' ~~ $ret;  # ｢godzilla｣
