#!/usr/bin/env raku
# 
# literal_list_array_indicies.raku            24 Aug 2025 

use v6;

my @m = << godzilla mothera frankenstein dorisday blob golem grendel triffids master >>;


my @i  = (1, 2, 3, 7, 8);
say @m[ @i ];  # (mothera frankenstein dorisday triffids master)


my @a = 1, 2, 3;
my @b = 7, 8;

say @m[ (@a, @b) ];
# ((mothera frankenstein dorisday) (triffids master))

say @m[ flat(@a, @b) ];
