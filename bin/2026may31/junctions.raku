#!/usr/bin/env raku

## marton's junction examples
##   https://github.com/Raku/problem-solving/issues/319

say all(1,3) > 2  ; #False
say all(1,3) <= 2 ; #False


say all(1,3) == 3 ; #False
say all(1,3) != 3 ; #True!

