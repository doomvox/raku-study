#!/usr/bin/env raku
# 
# gray_ROUTINE_bug_03.raku            01 Mar 2026 

use v6;

{
    sub foo ($i) {
        say $i;
        exit if $i >= 2;
        if True {
            for $i ^.. 3 -> $j {
                &?ROUTINE($j) } }
    };
    foo(1);
}
# 1
# 2
# 3



{
    say "===";
    sub foo ($i) {
        say $i;
        exit if $i >= 2;
        if True {
            for $i ^.. 3 {
                &?ROUTINE($_) } }
    };
    foo(1);
}
