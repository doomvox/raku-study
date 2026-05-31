#!/usr/bin/env raku

## marton's junction examples
##   https://github.com/Raku/problem-solving/issues/319

so all(1,3) > 2 #False
so all(1,3) <= 2 #False
In these cases, it seems like the semantics is "for all elements listed, the substitution results into a True value".

However
so all(1,3) == 3 #False
so all(1,3) != 3 #True!
