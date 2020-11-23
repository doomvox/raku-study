#!/usr/bin/env perl6
# 
# boolean_condition_check_in_regex.pl6            22 Nov 2020 

use v6;

# Starting with a code example by lizmat from:
#   https://stackoverflow.com/questions/64909029/is-it-possible-to-do-boolean-assertions-with-raku-regex

# Demos a regex interpolation feature that treats the code in curlies 
# as a boolean expression, matches if true:

say "9471" ~~ m:g/ (\d) <?{ $0 > 5 }> /;
 # (｢9｣
 #  0 => ｢9｣
 # ｢7｣
 #  0 => ｢7｣)
say "---";

# breaking it down to see how the pieces work:
"abcdefg" ~~ m:g/ (\w) /;
say "---";
say $/;
# (｢a｣
#  0 => ｢a｣
#  ｢b｣
#  0 => ｢b｣
#  ｢c｣
#  0 => ｢c｣
#  ｢d｣
#  0 => ｢d｣
#  ｢e｣
#  0 => ｢e｣
#  ｢f｣
#  0 => ｢f｣
#  ｢g｣
#  0 => ｢g｣)
## note, the above output was manually reformatted for readability

## looking at a match, different ways of seeing what we've got
say "---";
say $/.[4];
# ｢e｣
#  0 => ｢e｣
say $/.[4].Str;
# e
say ~ $/.[4];
# e 
$/.[4].put;
# e
put $/.[4];
# e
say "===";
## code interpolation to spy on regex
"abcdefg" ~~ m:g/ (\w) <{ say $0; }> /;
# ｢a｣
# ｢b｣
# ｢c｣
# ｢d｣
# ｢e｣
# ｢f｣
# ｢g｣

say "~~~";
## using the code to force the match to fail
"abcdefg" ~~ m:g/ (\w) <?{ say $0; False }> /;
# ｢a｣
# ｢b｣
# ｢c｣
# ｢d｣
# ｢e｣
# ｢f｣
# ｢g｣

## does that look like it's matching?  But:
say $/;  #  ()

## $0 inside the code block tells you what's going on 
## *at that stage* of the matching process.

say "^^^";
## .pos and .from a similar, but differ by 1:
"abcdefg" ~~ m:g/ (\w) <?{ say $0.pos }> /;
# 1
# 2
# 3
# 4
# 5
# 6
# 7

"abcdefg" ~~ m:g/ (\w) <?{ say $0.from }> /;
# 0
# 1
# 2
# 3
# 4
# 5
# 6

"abcdefg" ~~ m:g/ (\w) <?{ say $0.from, ' ', $0.to }> /;
# 0 1
# 1 2
# 2 3
# 3 4
# 4 5
# 5 6
# 6 7

say "vvv";
## we do have an overall match (boolean return is True)
put $/;
# a b c d e f g
## Note: put output is neater than say, which can confuse...

say "!!!";
## The .raku method gives you everything
say $/.raku;
# $(Match.new(:orig("abcdefg"), :from(0), :pos(1), :list((Match.new(:orig("abcdefg"), :from(0), :pos(1)),))), Match.new(:orig("abcdefg"), :from(1), :pos(2), :list((Match.new(:orig("abcdefg"), :from(1), :pos(2)),))), Match.new(:orig("abcdefg"), :from(2), :pos(3), :list((Match.new(:orig("abcdefg"), :from(2), :pos(3)),))), Match.new(:orig("abcdefg"), :from(3), :pos(4), :list((Match.new(:orig("abcdefg"), :from(3), :pos(4)),))), Match.new(:orig("abcdefg"), :from(4), :pos(5), :list((Match.new(:orig("abcdefg"), :from(4), :pos(5)),))), Match.new(:orig("abcdefg"), :from(5), :pos(6), :list((Match.new(:orig("abcdefg"), :from(5), :pos(6)),))), Match.new(:orig("abcdefg"), :from(6), :pos(7), :list((Match.new(:orig("abcdefg"), :from(6), :pos(7)),))))

## A crude way of reformatting that
say $/.raku.subst( :g, / \s+ /, "\n");   
## that the :g works as first arg surprised me (it also works as a 3rd arg)
## (see subst_again.pl6)

# $(Match.new(:orig("abcdefg"),
# :from(0),
# :pos(1),
# :list((Match.new(:orig("abcdefg"),
# :from(0),
# :pos(1)),))),
# Match.new(:orig("abcdefg"),
# :from(1),
# :pos(2),
# :list((Match.new(:orig("abcdefg"),
# :from(1),
# :pos(2)),))),
# Match.new(:orig("abcdefg"),
# :from(2),
# :pos(3),
# :list((Match.new(:orig("abcdefg"),
# :from(2),
# :pos(3)),))),
# Match.new(:orig("abcdefg"),
# :from(3),
# :pos(4),
# :list((Match.new(:orig("abcdefg"),
# :from(3),
# :pos(4)),))),
# Match.new(:orig("abcdefg"),
# :from(4),
# :pos(5),
# :list((Match.new(:orig("abcdefg"),
# :from(4),
# :pos(5)),))),
# Match.new(:orig("abcdefg"),
# :from(5),
# :pos(6),
# :list((Match.new(:orig("abcdefg"),
# :from(5),
# :pos(6)),))),
# Match.new(:orig("abcdefg"),
# :from(6),
# :pos(7),
# :list((Match.new(:orig("abcdefg"),
# :from(6),
# :pos(7)),))))
# doom@fandango:~/End/Cave$ 




