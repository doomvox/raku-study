#!/usr/bin/env perl6
# 
# multi_dispatch_intstr_with_int_and_str.raku            25 Sep 2021 

use v6;

# Brad Gilbert:
# The ambiguity it talks about is when two candidates have the
# same level of type for a given input. For example Str and Int
# for an IntStr.

multi sub mission (Str $p) {
    say "sub mission recieved a Str: $p";
}

multi sub mission (Int $p) {
    say "sub mission recieved an Int: $p";
}

mission("3");
mission(3);

my IntStr $intstr;
$intstr = "9";
mission( $intstr );


# ===
# Author:  doom@kzsu.stanford.edu

