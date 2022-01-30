#!/usr/bin/env perl6
# 
# eban_number_challenge.raku            30 Jan 2022 

use v6;

# Rob Ransbottom has a side-issue playing with the Eban Numbers weekly challenge:

{
    my @eban = [<2 4 6 > ], # george
    [<3 4 5 6 0 >], # alex
    # Enough already, but generalizing.
    [<0 >], # benny
    [<2 4 6>], # georgeish
    [<3 4 5 6 0>], # alexish
    [<2 4 6>], # woody
    # The preceding 3 lines could be 'xx 6'.
    # What syntax?!
    # Chose Array as rw. List for convenience
    # of entry.
    ; 
}

{
    # bruce gray approach:
    my @eban = [<2 4 6 > ], # george
    [<3 4 5 6 0 >], # alex
    [<0 >], # benny
#    |(
        |(
            [<2 4 6>], # georgeish
            [<3 4 5 6 0>], # alexish
            [<2 4 6>], # woody
        ) xx 6
#    )
    ; 

    .say for @eban; 


}

# useful for debugging 
# say $_».Numeric.raku for @eban; 
# or
# .say for @eban; 
