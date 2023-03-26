#!/usr/bin/env raku
# 
# assigning_nil.raku            26 Mar 2023 

use v6;


{
    my @array = 1, 2, Nil, 4;
    say @array;  #  [1 2 (Any) 4]

}
