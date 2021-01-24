#!/usr/bin/env perl6
# 
# 2021jan24-regex_basics.pl6            24 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }


my $str = "dddcccbbbaaa000";
my $pat = regex { aaa };
$str ~~ $pat;
say $/;    #  ｢aaa｣
dd $/;
#  Match $/ = Match.new(:orig("dddcccbbbaaa000"), :from(9), :pos(12))
my regex subpat { bbb };
my $pat2 = regex { <&:subpat> aaa };
$str ~~ $pat2;
say $/;

# ｢bbbaaa｣
#  subpat => ｢bbb｣

