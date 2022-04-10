#!/usr/bin/env perl6
# 
# bills_so_yaml_key_fusion.raku            10 Apr 2022 

# https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487

use v6;

## kinda sorta yaml
my $datfile = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022apr10/dat/so.dat";

my %h;
for $datfile.IO.lines() {
    %h .= append: .split(":").map( *.trim ).hash
};
.say for %h;

say "===";

my %h .= append: .split(":").map(*.trim).hash for $datfile.IO.lines; .say for %h;
