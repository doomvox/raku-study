#!/usr/bin/env raku
# 
# and_now_the_flat_hammer.raku            07 Sep 2025 

use v6;

say ( 0..1; 3...1; 3..6 ).flat; 
## (0 1 3 2 1 3 4 5 6)

say ( 0..1, 3...1, 3..6 ).flat; 
## (0 1 3 2 1 3..6)

say ( 0..1, 3...1, 3..6 ).flat(:hammer); 
  ## (0 1 3 2 1 3..6)      old 2023.02 raku behavior
  ## (0 1 3 2 1 3 4 5 6)   with a newer raku

## And so, the flat hammer can save us from the horror of embedded semicolons in our discontinuous integer rangeoids.

for ( 0..1, 3...1, 3..6 ).flat(:hammer) -> $i {
    say "i: ", $i;
}


say "==="

# ## tangling up 
# ## for ((0..1), [(3...1), (3..6)]).flat(:hammer) -> $i {
#     say "i: ", $i;
# }
# #




say "XXX";
say (0, 2 ... 7, 9 ... 14);
say "YYY";
say (0, 2 ... 7, 9 ... 14).flat;
say "ZZZ";
say (0, 2 ... 7, 9 ... 14).flat(:hammer);
