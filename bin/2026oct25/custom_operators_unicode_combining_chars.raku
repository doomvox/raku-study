#!/usr/bin/env perl6
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026oct25/custom_operators_unicode_combining_chars.raku

use v6;

# 1F602;FACE WITH TEARS OF JOY;So;0;ON;;;;;N;;;;;     😂
# 1F603;SMILING FACE WITH OPEN MOUTH;So;0;ON;;;;;N;;;;;  😃
# 1F604;SMILING FACE WITH OPEN MOUTH AND SMILING EYES;So;0;ON;;;;;N;;;;;😄
# 1F605;SMILING FACE WITH OPEN MOUTH AND COLD SWEAT;So;0;ON;;;;;N;;;;;   😅

# 1F9B0;EMOJI COMPONENT RED HAIR;So;0;ON;;;;;N;;;;;
# 1F9B1;EMOJI COMPONENT CURLY HAIR;So;0;ON;;;;;N;;;;;
# 1F9B2;EMOJI COMPONENT BALD;So;0;ON;;;;;N;;;;;
# 1F9B3;EMOJI COMPONENT WHITE HAIR;So;0;ON;;;;;N;;;;;

multi infix:<😂> (  $a,  $b ) is export { say "Fundamentally no $a really knows anything about $b"; };


"programmer" 😂 "holes in the ground";

# Fundamentally no programmer really knows anything about holes in the ground


multi circumfix:<😃 😄> ( $a ) { say "But what about $a"; } 

my $r = 😃'The hole design pattern'😄;

## Would be nice to be able to just do it like this:
# my $r = 😃The hole design pattern😄;
## But raku wants to call routines named "design" and "pattern" and so on.


## It's perhaps a missing feature: Can you define custom quote operators? 

# Some references (Bruce suggests macros-- not yet fully implemented-- could do it.)
#   https://docs.raku.org/syntax/macros

#   https://docs.raku.org/language/quoting  
