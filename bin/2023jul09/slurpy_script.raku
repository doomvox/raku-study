#!/usr/bin/env raku
# 
# slurpy_script.raku            09 Jul 2023 

use v6;

sub MAIN (+@a) {
    for @a -> $a {
        say '[', "$a", ']';
    }
}
