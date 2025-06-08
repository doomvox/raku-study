#!/usr/bin/env raku
# 
# regex_conjunction.raku            08 Jun 2025 

use v6;


# Perl: /foo.*bar|bar.*foo/
# Raku: / foo & bar /

my $str1 = "fooseball behind the bar is forbidden.";
my $str2 = "bar none, fooseball before the bar is a guaranteed contempt of court citation.";

say $str1 ~~ / foo & bar /;  # Nil
say $str2 ~~ / foo & bar /;  # Nil
say $str1 ~~ / foo & f /;    # Nil
say $str1 ~~ / foo & f.. /;    # ｢foo｣

say $str1 ~~ / <?after foo> && <?after bar> /;  # Nil  (because it's matching, but at two different places?)

say $str1 ~~ / [^ .*? <?after foo> ] && [^ .*? <?after bar> ] /;  # Nil  

say "===";
say $str1 ~~ / [^ .*? foo .*? $ ] && [^ .*? bar .*? $ ] /;  # ｢fooseball behind the bar is forbidden.｣

say $str1 ~~ / [^ .*? foo .*? $ ] && [^ .*? goaway .*? $ ] /;  # Nil

say $str1 ~~ / <?after foo> || <?after bar> /;  # ｢｣

say "foo be not bar" ~~ / <?[foo]> && bar /;  # Nil
say "foo be not bar" ~~ / foo && <?[bar]> /;  # Nil
