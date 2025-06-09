#!/usr/bin/env raku
# 
# array_interpolation_in_regexs.raku            09 Jun 2025 

use v6;

{
    my @stuff := <foo bar ber>;
    say "thefoo" ~~ /the @stuff/;  #  ｢thefoo｣

    say "the bozobaric" ~~ /the @stuff/;  #  Nil
    say "the bozobaric" ~~ /the .*?  @stuff/;  # ｢the bozobar｣

    say "the bozobaric" ~~ /the .*?  <foo bar ber>/;  # ｢the bozobar｣    


}
