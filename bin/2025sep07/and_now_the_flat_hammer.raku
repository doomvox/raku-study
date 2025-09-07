#!/usr/bin/env raku
# 
# and_now_the_flat_hammer.raku            07 Sep 2025 

use v6;

say ( 0..1; 3...1; 3..6 ).flat; 
## (0 1 3 2 1 3 4 5 6)

say ( 0..1, 3...1, 3..6 ).flat; 
## (0 1 3 2 1 3..6)

say ( 0..1, 3...1, 3..6 ).flat(:hammer); 
