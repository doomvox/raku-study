#!/usr/bin/env perl6
# 
# junctions_again.raku            30 May 2021 

use v6;

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;

my @skip = < mothera rhodan >;

my @skip_patterns = @skip.map({ rx/ $_ / });
say @skip_patterns;

my $skip_pattern = rx/ @skip.join('|') /;
say $skip_pattern;

