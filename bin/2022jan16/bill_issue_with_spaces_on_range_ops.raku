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


say ^16;  # ^16    ## a Sequence with gist like so...

.say for ^3;
# 0
# 1
# 2


# The operator is this:   ...^
# Spaces in the middle of the operator aren't okay:
#      . . . ^

# These are all the same:
say 1 ...^ 3;  # (1 2)
say 1...^ 3;   # (1 2)
say 1 ...^3;   # (1 2)
say 1...^3;    # (1 2)


## This isn't the same:
# say 1 ... ^3;   # no warning... why exactly?

say "---";
say 3 ... 0, 1, 2;  # (3 2 1 0 1 2)
say 3 ... ^3;       # (3 2 1 0 1 2)

# So maybe it is LTA that there's no warning:
#   Did you mean "...^"?

## Note that you need a space on if(), but there's a warning that
## explains this:

if(1) { say 'nope'; }
# The word 'if' is interpreted as a 'if()' function call.  Please use
# whitespace instead of parentheses.
