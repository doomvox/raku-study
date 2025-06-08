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

# Very peculiar case: 
say 's' ~~ $ret;  #  ｢godzilla｣

# No 's' in godzilla, hard to see how by any stretch that should match
# Marton insists it just gives you the match object back whatever is on the left hand side.

say 's' ~~ 'godzilla';  #  False
