#!/usr/bin/env perl6
# 
# negatives_not_lexically_literal.raku            18 Dec 2022 

use v6;


## bruce gray example
## raku -e 'say -1²'

say -1²;
# -1

say - 1²;
# -1

say (- 1)²;
# 1

# marton:
say -1.succ;
# -2

say - 1.succ;
# -2

say (-1).succ;
# 0


## bruce 
# raku -e 'sub foo ( Int --> <-1/1> ) {}; say foo(5);'

say "===";
{
    sub foo ( Int --> <-1/1> ) {};
    say foo(5); # -1
}

{
    sub foo ( Int --> <-1> ) {};
    say foo(5); # -1
}
