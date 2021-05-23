#!/usr/bin/env perl6
# 
# issues_with_raku_regex_perl5_compatibility.raku            22 May 2021 

use v6;

my @files = 
(
"/home/doom/End/Thought/some.txt",
"/home/doom/End/Thought/SNARK_HUNT.html",
"/home/doom/End/Thought/some_other_thing",
"/home/doom/End/Thought/STILL_WATERS",
"/home/doom/End/Thought/SomethingOrOther",
);


$f.say if $f ~~ m/\/<[A..Z_]>+?(\.|$)/;  # 
