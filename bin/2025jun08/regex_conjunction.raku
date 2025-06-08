#!/usr/bin/env raku
# 
# regex_conjunction.raku            08 Jun 2025 

use v6;


# Perl: /foo.*bar|bar.*foo/
# Raku: / foo & bar /

my $str1 = "Fooseball behind the bar is forbidden.";
my $str2 = "Bar none, fooseball before the bar is a guaranteed contempt of court citation.";

say $str1 ~~ / foo & bar /
say $str2 ~~ i:/ foo & bar /
