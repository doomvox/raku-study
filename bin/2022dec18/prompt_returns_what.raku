#!/usr/bin/env perl6
# 
# prompt_returns_what.raku            18 Dec 2022 

use v6;

my Int $var;

$var = prompt("gimme an int: ");  ## Manually type in a 6

say $var.WHAT;
say $var;
# (IntStr)
# 6
