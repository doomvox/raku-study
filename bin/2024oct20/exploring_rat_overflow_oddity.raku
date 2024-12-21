#!/usr/bin/env raku
# 
# exploring_rat_overflow_oddity.raku            02 Dec 2024 

use v6;

# my $*RAT-OVERFLOW = FatRat; 
$*RAT-OVERFLOW = FatRat; 
# temp $*RAT-OVERFLOW = FatRat; 

{
    my $n;

    $n = 1 / (2⁶⁴-1);                  
    say $n;          # 0.000000000000000000054
    say $n.WHAT;     # (Rat)

    $n = 1 / 2⁶⁴;                  
    say $n;          # 5.421010862427522e-20
    say $n.WHAT;     # (Num)

    $n = 1 / (2⁶⁴+1);                  
    say $n;          # 5.421010862427522e-20
    say $n.WHAT;     # (Num)
}
say "===";
{
    for ( 2⁶⁴-1 .. 2⁶⁴+1 ) -> $d {
        my $n = 1 / $d;
        say $n;          
        say $n.WHAT;     
    }
    # 0.000000000000000000054
    # (Rat)
    # 0.00000000000000000005421011
    # (FatRat)
    # 0.00000000000000000005421011
    # (FatRat)
}

# say "===";
# { ## making sure assigning to a fresh $n doesn't change anything
#     my $n = 1 / 2⁶⁴;                  
#     say $n;          # 5.421010862427522e-20
#     say $n.WHAT;     # (Num)
# }

