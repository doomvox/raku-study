#!/usr/bin/env raku
# 
# hyper_operations.raku            07 Dec 2025 

use v6;

{
    my @a = < godzilla grendel wormface blob >;
    @a>>.say;
    # godzilla
    # grendel
    # wormface
    # blob

    my @b = [ [ 'a', 'b' ] ,  [ 'c', 'd' ] ];
    @b>>.say;
    # a
    # b
    # c
    # d


    # bruce: keeps descending until it hits something that's not an array, and operates on the leaf nodes
    #        *unless* the thing you're doing is marked nodal
    #        operations are nodal, methods are not (usually).
    #        runs nodemap or deepmap
}

say "===";
{
    my @a = [[1,2],[3,4]], [[91,92],[93,94]];
    my @b = @a>>.succ;
    say .raku for @b;

  # $[[2, 3], [4, 5]]
  # $[[92, 93], [94, 95]]
}

