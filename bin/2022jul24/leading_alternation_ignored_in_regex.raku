#!/usr/bin/env perl6
# 
# leading_alternation_ignored_in_regex.raku            24 Jul 2022 

use v6;

## Department of "I didn't know *that*":

# https://raku.org/archive/doc/design/apo/A05.html
#
#   "[Update: now we just ignore the first | if there's nothing before it so that you can say"

my Regex $hit = /[
       | single
       | double
#       | home run    # buggy: need to handle the embedded space
#       | 'home run'  # works
#       | home\ run   # works 
       | :s home   run   # works
       | triple
     ]/;

# Note: the sigspace rules (:s) are interesting,
#   multiple spaces are treated as one (?),
#   trailing spaces in front of the "#" comment are ignored.



# say "triple" ~~ $hit;
say "triple" ~~ /<$hit>/;
# ｢triple｣

say "home run" ~~ /<$hit>/;
｢home run｣


# But, there's a bug in the given example
# The space in home run needs quoting or :s or something
#  | home run 

# Potential difficulties:
#     Space is not significant here; please use quotes or :s
#     (:sigspace) modifier (or, to suppress this warning, omit the
#     space, or otherwise change the spacing) at
#     /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul24/leading_alternation_ignored_in_regex.raku:19

