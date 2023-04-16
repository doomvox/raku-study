#!/usr/bin/env raku
# 
# bg_bag.raku            16 Apr 2023 

use v6;

{
    my %h = (9,9,10,10).Bag; say %h.keys.min; # 10?

    ## 9 and 10 are *stringified*, and "1" preceeds "9"
}

{
    my %h{Int} = (9,9,10,10).Bag; say %h.keys.min;        # 9
}

{
    my %h = (9,9,10,10).Bag; say %h.keys.map(*.Int).min;  # 9
}

{
    my %h = (9,9,10,10).Bag; say %h.keys.>>.Int.min;      # 9
}

{
    my %h = (9,9,10,10).Bag; say %h.keys.min(+*);         # 9
}


{
    # marton
    my %h is Bag = (9,9,10,10); say %h.keys.min(+*);      # 9
}



exit;
{
    # the central weirdness about getting too many numeric methods
    my @array;
    for @array.^methods(:all) -> $a { say "$a.name()"; };

    # raku bg_bag.raku | egrep tan
    # atanh
    # tan
    # acotanh
    # atan
    # cotan
    # cotanh
    # atan2
    # tanh
    # acotan

    ## what for?

}
