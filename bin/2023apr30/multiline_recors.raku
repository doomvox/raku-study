#!/usr/bin/env raku
# 
# multiline_recors.raku            30 Apr 2023 

use v6;

for "data/addresses.txt".IO.lines -> $rec {
    say $rec";
    }
