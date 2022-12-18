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
say $var.^parents;
# ((Allomorph) (Str) (Int))

say "parents tree: ";
say $var.^parents( :tree );
# parents tree: 
# ([(Allomorph) [(Str) [(Cool) [(Any) [(Mu)]]]]] [(Int) [(Cool) [(Any) [(Mu)]]]])

say "parents all: ";
say $var.^parents( :all );
# parents all: 
# ((Allomorph) (Str) (Int) (Cool) (Any) (Mu))
