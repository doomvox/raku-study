#!/usr/bin/env perl6
# 
# bg_stuff.raku            25 Apr 2021 

use v6;

my @a = <A B>, <D E>, <X Y>;
for @a -> [$first, $second] {  ## some languages call this "pattern matching" ?

    say "first: $first";
    say "second: $second";

} 

# first: A
# second: B
# first: D
# second: E
# first: X
# second: Y
