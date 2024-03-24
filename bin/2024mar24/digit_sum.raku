#!/usr/bin/env raku
# 
# digit_sum.raku            24 Mar 2024 

use v6;

# a component of weekly challenge 261 #1

my @a = (12, 99, 2);

# say @a.map({ $_.Str.split });

my @dig;
for @a -> $n {
#    say $n.Str.split('');
     @dig.push( | $n.split('') ).Int;
}
say @dig;

## forgot about comb
## digits are .Int of course

for @dig -> $d {
    say $d;
}


# Rob: 

multi digit-sum( $a -->Int) {
    $a.sum
    - sum $a.map({ sum .abs.Str.comb>>.Int };
}

# Bruce makes the point .Str and .Int here aren't needed: implicit coercion

## Bruce: there's a .sign
## $a.map({ .abs.comb.sum *.sign }).sum
# https://docs.raku.org/routine/sign
