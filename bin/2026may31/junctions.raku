#!/usr/bin/env raku

## marton's junction examples
##   https://github.com/Raku/problem-solving/issues/319

say all(1,3) > 2;    # all(False, True)
say all(1,3) <= 2;   # all(True, False)


say all(1,3) == 3;   # all(False, True)
say all(1,3) != 3;   #  True

                     # Why not: all(True, False) ?

say "===";
if ( all(1,2) > 2 )  { say "case 1 is true"; } else { say "wtf?"; }  # wtf?
if ( so all(1,2) > 2 )  { say "case 1 is true"; } else { say "wtf?"; }


if ( True ) { say "True is True"; };  # True is True
if ( all(True) ) { say "All truth is True!"; };   # All truth is True! 

say do if ( all(1,3) != 2 ) { "case 4 is true"; }
