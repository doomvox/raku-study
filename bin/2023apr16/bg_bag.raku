#!/usr/bin/env raku
# 
# bg_bag.raku            16 Apr 2023 

use v6;

{
    my %h = (9,9,10,10).Bag; say %h.keys.min; # 10?

    ## 9 and 10 are *stringified*, and "1" preceeds "9"
}

{
    my %h{Int} = (9,9,10,10).Bag; say %h.keys.min; # 9
}



{
    my %h = (9,9,10,10).Bag; say %h.keys.map(*.Int).min; 
}

