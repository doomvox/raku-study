#!/usr/bin/env raku
# 
# literal_list_array_indicies.raku            24 Aug 2025 

use v6;

my @m = << godzilla mothera frankenstein dorisday blob golem grendel triffids master >>;


my @i  = (1, 2, 3, 7, 8);
say @m[ @i ];  # (mothera frankenstein dorisday triffids master)


my @m = 1, 2, 3;
my @n = 7, 8;

say @m[ flat( @m @n) ];
