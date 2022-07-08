#!/usr/bin/env perl6
# 
# controlling_range_of_regex_capture_without_named_regex-ii.raku            08 Jul 2022 

use v6;

# picking markers that won't confuse the pathetic syntax highlighting

# 1D115;MUSICAL SYMBOL BRACKET;So;0;L;;;;;N;;;;;
# 𝄕
# 1D114;MUSICAL SYMBOL BRACE;So;0;L;;;;;N;;;;;
# 𝄔

# 2506;BOX DRAWINGS LIGHT TRIPLE DASH VERTICAL;So;0;ON;;;;;N;FORMS LIGHT TRIPLE DASH VERTICAL;;;;
# 2507;BOX DRAWINGS HEAVY TRIPLE DASH VERTICAL;So;0;ON;;;;;N;FORMS HEAVY TRIPLE DASH VERTICAL;;;;

# ┆
# ┇

# Goal:
# Change a match only between markers, but leave the markers in place

{
    my regex quoted { \𝄕 <( <-[𝄕𝄔]>+ )> \𝄔 }  

    my $str = q{The 𝄕rain𝄔 in Spain sprains the brain.};
    say $str ~~ m/<quoted>/;
    # ｢"rain"｣
    #   quoted => ｢rain｣

    # try to change the quoted string, but leave quotes alone (NG)
    $str ~~ s/<quoted>/refrain/;
    say $str; # The refrain in Spain sprains the brain.
    # Note: no quotes around refrain

    # is it different without a named capture?
    # try to change the quoted string, but leave quotes alone (NG)
    $str ~~ s/ \𝄕 <( <-[𝄕𝄔]>+ )> \𝄔 /refrain/;
    say $str; # The refrain in Spain sprains the brain.

    say "===";
}

{
#    my regex quoted { \𝄕 <( <-[𝄕𝄔]>+ )> \𝄔 }  
    my regex quoted { \𝄕 <( <-[𝄕𝄔]>+ )> {make $1} \𝄔 }   ## doesn't change anything
#    my regex quoted { \𝄕 <( <-[𝄕𝄔]>+ )> {make $1} \𝄔 }   ## doesn't change anything

    my $str = q{The 𝄕rain𝄔 in Spain sprains the brain.};
    my $ret = 
      $str ~~ m/<quoted>/;
    say $ret;
    # ｢"rain"｣
    #   quoted => ｢rain｣
    put $ret;
    say "---";
    dd $ret;



    # try to change the quoted string, but leave quotes alone (NG)
    $str ~~ s/<quoted>/refrain/;
    say $str; # The refrain in Spain sprains the brain.
    # Note: no quotes around refrain



    say "===";
}

