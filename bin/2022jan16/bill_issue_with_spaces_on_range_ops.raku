#!/usr/bin/env perl6
# 
# bill_issue_with_spaces_on_range_ops.raku            16 Jan 2022 

use v6;


say "1:";
8...16   # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)

# say "2:";
# 8 ...16   # returns 9 elements, good:
# # (8 9 10 11 12 13 14 15 16)
# say "3:";
# 8... 16   # returns 9 elements, good:
# # (8 9 10 11 12 13 14 15 16)
# say "4:";
# 8 ... 16   # returns 9 elements, good:
# # (8 9 10 11 12 13 14 15 16)
# say "5:";
# 8...^16   # now I want 8 elements, return good:
# # (8 9 10 11 12 13 14 15)
# say "6:";
# 8 ...^16   # now I want 8 elements, return good:
# # (8 9 10 11 12 13 14 15)
# say "7:";
# 8... ^16   # now I want 8 elements--get 24 instead, WAT? :
# # (8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
# say "8:";
# 8 ... ^16   # now I want 8 elements--get 24 instead, WAT? :
# # (8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)


