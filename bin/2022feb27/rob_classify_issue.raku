#!/usr/bin/env perl6
# 
# rob_classify_issue.raku            27 Feb 2022 

use v6;


say (3).classify( 3, 4, 5, 6, 7, 8);

# Cannot resolve caller classify(Int:D: Int:D, Int:D, Int:D, Int:D, Int:D, Int:D); none of these signatures match:
# ($: *%_)
# ($: Whatever, *%_)
# ($: $test, :$into!, :&as, *%_)
# ($: $test, :&as, *%_)
# in block <unit> at <unknown file> line 1 


say (3, 4, 5, 6, 7, 8).classify(3);
