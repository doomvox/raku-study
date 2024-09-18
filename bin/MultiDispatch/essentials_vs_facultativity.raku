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

