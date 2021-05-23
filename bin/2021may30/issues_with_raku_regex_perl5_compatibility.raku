#!/usr/bin/env perl6
# 
# issues_with_raku_regex_perl5_compatibility.raku            22 May 2021 

use v6;

(
"/home/doom/End/Thought/some.txt",
"/home/doom/End/Thought/SNARK_HUNT.html",
"/home/doom/End/Thought/some_other_thing",
"/home/doom/End/Thought/STILL_WATERS",
);

$f.say if $f ~~ m/\/<[0..9cA..Z_-]>+?(\.|$)/;  # 
