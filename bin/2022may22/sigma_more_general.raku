#!/usr/bin/env perl6
# 
# sigma_more_general.raku            22 May 2022 

use v6;

# The mathematical sigma *is* a summation notation, but not the same as "sum".
# The raku equivalent is more like looping over an integer range.

#    U (upper bound, integer)
#    ___
#    \        x            
#    /__       i    x-sub-i is a "sum term", a function of i

#    i=L (lower bound, integer)

# https://docs.raku.org/language/control#index-entry-control_flow__loop-loop
loop (my $i = 0; $i < 3; $i++) {       # A typical loop 
    say $i;
    # 0
    # 1
    # 2
}
 





# ===
# Author:  doom@kzsu.stanford.edu

