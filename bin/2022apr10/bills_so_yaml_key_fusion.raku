#!/usr/bin/env perl6
# 
# bills_so_yaml_key_fusion.raku            10 Apr 2022 

# https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487

use v6;

## kinda sorta yaml
my $df = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022apr10/dat/so.dat";

{
    my %h;
    for $df.IO.lines() {
        %h .= append: .split(":").map( *.trim ).hash
    };
    .say for %h.sort;
} 
say "\n===\n";
{
    my %h .= append: .split(":").map(*.trim).hash for $df.IO.lines; 
    .say for %h.sort;
}

say "\n===\n";
{
    .say for sort $df.IO.lines().map( *.split(":",2)).classify({.[0]}, :as{.[1]} );
}

say "\n===\n";
{
  .say for sort $df.IO.lines().map( { /^(\S+)\:\s*\x27(.+?)\x27$/ or die; ~$0, ~$1 } ).classify( {.[0]}, :as{.[1]} );
}
