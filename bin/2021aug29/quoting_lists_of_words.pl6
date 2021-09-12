#!/usr/bin/env perl6
# 
# quoting_lists_of_words.pl6            12 Sep 2021 

use v6;

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;
dd @monsters;
# Array @monsters = ["godzilla", "mothera", "ghidora", "gammera", "golem", "rhodan"]

# wrongo
my @monsters2 = Q ( godzilla mothera ghidora gammera golem rhodan );
dd @monsters2;
# Array @monsters2 = [" godzilla mothera ghidora gammera golem rhodan "]
say @monsters2;
# [ godzilla mothera ghidora gammera golem rhodan ]

my @monsters3 = qw[ godzilla mothera ghidora gammera golem rhodan ];
dd @monsters3;
# Array @monsters3 = ["godzilla", "mothera", "ghidora", "gammera", "golem", "rhodan"]
say @monsters3;
# [godzilla mothera ghidora gammera golem rhodan]

my @monsters4 = qw [ godzilla mothera ghidora gammera golem rhodan ];
