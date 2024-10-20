#!/usr/bin/env raku
# 
# array_typology.raku            20 Oct 2024 

use v6;



my Int @n =  1, 2, 3;

say @n;  # [1 2 3]

@n[3] = 'a';

## # Type check failed for an element of @n; expected Int but got Str ("a")
## #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/array_typology.raku line 13


