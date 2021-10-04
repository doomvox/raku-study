#!/usr/bin/env perl6
#                                                29 Sep 2021 
#  multidispatch_overlapping_subsets_use_order_dependency-b.raku

## This is a case with two multis imported from different modules, which
## each use a subset of Str with a list of strings that has an overlap, an
## ambiguous case which is resolved by order of definition of the multi,
## and hence the order of the "use" lines.
 
use v6;

use lib $*PROGRAM.parent(2).add("lib");

{ 
  say "a: Monster Hero trial run";
  use Speak::Monster;
  use Speak::Hero;
  speak('godzilla');    ## The monster, godzilla roars!
}




# ===
# Author:  doom@kzsu.stanford.edu

