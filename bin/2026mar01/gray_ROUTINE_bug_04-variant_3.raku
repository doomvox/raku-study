#!/usr/bin/env raku
# 
# gray_ROUTINE_bug_04.raku            01 Mar 2026 

use v6;

# raku -e 'sub foo ($i) { say $i; exit if $i >= 2; if True { for $i ^.. 3       { &?ROUTINE($_) } } }; foo(1);'

## A bare block around this code changes its behavior,
## but turning that into an if has it failing in the same way 
## as it does without any wrapping block:

if True {
    sub foo ($i) {
        say $i;
        exit if $i >= 2;
        if True {
            for $i ^.. 3 {
                &?ROUTINE($_)
            }
        }
    };
    foo(1);
}
## just adding an outer set of braces changes the behavior,
## this is an infinite loop, spitting out "1":
## 1

# That's with an old rakudo:
# 
# raku --version
# Welcome to Rakudo™ v2023.02.



# 1
# Too many positionals passed; expected 0 arguments but got 1
