#!/usr/bin/env raku
# 
# is_element_in_sequence.raku            24 Aug 2025 

use v6;

## Smartmatch and sequences are PFW:
say 5 ~~ 1...5;  # (False)
# (False True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True ...)

say "===";
## Smartmatch works intuitively with ranges
say 5 ~~ 1..5;  # True
say 9 ~~ 1..5;  # False

say "===";
say 5 ∈ 1...5;
# (False True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True True ...)

say "===";
# Rob example:
say 1 (<) 1; # False


===

