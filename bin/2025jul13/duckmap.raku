#!/usr/bin/env raku
# 
# duckmap.raku            13 Jul 2025 

use v6;

## I think understand "duckmap" in broad outline.
## How exactly do you use it?
## Find a code example.

<a b c d e f g>.duckmap(-> $_ where <c d e>.any { .uc }).say;
   #  (a b C D E f g)
(('d', 'e'), 'f').duckmap(-> $_ where <e f>.any { .uc }).say;
   #  ((d E) F)
{ first => ('d', 'e'), second => 'f'}.duckmap(-> $_ where <e f>.any { .uc }).say;
   # {first => (d E), second => F}



