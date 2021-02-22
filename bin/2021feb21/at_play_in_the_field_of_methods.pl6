#!/usr/bin/env perl6
# 
# at_play_in_the_field_of_methods.pl6            21 Feb 2021 

use v6;

my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
my $set = set @monsters;

say $set.^methods;

say $set.^methods>>.gist;
say $set.^methods>>.name;
