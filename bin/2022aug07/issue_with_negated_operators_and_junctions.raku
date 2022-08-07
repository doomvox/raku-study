#!/usr/bin/env perl6
# 
# issue_with_negated_operators_and_junctions.raku            07 Aug 2022 

use v6;


# Marton Polgar 

say so
  (1, 2, 3, 5, 14, 98).all < 100;  # True

say so
  (1, 2, 3, 5, 14, 98).all < 65;   # False

say so
  (1, 2, 3, 5, 14, 98).all >= 65;  # False

say so
  (1, 2, 3, 5, 14, 98).all >= 0;  # True


say so
  (1, 2, 3, 5, 14, 98).all != 3;  # we *hope* this is False, but: True


## equiv to
say so
  !( (1, 2, 3, 5, 14, 98).all == 3 );  # we *hope* this is False, but: True


say "---";
say so
   (1, 2, 3, 5, 14, 98).all !< 100;  #  False

say "---";
say so
   (1, 2, 3, 5, 14, 98).all !< 65 ;  #  True

say "===";

say 
  4 != any 1, 2, 3, 4;  # False

## Huh?  But one of them is 4.
##       some are not equal to 4, so it's False ((?))
