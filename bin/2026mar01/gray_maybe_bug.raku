#!/usr/bin/env raku
# 
# gray_maybe_bug.raku            01 Mar 2026 

use v6;


# raku -e 'sub foo ($i) { say $i; exit if $i >= 2; if True { for $i ^.. 3 -> $j {  samewith($j) } } }; foo(1);'

sub foo ($i) {
    say $i;
    exit if $i >= 2; if True {
        for $i ^.. 3 -> $j {
            samewith($j) } }
};
foo(1);

# 1
# 2
