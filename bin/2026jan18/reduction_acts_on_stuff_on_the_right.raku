#!/usr/bin/env raku
# 
# reduction_acts_on_stuff_on_the_right.raku            18 Jan 2026 

use v6;



my $m = [+](@dataset) / $size;


# raku -e 'my @ds = 3,5,7; say  [+](@ds) / +@ds;'
#     5
# raku -e 'my @ds = 3,5,7; say  [+] (@ds) / +@ds;'
#     1
