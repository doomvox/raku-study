#!/usr/bin/env perl6
# 
# creating_hashes-variations_on_theme_by_lizmat.pl6            14 Feb 2021 

# See:
# ../../raku-study/bin/2021feb14/creating_objects-variations_on_theme_by_lizmat.pl6

use v6;
for ^1_000_000 {
    my %p = x => 42, y => 666
}
