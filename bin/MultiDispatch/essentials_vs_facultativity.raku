#!/usr/bin/env raku
# 
# essentials_vs_facultativity.raku            18 Sep 2024 

use v6;


multi sub more ($on) {
  say "ONE: one argument and only one: $on";
}

multi sub more ($on, $andon = ' ... ') {
  say "TWO: first the required argument: $on";
  say "TWO: and we go on with the second argument: $andon";
}

## if this TWO-PRIME version exists, the above TWO is never called
##   multi sub more ($on, $andon) {
##     say "TWO-PRIME: first the required argument: $on";
##     say "TWO-PRIME: and we go on with the second argument: $andon";
##   }
## you do not get an error or warning such as "Ambiguous call to ..."?
## (the E trumps F rule in action, for raku)


more("over");
## ONE: one argument and only one: over
say "===";
more("over", "and over");
## TWO: first the required argument: over
## TWO: and we go on with the second argument: and over

## Note: the default value for the second argument will never be used

