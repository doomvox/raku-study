#!/usr/bin/env perl6
# 
# simple_make_made_games.raku            23 Jul 2022 

use v6;

 
{
    # in this new scope, there's a new $/
    # it is not yet a Match object
    say $/;      # Nil
    say $/.WHAT; # Nil

    # after you do a match, $/ contains the match object
    "abcd" ~~ /b/;
    say $/;           # ｢b｣
    say $/.WHAT;      # (Match)
    
    make("Ms. Take");
    say $/;      # ｢b｣
    say $/.made; # Ms. Take

    make("Erin Human");
    say $/.made; # Erin Human
    # So: a second make overwrites the value of the first

    # the make/made "payload" *is* attached to the match object, right?
    say $/.made; # Erin Human
    dd $/;
    # Match $/ = Match.new(:orig("abcd"), :from(1), :pos(2), :made("Erin Human"))
    $/ = Match.new();
    say $/.made; # Nil
    # Yes: the channel the make/made info travels trough is that "made" field in $/
    # (Note: I think this was originally called "ast", now it's "made")
    # BUT doing a "make" on a $/ works even when it's not writeable, which is interesting.




    # You can send complex data structures through the make/made channel,
    # but the obvious way of doing a "make" on a list doesn't work:
    # make("alpha", "beta", "gamma");
    ## Calling make(Str, Str, Str) will never work with declared signature (Mu \made)

    make( ("alpha", "beta", "gamma") );
    say $/.made;  # (alpha beta gamma)

}

