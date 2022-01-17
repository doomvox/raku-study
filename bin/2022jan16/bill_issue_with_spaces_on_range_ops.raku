#!/usr/bin/env perl6
# 
# bill_issue_with_spaces_on_range_ops.raku            16 Jan 2022 

use v6;


say "1:";
say 8...16  ;  # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
say "2:";
say 8 ...16  ;  # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
say "3:";
say 8... 16  ;  # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
say "4:";
say 8 ... 16  ;  # returns 9 elements, good:
# (8 9 10 11 12 13 14 15 16)
say "5:";
say 8...^16  ;  # now I want 8 elements, return good:
# (8 9 10 11 12 13 14 15)
say "6:";
say 8 ...^16  ;  # now I want 8 elements, return good:
# (8 9 10 11 12 13 14 15)
say "7:";
say 8... ^16  ;  # now I want 8 elements--get 24 instead, WAT? :   ## Q: NO WARN?
# (8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
say "8:";
say 8 ... ^16  ;  # now I want 8 elements--get 24 instead, WAT? :  ## Q: NO WARN?
# (8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)


say ^16;  # ^16

.say for ^3;
# 0
# 1
# 2


# the operator ...^
# spaces in the middle of the operator aren't okay:
#  . . . ^

say 1 ...^ 3;  # (1 2)
say 1...^ 3;   # (1 2)
say 1 ...^3;   # (1 2)
say 1...^3;    # (1 2)


# say 1 ... ^3; 

say "---";
say 3 ... 0, 1, 2;  # (3 2 1 0 1 2)

say 3 ... ^3;       # (3 2 1 0 1 2)
