#!/usr/bin/env perl6
# 
# messing_with_quote_immutable_strings.raku            20 Nov 2022 

use v6;


my $str1 := "garuda";

my $str2 = $str=;

$str2.subst('garuda', 'godzilla');

say $str2;
