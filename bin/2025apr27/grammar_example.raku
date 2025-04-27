#!/usr/bin/env raku
# 
# grammar_example.raku            27 Apr 2025 

use v6;

grammar Calculator {
    token TOP { [ <add> | <sub> ] }
    rule  add { <num> '+' <num> }
    rule  sub { <num> '-' <num> }
    token num { \d+ }
}

class Calculations {
    method TOP ($/) { make $<add> ?? $<add>.made !! $<sub>.made; }
    method add ($/) { make [+] $<num>; }
    method sub ($/) { make [-] $<num>; }
}

say Calculator.parse('2 + 3', actions => Calculations).made;      ## 5


say Calculator.parse('2 + 3 + 7', actions => Calculations).made;  ## Nil 
