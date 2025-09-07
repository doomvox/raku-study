#!/usr/bin/env raku
# 
# redoing_bill2.raku            07 Sep 2025 

use v6;

{
    my @i = 0, 1, 2, 3, 4, 5, 6;    # inane array that converts the index into itself.
    for ( 0..1, 3...1, 3..6 ).flat -> $i {
        print @i[ $i ], "\t";
    }
    print "\n";

    }

{
    for my @a=(4...0; 1..3; 4...0).flat -> $i
}
