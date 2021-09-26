#!/usr/bin/env perl6
# 
# multi_dispatch_intstr_with_int_and_str.raku            25 Sep 2021 

use v6;

# Brad Gilbert:
# The ambiguity it talks about is when two candidates have the
# same level of type for a given input. For example Str and Int
# for an IntStr.

multi sub mission (Str $p) is default {   ## note the "is default" trait
    say "sub mission recieved a Str: $p";
}

multi sub mission (Int $p) {
    say "sub mission recieved an Int: $p";
}

mission("3");  # sub mission recieved a Str: 3
mission(3);    # sub mission recieved an Int: 3

# my IntStr $intstr = 9;
# #  Type check failed in assignment to $intstr; expected IntStr but got Int (9)
## see:
## /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_intstr_with_int_and_str.raku

my $intstr = IntStr.new(42, "forty two");
# dd $intstr;
# say $intstr;
mission( $intstr );

## Without the "is default" above
# Ambiguous call to 'mission(IntStr)'; these signatures all match:
#   (Str $p)
#   (Int $p)


## with the "is default" above
# sub mission recieved a Str: forty two



##===

# ===
# Author:  doom@kzsu.stanford.edu

