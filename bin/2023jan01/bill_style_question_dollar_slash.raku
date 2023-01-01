#!/usr/bin/env perl6
# 
# bill_style_question_dollar_slash.raku            01 Jan 2023 

use v6;

# WHICH CODE EXAMPLE IS THE PRETTIEST?

# Vote for your favorite (or post your own):

# [#] > #REPL (line numbers altered to differentiate)
# Nil
# [0] > $_ = 'gracefully'


$_ = 'gracefully';

# gracefully
# [1a] > put "The root of $_ is $/." if / .+ <?before ly> /;

put "The root of $_ is $/." if / .+ <?before ly> /;
# The root of gracefully is graceful.


{
    # The root of gracefully is graceful.
    $_ = 'gracefully';
    if / .+ <?before ly> / { 
        put "The root of $_ is $/." ;
    }
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
