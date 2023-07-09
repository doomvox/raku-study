#!/usr/bin/env raku
# 
# single_arugment_rules_maybe.raku            09 Jul 2023 

use v6;

my @monsters1 = < godzilla mothera rhodan tingler wolfman dracula horta blob >;

my @monsters2 = < godzilla mothera ghidora gammera golem rhodan >;
my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;


for @monsters1, @monsters2 -> $thingie {
    say $thingie.WHAT;

]
