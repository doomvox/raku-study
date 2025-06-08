#!/usr/bin/env raku
# 
# regex_conjunction.raku            08 Jun 2025 

use v6;


# Perl: /foo.*bar|bar.*foo/
# Raku: / foo & bar /

my $str = "Fooseball behind the bar is forbidden.";
