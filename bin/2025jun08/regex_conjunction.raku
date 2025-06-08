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

say $str1 ~~ / <?[foo]> && <?[bar]> /;  # Nil  (because the points they don't match are different... ?)

say $str1 ~~ / <?[foo]> || <?[bar]> /;  # ｢｣

say "foo be not bar" ~~ / <?[foo] && bar /;
