#!/usr/bin/env perl6
# 
# so_question_pop_orders.raku            29 Aug 2021 

use v6;

## https://stackoverflow.com/questions/68761964/raku-pop-order-of-execution

my @a = my @b = [9 , 3];
say ( @a[1] - @a[0] ) == ( @b[1] R- @b[0] );              # False {as expected}
say ( @a.pop() - @a.pop() ) == ( @b.pop() R- @b.pop() );  # True {Huh?!?}


say 3 - 2;
say 3 R- 2; 



# ===
# Author:  doom@kzsu.stanford.edu

