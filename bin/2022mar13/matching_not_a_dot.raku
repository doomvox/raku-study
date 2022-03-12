#!/usr/bin/env perl6
# 
# matching_not_a_dot.raku            12 Mar 2022 

use v6;

my $str1 = '.';
my $str2 = 'a';


my $pat1 = rx/  <[-\.]>  /;
say so $str1 ~~ $pat1;
say so $str2 ~~ $pat1;

my $p = rx/\./;
say so '.' ~~ $p;  # True
say so 'a' ~~ $p ; # False

$p = rx/a/;
say so '.' ~~ $p;  # False
say so 'a' ~~ $p ; # True


$p = rx/^<[-a]>$/;
say so '.' ~~ $p;  # False
say so 'a' ~~ $p ; # True
