#!/usr/bin/env raku
# 
# min_max_of_arrays.raku            24 Nov 2024 

use v6;

my @a = (1, 2, 3);
say @a.min;  # 1
say @a.max;  # 3

my @b = ();
say @b.min;  # Inf
say @b.max;  # -Inf

my @c = ('a', 'b', 'c');
say @c.min;  # a
say @c.max;  # c

say "---";
{
    my $max;
    ## warns first time: Use of uninitialized value of type Any in numeric context
    for @a -> $item {
        $max = $item if $item > $max;
    }
    say $max; # 3
}

say "---";
{
    my $max;
    ## warns first time: Use of uninitialized value of type Any in numeric context
    for @b -> $item {
        $max = $item if $item > $max;
    }
    say $max; # (Any)
}
