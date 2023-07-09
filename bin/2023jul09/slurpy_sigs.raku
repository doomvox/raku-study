#!/usr/bin/env raku
# 
# slurpy_sigs.raku            09 Jul 2023 

use v6;


sub grab(+@a) {
    "grab $_".say for @a
}

say grab(<<a b c>>);

# grab a
# grab b
# grab c
# Nil

say "===";

say grab("hi");
