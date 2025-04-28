#!/usr/bin/env raku
# 
# grammar_example.raku            27 Apr 2025 

use v6;

## working with a grammar example from the docs
## had questions about:
##  (1) what order things are evaluated in
##  (2) what modification might you use to allow a series: 1+2+7+13


## Marton suggestion for add:
##   <num> ** 2..* % '+'

grammar Calculator {
    token TOP { [ <add> || <sub> ] }
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
