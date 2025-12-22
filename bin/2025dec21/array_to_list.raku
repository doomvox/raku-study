#!/usr/bin/env raku
# 
# array_to_list.raku            21 Dec 2025 

use v6;


my @nothing  = < nada nope bupkes >;

my @out1 = @nothing.List;
my @out2 = @nothing.List(:view);

say @out1;
say @out2;
