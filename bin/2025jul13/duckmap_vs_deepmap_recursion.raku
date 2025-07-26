#!/usr/bin/env raku
# 
# duckmap_vs_deepmap_recursion.raku            25 Jul 2025 

use v6;

## See: 
## /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025jul13/duckmap_squared_example.raku

## duckmap doesn't recurse as aggressively as deepmap
## it tries to treat sub-structures as things-in-themselves
## before descending the tree further...

sub summation (@n) {
  @n.sum;
}

say summation([1,2,3]); # 6

# say summation(123); 
## Calling summation(Int) will never work with declared signature (@n) 


## say summation([1,2,3,'A']); ## Cannot convert string to number...

say [[1,2,3],[[4,5],6,7]].duckmap( { summation($_) }); ## [6 15]

## say [[1,2,3],[[4,5],6,7]].deepmap( { summation($_) }); 
  ## Type check failed in binding to parameter '@n'; expected Positional but got Int (1)

## deepmap plunges all the way down to the leaf nodes, and finds it can't call "summation" on them.
## interestingly adding a lone integer higher up doesn't confuse duckmap:

say [33, [1,2,3],[[4,5],6,7]].duckmap( { summation($_) }); ## [33 6 15]

say [66, 33, [1,2,3],[[4,5],6,7]].duckmap( { summation($_) }); ## [33 6 15]

