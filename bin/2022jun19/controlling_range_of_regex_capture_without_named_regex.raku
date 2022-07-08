#!/usr/bin/env perl6
# 
# controlling_range_of_regex_capture_without_named_regex.raku            08 Jul 2022 

use v6;

# Goal:
# Change a match only when quoted, but leave the quotes in place

{
    ## zoffix example, 2018 talk,  at 14:50
    my regex quoted { \" <( <-["]>+ )> \" }  

    my $str = q{The "rain" in Spain sprains the brain.};
    say $str;
    # The "rain" in Spain sprains the brain.

    say $str ~~ m/<quoted>/;
    # ｢"rain"｣
    #   quoted => ｢rain｣

    # change the quoted string, but leave quotes alone (or so I thought...)
    say 
        $str ~~ s/<quoted>/refrain/;
    # ｢"rain"｣
    #   quoted => ｢rain｣

    # OH: starting to see what's going on... 

    say $str; # The refrain in Spain sprains the brain.
    # Note: refrain is *not* quoted.  Bug, or just weird?

    say "===";
}

