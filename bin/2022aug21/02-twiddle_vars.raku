#!/usr/bin/env perl6
# 
# 02-twiddle_vars.raku            21 Aug 2022 

use v6;

{
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

  # Warns:
  # Useless use of private variable in void context at 01-twiddle_vars.pl line 37.

  $a = " " unless defined $a;
  $b = " " unless defined $b;

  say "a: $a,  b: $b";   # a:  ,  b: 3
}

