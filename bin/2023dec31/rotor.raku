#!/usr/bin/env raku
# 
# rotor.raku            31 Dec 2023 

use v6;


say ('a' .. 'f').rotor(2);
# ((a b) (c d) (e f))

say ('a' .. 'g').rotor(2);
