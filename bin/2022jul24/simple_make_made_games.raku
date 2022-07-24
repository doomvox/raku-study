#!/usr/bin/env perl6
# 
# simple_make_made_games.raku            23 Jul 2022 

use v6;

 
{
    # in this new scope, there's a new $/
    # it is not yet a Match object
    say $/;      # Nil
    say $/.WHAT; # Nil

    "abcd" ~~ /b/;

    say $/;      # Nil
    say $/.WHAT; # Nil
    # ｢b｣
    # (Match)

    make("Ms. Take");
    say $/;      # ｢b｣
    say $/.made; # Ms. Take

    make("Erin Human");


    }
