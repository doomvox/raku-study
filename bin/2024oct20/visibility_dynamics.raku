#!/usr/bin/env raku
# 
# visibility_dynamics.raku            08 Dec 2024 

use v6;

{
    say $*RAT-OVERFLOW;

    my $*RAT-OVERFLOW = FatRat;

# ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/visibility_dynamics.raku
# Illegal post-declaration of dynamic variable '$*RAT-OVERFLOW'.  Earlier
# access must be written as 'CALLERS::<$*RAT-OVERFLOW>' if that's what you
# meant.


#     say $*RAT-OVERFLOW;
}

#say $*RAT-OVERFLOW;
