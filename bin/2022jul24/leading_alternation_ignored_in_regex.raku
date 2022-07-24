#!/usr/bin/env perl6
# 
# leading_alternation_ignored_in_regex.raku            24 Jul 2022 

use v6;

## Department of "I didn't know *that*":

# https://raku.org/archive/doc/design/apo/A05.html

# [Update: now we just ignore the first | if there's nothing before it so that you can say

my Regex $hit = /[
       | single
       | double
       | triple
#       | home run
       | 'home run'
     ]/;

# say "triple" ~~ $hit;
say "triple" ~~ /<$hit>/;
# ｢triple｣

# But, there's a bug in this example

# Potential difficulties:
#     Space is not significant here; please use quotes or :s
#     (:sigspace) modifier (or, to suppress this warning, omit the
#     space, or otherwise change the spacing) at
#     /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul24/leading_alternation_ignored_in_regex.raku:19

