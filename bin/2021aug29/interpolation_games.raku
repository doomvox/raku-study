#!/usr/bin/env perl6
# 
# interpolation_games.raku            29 Aug 2021 

use v6;

my $str1 = qq{ and now we will add { 2 + 2 } };
say $str1;
#  and now we will add { 2 + 2 } 

my $str2 = qq :c { and now we will add { 2 + 2 } };

# ===
# Author:  doom@kzsu.stanford.edu

