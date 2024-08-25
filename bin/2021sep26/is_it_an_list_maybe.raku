#!/usr/bin/env raku
# 
# is_it_an_list_maybe.raku            25 Aug 2024 

use v6;


my $a = 'aaa>';


say $a.elems; # 1
say $a.chars; # 3

say $a.WHAT;

say $a.^methods;
