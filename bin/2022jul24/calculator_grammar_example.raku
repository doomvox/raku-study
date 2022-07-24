#!/usr/bin/env perl6
# 
# calculator_grammar_example.raku            23 Jul 2022 

use v6;


## An example form the documentation
# https://docs.raku.org/language/grammars


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
 
say Calculator.parse('2 + 3', actions => Calculations).made;
 
# OUTPUT: 5


## Note: immediately after this example is another improving it with "proto"
##       what does this do for you exactly?
