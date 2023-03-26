#!/usr/bin/env raku
# 
# assigning_nil.raku            26 Mar 2023 

use v6;


{
    my @array = 1, 2, Nil, 4;
    say @array;  ##  [1 2 (Any) 4]

    my Int @ints = 1, 2, Nil, 4;
    say @ints;   ##  [1 2 (Int) 4]


    class Idiot { };
    
    my Idiot @idiots = 1, 2, Nil, 4;
    say @idiots;


}
