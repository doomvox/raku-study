#!/usr/bin/env perl6
# 
# multi_dispatch_brad_gilbert_factorial.raku            26 Sep 2021 

use v6;


# Doing what you want would make using subsets with multis much less useful.

#     multi factorial ( 0 --> 1 ){}
#     multi factorial ( 1 --> 1 ){}
#     multi factorial ( UInt \n ){ factorial(n - 1) * n }

#     say factorial( 1 );
#     # ERROR: both UInt and 1 subsets match.

# You could modify the general case, but that is tedious and error prone.

#     multi factorial ( Int \n where {$_ >= 0 && $_ != 0 && $_ != 1} ){ factorial(n - 1) * n }

# (The reason I didn't just do $_ >= 2 is that if another multi is added it should be dealt with in the same way as 0 and 1)


# ===
# Author:  doom@kzsu.stanford.edu

