#!/usr/bin/env perl6

use v6;

# 1F602;FACE WITH TEARS OF JOY;So;0;ON;;;;;N;;;;;     😂
# 1F603;SMILING FACE WITH OPEN MOUTH;So;0;ON;;;;;N;;;;;
# 1F604;SMILING FACE WITH OPEN MOUTH AND SMILING EYES;So;0;ON;;;;;N;;;;;
# 1F605;SMILING FACE WITH OPEN MOUTH AND COLD SWEAT;So;0;ON;;;;;N;;;;;   😅

# 1F9B0;EMOJI COMPONENT RED HAIR;So;0;ON;;;;;N;;;;;
# 1F9B1;EMOJI COMPONENT CURLY HAIR;So;0;ON;;;;;N;;;;;
# 1F9B2;EMOJI COMPONENT BALD;So;0;ON;;;;;N;;;;;
# 1F9B3;EMOJI COMPONENT WHITE HAIR;So;0;ON;;;;;N;;;;;



sub infix:<😂> (  $a,  $b ) is export { say "Fundamentally no $a really knows anything about $b"; };


"programmer" 😂 "holes in the ground";

# Fundamentally no programmer really knows anything about holes in the ground


sub circumflix:<😅 😅> ( $a ) { say "But what about $a"; } 

😅The hole design pattern😅;

## Cannot add tokens of category 'circumflex'
