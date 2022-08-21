#!/usr/bin/env perl6
# 
# 02-twiddle_vars.raku            21 Aug 2022 

use v6;

{
  # Note, I thought Márton Polgár said this didn't work in Raku
  my ($a, $b) = (3, 7);
  say "a: $a,  b: $b";    # a: 3,  b: 7
  ($b, $a) = ($a, $b);
  say "a: $a,  b: $b";    # a: 7,  b: 3
}

{
  say "===";
  my ($a, $b) = (3, 7);
  say "a: $a,  b: $b";    # a: 3,  b: 7
  ($b, $a) = $a, $b;

  say "a: $a,  b: $b";   # a: 7,  b: 3
}

{
  # funny: no change at all
  say "===";
  my ($a, $b) = (3, 7);
  say "a: $a,  b: $b";    # a: 3,  b: 7
  $b, $a = $a, $b;

  say "a: $a,  b: $b";    # a: 3,  b: 7

# WARNINGS for /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/02-twiddle_vars.raku:
# Useless use of $b in sink context (lines 29, 29)


}
