#!/usr/bin/env perl6
# 
# bills_so_yaml_key_fusion.raku            10 Apr 2022 

use v6;

my $datfile = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022apr10/dat/so.yaml";

my %h; for lines() {%h.=append: .split(":").map(*.trim).hash}; .say for %h;


