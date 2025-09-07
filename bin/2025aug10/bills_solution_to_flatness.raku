#!/usr/bin/env raku
# 
# bills_solution_to_flatness.raku            24 Aug 2025 

use v6;


say (0...4; 2...6; 0...2).flat;
# (0 1 2 3 4 2 3 4 5 6 0 1 2)

say (0..4; 2..6; 0..2).flat;
# (0 1 2 3 4 2 3 4 5 6 0 1 2)

say (0..4, 2..6, 0..2).flat;
# (0 1 2 3 4 2 3 4 5 6 0 1 2)

say (4..0, 2..6, 0..2).flat;
# (2 3 4 5 6 0 1 2)

say (4...0, 2..6, 0..2).flat;
# (4 3 2 1 0 2..6 0..2)

## This does what bill wants:
say (4...0; 2..6; 0..2).flat;
# (4 3 2 1 0 2 3 4 5 6 0 1 2)

say (4...0; 2...6; 0...2).flat;
# (4 3 2 1 0 2 3 4 5 6 0 1 2)


## This doesn't *quite* do bill wants:
say (4...0, 2..6, 0..2).flat;
# (4 3 2 1 0 2..6 0..2)
## but it *might* behave the same way, depending

say "===";
{ ## Revisiting: Sunday September  7, 2025  11:39 AM

  ### goal, a flattened list put together from discontinuous overlapping ranges in arbitrary order:
  ## (4 3 2 1 0 2 3 4 5 6 0 1 2)

    my @i = 0, 1, 2, 3, 4, 5, 6;    # inane array that converts the index into itself.
    for (4...0, 2..6, 0..2).flat -> $i {
        say @i[ $i ];
    }
    ## Nope:
    # 4
    # 3
    # 2
    # 1
    # 0
    # 5
    # 3

    say "---";
    ## Oops: Unsupported use of C-style "for (;;)" loop.  In Raku please use: "loop
#     for (4...0; 2..6; 0..2).flat -> $i {
#         say @i[ $i ];
#     }

    ## so this semic form is another style that only works in some contexts, okay outside a for loop
    say @i[ (4...0; 2..6; 0..2).flat ];
    # (4 3 2 1 0 2 3 4 5 6 0 1 2)

    say "---";
    ## works fine with *three* semics:
    # exploring the compiler error, works fine with *one* semic:
     for (4...0; 2..6).flat -> $i {
         say @i[ $i ];
     }
     # 4
     # 3
     # 2
     # 1
     # 0
     # 2
     # 3
     # 4
     # 5
     # 6

     say "---";
     for (4...0; 2..6; 0..2; 0..1).flat -> $i {
         say @i[ $i ];
     }
     # 4
     # 3
     # 2
     # 1
     # 0
     # 2
     # 3
     # 4
     # 5
     # 6
     # 0
     # 1
     # 2
     # 0   ## Tacked on from an additional range
     # 1

     say "---";
     for (4...0; 2..6; 0..2).flat -> $i {
         say @i[ $i ];
     }





}

