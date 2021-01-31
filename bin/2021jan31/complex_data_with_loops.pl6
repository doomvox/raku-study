#!/usr/bin/env perl6
# 
# complex_data_with_loops.pl6            31 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;  # 0..5

my @data = 'a' xx 10;  ## note the raku xx operator for lists
say @data; # [a a a a a a a a a a]

my $str = @monsters[0];

@data[3] := $str;
@data[4] := $str;

say @data.map({.gist}).join('  ');
