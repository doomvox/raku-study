#!/usr/bin/env raku

## Old example:
##  ~/End/Cave/RakuStudy/Wall/raku-study/bin/2022feb27/rob_classify_issue.raku
##  say (3).classify( 3, 4, 5, 6, 7, 8);

## guessing at what that was intended to do:

say (3).classify( * ~~ any(3, 4, 5, 6, 7, 8) );
## {True => [3]}

say (3).classify( { $_ ~~ any(3, 4, 5, 6, 7, 8) } );
## {True => [3]}

say (3).categorize( { $_ ~~ any(3, 4, 5, 6, 7, 8) } );
