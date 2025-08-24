#!/usr/bin/env raku
# 
# literal_list_array_indicies.raku            24 Aug 2025 

use v6;

my @m = << godzilla mothera frankenstein dorisday blob golem grendel >>;


my @i  = (1, 2, 3, 7, 8);
say @m[ @i ];
