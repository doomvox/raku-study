#!/usr/bin/env raku
# 
# duckmap.raku            13 Jul 2025 

use v6;

## I think understand "duckmap" in broad outline.
## How exactly do you use it?
## Find a code example.

##   https://docs.raku.org/routine/duckmap
<a b c d e f g>.duckmap(-> $_ where <c d e>.any { .uc }).say;
   #  (a b C D E f g)
(('d', 'e'), 'f').duckmap(-> $_ where <e f>.any { .uc }).say;
   #  ((d E) F)

# (('d', 'e'), 'f').deepmap(-> $_ where <e f>.any { .uc }).say;
## Constraint type check failed in binding to parameter '$_'; expected anonymous constraint to be met but got Str ("d")

{ first => ('d', 'e'), second => 'f'}.duckmap(-> $_ where <e f>.any { .uc }).say;
   # {first => (d E), second => F}

say "===";

## Ugh... I coulda sworn this wouldn't work but it does:
<a b c 1 2 3>.duckmap({ $_ + 1 }).say;
  ## (a b c 2 3 4)

## This works for *old* raku, e.g. a 2023 version
## For a newer raku, it fails (Rakudo™ v2025.03-236-gbe3d06a71);
##   Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏a' (indicated by ⏏)

# my $a = 'a';
# say $a + 1; 
# # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏a' (indicated by ⏏)

# say "===";
# # simple data structures thus far (rob complains)

