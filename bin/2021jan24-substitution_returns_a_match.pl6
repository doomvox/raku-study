#!/usr/bin/env perl6
# 
# 2021jan24-substitution_returns_a_match.pl6            24 Jan 2021 

use v6;

my $str = 'old string';
my $ret = $str ~~ s/o .+ d/new/;
say $str;  # new string

say $ret;
