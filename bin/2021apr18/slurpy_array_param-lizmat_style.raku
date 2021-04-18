#!/usr/bin/env perl6
# 
# slurpy_array_param-lizmat_style.raku            18 Apr 2021 

use v6;

sub handle-array( @a ) {
    # do something with @a
    say @a;
}

my @foo = "a" .. "z";

handle-array( @foo );
# [a b c d e f g h i j k l m n o p q r s t u v w x y z]
