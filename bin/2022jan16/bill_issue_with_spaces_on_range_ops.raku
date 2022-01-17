#!/usr/bin/env perl6
# 
# bill_issue_with_spaces_on_range_ops.raku            16 Jan 2022 

use v6;


8...16   # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
8 ...16   # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
8... 16   # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
8 ... 16   # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
8...^16   # now I want 8 elements, return good:
# (8 9 10 11 12 13 14 15)
8 ...^16   # now I want 8 elements, return good:
# (8 9 10 11 12 13 14 15)
8... ^16   # now I want 8 elements--get 24 instead, WAT? :
# (8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
8 ... ^16   # now I want 8 elements--get 24 instead, WAT? :
# (8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)


