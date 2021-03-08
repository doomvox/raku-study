#!/usr/bin/env perl6
# 
# strip_control_chars_from_utf8.pl6            07 Mar 2021 

use v6;

# *** William Michels suggests doing this simple shell problem in Raku:
# **** https://unix.stackexchange.com/a/636948

# 15:08:19	 From Bill Michels : "Cc"	"Control" or "cntrl" on this page: https://docs.raku.org/language/regexes#Unicode_properties
# 15:10:06	 From Bruce Gray : Better: https://docs.raku.org/language/regexes#Predefined_character_classes
# 15:11:53	 From Bill Michels : https://tools.ietf.org/html/rfc3629#section-3
# 15:12:54	 From Bruce Gray : raku -e 'say (^256).grep({ .chr ~~ /<cntrl>/ }).fmt("%x")'
# 0 1 2 3 4 5 6 7 8 9 a b c d e f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 7f 80 81 82 83 84 85 86 87 88 89 8a 8b 8c 8d 8e 8f 90 91 92 93 94 95 96 97 98 99 9a 9b 9c 9d 9e 9f
# 15:13:02	 From Jeff : https://raku-musings.com/rash1.html
# 15:14:13	 From Bruce Gray : collapses to 0x00..0x1f, 0x7f, 0x80..0x9f

# 15:16:09	 From Bruce Gray : https://en.wikipedia.org/wiki/Control_character#In_Unicode
# 15:16:14	 From Bruce Gray : https://en.wikipedia.org/wiki/Unicode_control_characters



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

say $/ if "#cccll yaddah chocolate # cake" ~~ m/ ^ <:Ll+:Cc+:space+[#]>* /;   # ｢#cccll yaddah chocolate # cake｣

say $/ if "#cccll yaddah chocolate # cake" ~~ m/ ^ <:Ll+:Cc+:space+[#]-[o]>* /;   # # ｢#cccll yaddah ch｣

say $/ if "yaddahchocolatecake" ~~ <[a..z]-[aeiouyw]>;  # ｢#cccll yaddah ch｣

# bruce gray, for readability:
#  raku -e 'say $/ if "hello\n" ~~ $_ for /<.lower>+<.cntrl>+/, /<.lower>+/, /<.cntrl>+/;' 
# Or better (closer to problem statement):
#   <:lower+:cntrl> 
