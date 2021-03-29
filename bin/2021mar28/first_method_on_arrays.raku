#!/usr/bin/env perl6
# 
# first_method_on_arrays.raku            28 Mar 2021 

use v6;

say "===";
#Liz IRC

{
    my @a = 3,7,6,12,9,6,6,6;
    say @a.first(6, :k);
    # 2 

#           0 1 2  3 4 5 6 7
    my @a = 3,7,6,12,9,6,6,6;
    say @a.first(6, :k, :end); # for the record: from the other end
    # 7 

# my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k) 
# > my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k)
# 8
# 7 
# > my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k, :end)
# 8
# 7 

# my @a = <A A B E C D D D E>; say @a.elems; say @a.first("E", :k)
# 9
# 3
# > my @a = <A A B E C D D D E>; say @a.elems; say @a.first("E", :k, :end)

}

exit;

