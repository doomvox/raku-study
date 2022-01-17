#!/usr/bin/env perl6
# 
# crossproduct_metaoperator.raku            16 Jan 2022 

use v6;

my @current_gen = 2, 3, 7, 13;

my @stuff = 
  (1..9) X~ @current_gen;

say @stuff;

# [12 13 17 113 22 23 27 213 32 33 37 313 42 43 47 413 52 53 57 513 62 63 67 613 72 73 77 713 82 83 87 813 92 93 97 913]


my @monsters = <blob tingler godzilla>;

say "monster-" X~ @monsters;
# (monster-blob monster-tingler monster-godzilla)

