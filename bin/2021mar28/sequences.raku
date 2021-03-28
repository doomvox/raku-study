#!/usr/bin/env perl6
# 
# sequences.raku            28 Mar 2021 

use v6;


{
    my @z = 3 , { $_ + 12 } … *; 

#     for @z -> $z {
#         say $z;
 #        exit if $++ > 6;
#     }

    # 3
    # 15
    # 27
    # 39
    # 51
    # 63
    # 75
    # 87
}

say "===";
#Liz IRC

{
    my @a = 3,7,6,12,9,6,6,6;
    say @a.first(6, :k);
    # 2 

# > my @a = 3,7,6,12,9,6,6,6; say @a.first(6, :k, :end) # for the record: from the other end
# 7 
# my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k) 
# > my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k)
# 8
# 7 
# > my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k, :end)
# 8
# 7 



}

exit;

## Bruce Gray examples: 
{
    my @z = <a b c>, <d e f>;
    for @z -> @batch_of_3 {...};
    for @z -> ( $m, $n, $o ) {...};
    for @z -> ( Str $m, Str $n, Str $o ) {...} ;
}

