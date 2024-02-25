#!/usr/bin/env raku
# 
# fussy_unit_via_int.raku            25 Feb 2024 

use v6;

{
    subset FussyUint16 of Int where 0 <= * < 2 ** 16;
    my FussyUint16 $x = 3;
    say $x;
}

{
    subset FussyUint16 of Int where 0 <= * < 2 ** 16;
    my FussyUint16 $x = -1;
    ## Type check failed in assignment to $x; expected FussyUint16 but got Int (-1)
    say $x;
}
