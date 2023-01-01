#!/usr/bin/env perl6
# 
# bill_style_question_dollar_slash.raku            01 Jan 2023 

use v6;

# WHICH CODE EXAMPLE IS THE PRETTIEST?

# Vote for your favorite (or post your own):

# [#] > #REPL (line numbers altered to differentiate)
# Nil
# [0] > $_ = 'gracefully'


{
  $_ = 'gracefully';

  # gracefully
  # [1a] > put "The root of $_ is $/." if / .+ <?before ly> /;

  put "The root of $_ is $/." if / .+ <?before ly> /;
  # The root of gracefully is graceful.
}

{
    $_ = 'gracefully';
    if / .+ <?before ly> / {
        put "The root of $_ is $/.";
    }
    # The root of gracefully is graceful.
}


# [1b] > put "The root of $_ is $<>." if / .+ <?before ly> /;
# The root of gracefully is graceful.
# [1c] > print "The root of $_ is " andthen put $/ ~ '.' if / .+ <?before ly>
# /;
# The root of gracefully is graceful.
# [1d] > print "The root of $_ is " andthen put $<> ~ '.' if / .+ <?before
# ly> /;
# The root of gracefully is graceful.
# [1] >

# [2a] >

put "Or is the root of $_ $/?" if / .+ <?before full> /;
# Or is the root of gracefully grace?


# [2b] > put "Or is the root of $_ $<>?" if / .+ <?before full> /;
# Or is the root of gracefully grace?
# [2c] > print "Or is the root of $_ " andthen put $/ ~ '?' if / .+ <?before
# full> /;
# Or is the root of gracefully grace?
# [2d] > print "Or is the root of $_ " andthen put $<> ~ '?' if / .+ <?before
# full> /;
# Or is the root of gracefully grace?
# [#] >


{
    say "---";
    # bill was saying he's not sure why this works?
    $_ = 'gracefully';
    print "The root of $_ is " andthen put $/ ~ '.' if / .+ <?before ly> /;
    # The root of gracefully is graceful.

    # bg: if goes first, anthen goes second, then the print runs third.

}



{
    say "---";
    $_ = 'gracefully';
    say "The topic is {$_.gist} ." with / .+ <before ly> /;
    # The topic is / .+ <before ly> / .
}


{
    say "---";
    $_ = 'gracefully';
    say "The topic is {$_.gist} ." with  $_ ~~ / .+ <before ly> /;
    # The topic is ｢graceful｣
    #  before => ｢｣ .
}


{
    say "---";
    $_ = 'gracefully';
#    say "The topic is {$_.gist} ." with  m/ .+ <before ly> /;
#    say "The topic is $_ ." with  m/ .+ <before ly> /;
    # The topic is graceful .
    say "The topic is $_." with  m/ .+ <before ly> /;
    # The topic is graceful.
}


{
    say "---";
    $_ = 'gracefully';
    say "The topic is $_." if  m/ .+ <before ly> /;
}
