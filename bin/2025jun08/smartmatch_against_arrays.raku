#!/usr/bin/env raku
# 
# smartmatch_against_arrays.raku            08 Jun 2025 

use v6;


my @monsters = << godzilla mothera javascript >>;
say @monsters ~~ /^ \w+ $/;  # ｢godzilla｣

my $ret = @monsters ~~ /^ \w+ $/;  # ｢godzilla｣
say $ret; # 
say $ret.WHAT;

say $ret ~~ /^g/;
