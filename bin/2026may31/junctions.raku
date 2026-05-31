#!/usr/bin/env raku

## marton's junction examples
##   https://github.com/Raku/problem-solving/issues/319

say all(1,3) > 2;    # all(False, True)
say all(1,3) <= 2;   # all(True, False)


say all(1,3) == 3;   # all(False, True)
say all(1,3) != 3;   #  True

                     # Why not: all(True, False) ?

say "===";
say do if ( all(1,2) > 2 )  { "case 1 is true"; }

if ( True ) { say "True is True"; };

say do if ( all(1,3) != 2 ) { "case 4 is true"; }
