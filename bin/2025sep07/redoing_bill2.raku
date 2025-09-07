#!/usr/bin/env raku
# 
# redoing_bill2.raku            07 Sep 2025 

use v6;

{
    my @i = 0, 1, 2, 3, 4, 5, 6;    # inane array that converts the index into itself.

#     for ( 0..1; 3...1; 3..6 ).flat -> $i {
     for ( flat( 0..1; 3...1; 3..6 ) ) -> $i {
        print @i[ $i ], "\t";
    }
    print "\n";
## 0	1	3	2	1	3	4	5	6	

    say @i[ ( 0..1; 3...1; 3..6 ).flat ];
    # (0 1 3 2 1 3 4 5 6)

    say "---";
    ## suggestion to play with slip operator, tends to convert into counts
    for | (0..1; 3...1; 3..6) -> $i {
        say "i: ", $i;
        print @i[ $i ], "\n";
    }
    print "\n";

    # i: 0..1
    # 2
    # i: (3 2 1)
    # 3
    # i: 3..6
    # 4

}
