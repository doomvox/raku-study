#!/usr/bin/env perl6
# 
# matching_not_a_dot.raku            12 Mar 2022 

use v6;

my $str1 = '.';
my $str2 = 'a';


my $pat1 = rx/  <[-a]>  /;
say so $str1 ~~ $pat1;
say so $str2 ~~ $pat1;
