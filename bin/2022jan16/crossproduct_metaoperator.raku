#!/usr/bin/env perl6
# 
# crossproduct_metaoperator.raku            16 Jan 2022 

use v6;

my @current_gen = 2, 3, 7, 13;

my @stuff = 
  (1..9) X~ @current_gen;

say @stuff;


