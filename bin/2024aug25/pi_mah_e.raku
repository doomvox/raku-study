#!/usr/bin/env raku
# 
# pi_mah_e.raku            25 Aug 2024 

use v6;


say π;  # 3.141592653589793

say 𝑒;  # 2.718281828459045

say (𝑒..π).WHAT;

say (𝑒..π)[2]; # Nil

if ( 2.5 ~~ (𝑒..π) ) {
    say "a hit";
}
