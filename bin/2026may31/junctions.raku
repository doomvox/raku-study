#!/usr/bin/env raku

## marton's junction examples
##   https://github.com/Raku/problem-solving/issues/319

say all(1,3) > 2;    # all(False, True)
say all(1,3) <= 2;   # all(True, False)


say all(1,3) == 3;   # all(False, True)
say all(1,3) != 3;   #  True

                     # Why not: all(True, False) ?

say !(all(1,3) == 3);

  ## 

say "===";
say do if ( all(1,2) > 2 )  { "case 1 is true"; } else { "case 1 is false" }; # case 1 is false

say do if ( all(1,3) != 2 ) { "case 4 is true"; }

say "---";

if ( all(True) ) { say "All truth is True!"; };   # All truth is True! 
if ( any(True) ) { say "Any truth is True!"; };   # Any truth is True! 
