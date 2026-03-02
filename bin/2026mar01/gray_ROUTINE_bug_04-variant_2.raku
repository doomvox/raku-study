#!/usr/bin/env raku
# 
# gray_ROUTINE_bug_04.raku            01 Mar 2026 

use v6;

# raku -e 'sub foo ($i) { say $i; exit if $i >= 2; if True { for $i ^.. 3       { &?ROUTINE($_) } } }; foo(1);'

# {
    sub foo ($i) {
        say &?ROUTINE.name;
        say $i;
        exit if $i >= 2;
        if True {
            for $i ^.. 3 {
                &?ROUTINE($_)
            }
        }
    };
    foo(1);
# }
## 1


