#!/usr/bin/env perl6
# 
# 2021jan24-grammar_calculator_example.pl6            24 Jan 2021 

use v6;

# Example from page (under Proto regexes):
#   https://docs.raku.org/language/grammars

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
# 5
