#!/usr/bin/env perl6
# 
# basics_of_containers_and_flattening.pl6            31 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

my @monsters = < garuda blob golem mothera godzilla tingler >;

my @new = @monsters;
say @new;
