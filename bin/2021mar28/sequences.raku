#!/usr/bin/env perl6
# 
# sequences.raku            28 Mar 2021 

use v6;



my @z = 3 , { $_ + 12 } … *; 


for @z -> $z {
    say $z;
    exit if $++ > 6;
}

# 3
# 15
# 27
# 39
# 51
# 63
# 75
# 87
