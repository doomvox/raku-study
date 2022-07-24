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
    say $/.made; # Erin Human
    # A second make overwrites the value of the first

    # the make/made "payload" *is* attached to the match object, right?
    say $/.made; # Erin Human
    dd $/;
    # Match $/ = Match.new(:orig("abcd"), :from(1), :pos(2), :made("Erin Human"))
    $/ = Match.new();
    say $/.made; # Nil

    # make("alpha", "beta", "gamma");
    ## Calling make(Str, Str, Str) will never work with declared signature (Mu \made)

    make( ("alpha", "beta", "gamma") );
    say $/.made;  # (alpha beta gamma)


}

