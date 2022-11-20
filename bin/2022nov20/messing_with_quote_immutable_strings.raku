#!/usr/bin/env perl6
# 
# messing_with_quote_immutable_strings.raku            20 Nov 2022 

use v6;


my $str1 := "garuda";

my $str2 = $str1;

# $str2 =  $str2.subst('garuda', 'rhodan');
$str2 = 'rhodan';
say $str2; # rhodan


my $a = 1;
say $a.WHAT;     # (Int)
say $a.VAR.WHAT; # (Scalar)

my $b = (1, 2);
say $b.WHAT;      # (List)
say $b.VAR.WHAT;  # (Scalar)
