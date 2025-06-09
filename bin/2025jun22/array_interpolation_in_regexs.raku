#!/usr/bin/env raku
# 
# array_interpolation_in_regexs.raku            09 Jun 2025 

use v6;

{
    my @stuff := <foo bar ber>;
    say "thefoo" ~~ /the @stuff/;  #  ｢thefoo｣

    say "the bozobaric" ~~ /the @stuff/;  #  Nil
    say "the bozobaric" ~~ /the .*?  @stuff/;  # ｢the bozobar｣

#     say "the bozobaric" ~~ /the .*?  <foo bar ber>/;  # ｢the bozobar｣    
## Potential difficulties:
##    Space is not significant here; please use quotes or :s (:sigspace) modifier (or, to suppress this warning, omit the space, or otherwise change the spacing)
##
##     ## No such method 'foo' for invocant of type 'Match'

    say "thefoo" ~~ /< foo bar ber >/;  # ｢foo｣
    say "the bozobaric" ~~ /the .*?  < foo bar ber >/;  # ｢the bozobar｣

    ## TODO white space issue: <foo bar ber> differes from < foo bar ber >
    ##      but I'm also told that "space is not significant here", so WTF?

    say so "the foo" ~~ /[ foo | bar | ber ]/;
    
}
