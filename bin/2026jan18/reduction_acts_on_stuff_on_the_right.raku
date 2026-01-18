#!/usr/bin/env raku
# 
# reduction_acts_on_stuff_on_the_right.raku            18 Jan 2026 

use v6;

# Bruce makes the point that this gives you an average as is intended,
# but reductions are often taught as acting on "everything to the right".
# Parens change that, as in a subcall.

my $m = [+](@dataset) / $size;


# raku -e 'my @ds = 3,5,7; say  [+](@ds) / +@ds;'
#     5
# raku -e 'my @ds = 3,5,7; say  [+] (@ds) / +@ds;'
#     1


# raku -e 'say [*] (1..7) / [*] (1..5);'       
# 0.008333
# raku -e 'say [*](1..7) / [*](1..5);' 
# 42

