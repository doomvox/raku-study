#!/usr/bin/env raku
# 
# grammar_example.raku            27 Apr 2025 

use v6;

grammar Calculator {
    token TOP { [ <sub> | <add> ] }
    rule  add { <num> '+' <num> }
    rule  sub { <num> '-' <num> }
    token num { \d+ }
}

class Calculations {
    method TOP ($/) { say "TOP?"; make $<add> ?? $<add>.made !! $<sub>.made; say "TOP!" }
#    method add ($/) { make [+] $<num> }
    method add ($/) { make [+] $<num>; say "*add*"; }
#    method sub ($/) { make [-] $<num>; }
    method sub ($/) { make [-] $<num>; say "*sub*"; }
}

say Calculator.parse('2 + 3', actions => Calculations).made;      ## 5


# say Calculator.parse('2 + 3 + 7', actions => Calculations).made;  ## Nil 
