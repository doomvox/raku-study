#!/usr/bin/env perl6
# 
# basics_of_containers_and_flattening.pl6            31 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

my @monsters = < garuda blob golem mothera godzilla tingler >;

my @new = @monsters;
say @new;  # [garuda blob golem mothera godzilla tingler]

my @newer = @new;
say @newer;  # 

my $new = @monsters;
say $new;
my $newer = $new;
say $newer;

dd $newer;
## Array $newer = $["garuda", "blob", "golem", "mothera", "godzilla", "tingler"]

put $newer.raku;
## $["garuda", "blob", "golem", "mothera", "godzilla", "tingler"]


my %h = @monsters;
say %h;
