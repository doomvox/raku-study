#!/usr/bin/env raku
# 
# digit_sum.raku            24 Mar 2024 

use v6;

# a component of weekly challenge 261 #1

my @a = (12, 99, 2);

# say @a.map({ $_.Str.split });

my @out;
for @a -> $n {
#    say $n.Str.split('');
     @out.push( | $n.split('') );
}
say @out;

## forgot about comb
## digits are .Int


# Rob: 

multi digit-sum( $a -->Int) {
    $a.sum
    - sum $a.map({ sum .abs.Str.comb>>.Int };
}
