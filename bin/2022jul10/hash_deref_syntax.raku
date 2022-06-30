#!/usr/bin/env perl6
# 
# hash_deref_syntax.raku            29 Jun 2022 

use v6;

my %level =
  godzilla => 9,
  mothera  => 6,
  ghidora  => 10,
  gammera  => 5,
  golem    => 4,
  rhodan   => 6;

say %level<<mothera rhodan>>;
