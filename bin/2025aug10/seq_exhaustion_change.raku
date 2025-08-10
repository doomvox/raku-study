#!/usr/bin/env raku
# 
# seq_exhaustion_change.raku            10 Aug 2025 

use v6;

## brian d foy example

{
    my $s := 1 ... 5;
    put $s.reverse;
    put $s;
}
