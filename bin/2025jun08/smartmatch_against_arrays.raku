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

say 23 ~~ $ret;  # ｢godzilla｣

say 's' ~~ 'godzilla';  #  False

my $ret2 = 23 ~~ $ret; 

say $ret.WHICH;   # Match|4768021471232
say $ret2.WHICH;  # Match|4768021471232

## https://github.com/rakudo/rakudo/blob/b43c63d328697b7d3044493d8ac6898d55bc763f/src/core.c/Match.rakumod#L329
