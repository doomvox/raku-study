#!/usr/bin/env perl6
# 
# quoting_lists_of_words.pl6            12 Sep 2021 

use v6;


my @monsters = < godzilla mothera ghidora gammera golem rhodan >;
dd @monsters;

# wrongo
my @monsters2 = Q ( godzilla mothera ghidora gammera golem rhodan );
dd @monsters2;

my @monsters3 = qw[ godzilla mothera ghidora gammera golem rhodan ];
dd @monsters3;
