#!/usr/bin/env raku
# 
# map_compared_to_deepmap.raku            05 Mar 2023 

use v6;


my @data = (
   { val => 1, name => 'alpha', },
   { val => 2, name => 'beta',  },
   { val => 3, name => 'gamma', },
   { val => 4, name => 'delta', },
);

If you want to add 10 to the numeric value and preserve the
string name, this works:

my @new_data = @data.map({$_ ~~ Numeric ?? $_+10 !! $_ });

