#!/usr/bin/env raku
# 
# liz_example_issues_with_regex_and_race.raku            22 Jun 2025 

use v6;

## https://github.com/Raku/problem-solving/issues/406

say ("aaa" .. "zzz").race.map({
    / \w+ /;
    $/.Str.comb.Set.keys.ords.sum
} ).sum;

## multiple runs have different numbers of hits:
  ## 6616892
  ## 6617629
  ## 6617216
