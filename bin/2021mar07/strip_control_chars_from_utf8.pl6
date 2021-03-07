#!/usr/bin/env perl6
# 
# strip_control_chars_from_utf8.pl6            07 Mar 2021 

use v6;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }


my $text =
  "Blah blah blah \x[c] bleh \t bleh and also 	(that's a literal)\n meep \b hey";

say $text;

say $text.chars;                  # 69
say $text.encode('utf-8').bytes;  # 69

## say $text.^methods;
# trans

## $text.subst(:g, /<cntrl>/, '');  ## tosses return, no warning

my $new_text = $text.subst(:g, /<cntrl>/, '');

say $new_text;
say $new_text.chars;              # 64

## william michels solution:
##
# > say $/ if "hello\n" ~~ / <:Ll>+<:Cc>+ /;
# ｢hello
# ｣
# > say $/ if "hello\n" ~~ / <:Ll>+ /;
# ｢hello｣
# > say $/ if "hello\n" ~~ / <:Cc>+ /;
# ｢
# ｣
# > 

say $/ if "hello\n" ~~ / <:Ll>+<:Cc>+ /;  # but requires the control chars after the lower case
# ｢hello
# ｣

say $/ if "hello\n" ~~ / <:Ll+:Cc>+  /;  # intermixed
# ｢hello
# ｣

say $/ if "# chocolate # cake" ~~ m:g / ^ <:Ll+:Cc+[#]> *   /;   # (｢#｣)

say $/ if "#cccll yaddah chocolate # cake" ~~ m/ ^ <:Ll+:Cc+[#]+:space>* /;   # ｢#cccll yaddah chocolate # cake｣



# bruce gray, for readability:
#  raku -e 'say $/ if "hello\n" ~~ $_ for /<.lower>+<.cntrl>+/, /<.lower>+/, /<.cntrl>+/;' 
# Or better:
#   <:lower+:cntrl> 
