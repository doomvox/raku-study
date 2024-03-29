#!/usr/bin/env perl6
# 
# so_question_pop_orders.raku            29 Aug 2021 

use v6;

## https://stackoverflow.com/questions/68761964/raku-pop-order-of-execution

## Minor puzzle with the R (reverse) feature:
## doesn't just reverse the operation, 
## it reverses the order of evalation of the operands.

{
    my @a = my @b = [9 , 3];
    say ( @a[1] - @a[0] ) == ( @b[1] R- @b[0] );              # False {as expected}
    say ( @a.pop() - @a.pop() ) == ( @b.pop() R- @b.pop() );  # True {Huh?!?}
}

{
    say 3  - 2;    # 1
    say 3 R- 2;    # -1
    say 2 R- 3;    # 1
}

{
    say "---";
    my @a = my @b = [9 , 3];
    say @a.pop; # 3 
    say @a.pop; # 9
    say @b.pop; # 3
    say @b.pop; # 9
}




# ===
# Author:  doom@kzsu.stanford.edu

