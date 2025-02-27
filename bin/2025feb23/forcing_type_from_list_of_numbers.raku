#!/usr/bin/env raku
# 
# forcing_type_from_list_of_numbers.raku            23 Feb 2025 

use v6;
{
    my @n = 1, 2, 3, 4;
    say @n;
    say @n.WHAT;     # (Array)
    say @n[2].WHAT;  # (Int)
}

{
    my @n = ( 1, 2, 3, 4 ).map({.Rat});
    say @n;
    say @n.WHAT;     # (Array)
    say @n[2].WHAT;  # (Rat)
}

{
    my @n = ( 1, 2, 3, 4 )>>.Rat;
    say @n;
    say @n.WHAT;     # (Array)
    say @n[2].WHAT;  # (Rat)
}

{
    my @n = ( 1, 2, 3, 4 )>>.FatRat;
    say @n;
    say @n.WHAT;     # (Array)
    say @n[2].WHAT;  # (FatRat)
}

## Rob suggests it would be good to have funky brackets that force a numeric type

