#!/usr/bin/env perl6
# 
# matches_dollar_parens_addsign_hyper.raku            24 Jul 2022 

# Department of "Oh, I forgot about that"

use v6;

# https://raku.org/archive/doc/design/apo/A05.html
#   RFC 071: Variable-length lookbheind

# Update:
#   $() now represents the entire matched string,
#   the match  object is now $/, 
#   a list of all beginnings is returned by the
#   hyperoperator @()».beg.

# Hm? 
# But note that string positions are not necessarily integers in Perl
# 6. They are tagged with the units of the string, so that you can't
# inadvertently mix byte, codepoint, or grapheme offsets.

