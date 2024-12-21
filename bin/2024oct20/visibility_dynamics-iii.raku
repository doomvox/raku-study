#!/usr/bin/env raku
# 
# visibility_dynamics.raku            08 Dec 2024 

use v6;

say "1: ", $*RAT-OVERFLOW;  # Num 
say $*RAT-OVERFLOW.WHICH;

say "2: ";
check_via_a_sub();    # Num 
{
    temp $*RAT-OVERFLOW = FatRat;
    say $*RAT-OVERFLOW.WHICH;
#    my $*RAT-OVERFLOW = FatRat;

    say "3: ";
    check_via_a_sub();  ## what does this see?   # FatRat!  (take that)

    say "4: ";
    say $*RAT-OVERFLOW;      # FatRat
}

say "5: ", $*RAT-OVERFLOW;   # Num 



sub check_via_a_sub {
    say $*RAT-OVERFLOW.WHICH;
    say "checking via this check_via_a_sub sub";
    say $*RAT-OVERFLOW;
}


