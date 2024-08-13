#!/usr/bin/env raku
# 
# the_i_rule-doesnt_rule.raku            12 Aug 2024 

use v6;

multi sub speak (Str $s) {
    say "1: Str, $s"; 
}

multi sub speak (IntStr $s) {
    say "2: IntStr, $s"; 
}


speak("3"); # 1: Str, 3

speak(7);  # Cannot resolve caller speak(Int:D); none of these signatures matches:
           #    (Str $s)
           #    (IntStr $s)


## TODO Need to rethink...
