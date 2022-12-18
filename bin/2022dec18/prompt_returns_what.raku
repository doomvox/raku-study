#!/usr/bin/env perl6
# 
# prompt_returns_what.raku            18 Dec 2022 

use v6;

my Int $var;  ## must be Int *or any subclass*

$var = prompt("gimme an int: ");  ## Manually type  6 <return>

say $var.WHAT;
say $var;
# (IntStr)
# 6

say $var.^mro;
# ((IntStr) (Allomorph) (Str) (Int) (Cool) (Any) (Mu))
