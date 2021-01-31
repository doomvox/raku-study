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

# using the binding operator, two slots in data share a container now
@data[3] := $str;
@data[4] := $str;

say @data; 
# [a a a godzilla godzilla a a a a a]
@data[4] = 'alfred';
say @data; 
# [a a a alfred alfred a a a a a]

## We can bind an element in the array to another element, 
## sharing container now, can change it on either end.
@data[6] := @data[7];
say @data;
# [a a a alfred alfred a a a a a]
@data[7] = 'doris_day';
say @data;
# [a a a alfred alfred a doris_day doris_day a a]
@data[6] = 'hm';
say @data;
# [a a a alfred alfred a hm hm a a]
@data[7] = 'ho?';
say @data;
# [a a a alfred alfred a ho? ho? a a]

my @subdata = <<aaa bbb ccc>>;
@data[2] := @subdata;

say @data;
