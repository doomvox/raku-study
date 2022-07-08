#!/usr/bin/env perl6
# 
# controlling_range_of_regex_capture_without_named_regex.raku            08 Jul 2022 

use v6;

# Goal:
# Change a match only when quoted, but leave the quotes in place

{

    my regex quoted { \" <( <-["]>+ )> \" }  

    my $str = q{The "rain" in Spain sprains the brain.};
    say $str ~~ m/<quoted>/;
    # ｢"rain"｣
    #   quoted => ｢rain｣

    # try to change the quoted string, but leave quotes alone (NG)
    say 
        $str ~~ s/<quoted>/refrain/;
    say $str; # The refrain in Spain sprains the brain.
    # Note: no quotes around refrain

    # try to change the quoted string, but leave quotes alone (NG)
    say 
        $str ~~ s/ \" <( <-["]>+ )> \" /refrain/;
    say $str; # The refrain in Spain sprains the brain.




    say "===";
}

