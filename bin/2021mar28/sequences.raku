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

#Liz IRC

my @a = 3,7,6,12,9,6,6,6;
say @a.first(6, :k);
# 2 

exit;

## Bruce Gray examples: 

my @z = <a b c>, <d e f>;
for @z -> @batch_of_3 {...};
for @z -> ( $m, $n, $o ) {...};
for @z -> ( Str $m, Str $n, Str $o ) {...} ;


