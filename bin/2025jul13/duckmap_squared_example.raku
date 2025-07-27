#!/usr/bin/env raku
# 
# duckmap_squared_example.raku            17 Jul 2025 

use v6;

## duckmap doesn't recurse as aggressively as deepmap
## it tries to treat sub-structures as things-in-themselves
## before descending the tree further...

say [[1,2,3],[[4,5],6,7]].duckmap( *² ); # OUTPUT: «[9 9]␤»

# same behavior in both 2023 and current raku:
#   [9 9]

say [[1,2,3,'N'],[[4,5],6,7]].duckmap( *² ); 
# Doesn't care *what* the elements are, four of them squares to 16:
#   [16 9]

## Comparing to deepmap:

## deepmap favors recursive descent:
say [[1,2,3],[[4,5],6,7]].deepmap( *² ); 
# [[1 4 9] [[16 25] 36 49]]


# say [[1,2,3, 'N'],[[4,5],6,7]].deepmap( *² ); 
## Errors out:
## Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏N' (indicated by ⏏)


say [[1,2,3],[[4,5],6,7]].map( *² );  # (9 9)
