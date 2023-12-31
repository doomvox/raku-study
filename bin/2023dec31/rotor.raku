#!/usr/bin/env raku
# 
# rotor.raku            31 Dec 2023 

use v6;

say ('a' .. 'f').rotor(2);
# ((a b) (c d) (e f))

say ('a' .. 'g').rotor(2);
# ((a b) (c d) (e f))


say ('a' .. 'g').batch(2);
# ((a b) (c d) (e f) (g))

say ('a' .. 'g').rotor(2, :partial);
# ((a b) (c d) (e f) (g))



### say "gojira".split('').rotor(3);
### # (( g o) (j i r))  # W: where did the leading space come from?


