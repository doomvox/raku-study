#!/usr/bin/env raku
# 
# fussy_unit_via_int.raku            25 Feb 2024 

use v6;


{
    my subset FussyUint16 of Int where 0 <= * < 2 ** 16;
    my FussyUint16 $x = 3;
    say $x;
}

{
    my subset FussyUint16 of Int where 0 <= * < 2 ** 16;
#    my FussyUint16 $x = -1;
    ## Type check failed in assignment to $x; expected FussyUint16 but got Int (-1)
#    say $x;
}


{
    my subset FussyUint16 of Int where 0 ..^ 2 ** 16;
    my FussyUint16 $x = 6;
    # $x = -1;
    ## Type check failed in assignment to $x; expected FussyUint16 but got Int (-1)
    say $x;
}

# ToddAndMargo@zoho.com, perl6-users@perl.org
{
    my subset FussyUint16 of Int where 0 ..^ 2¹⁶;
    my FussyUint16 $x = 6;
    # $x = -1;
    ## Type check failed in assignment to $x; expected FussyUint16 but got Int (-1)
    say $x;

}
