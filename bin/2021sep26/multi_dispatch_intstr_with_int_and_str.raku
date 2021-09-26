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

mission("3");  # sub mission recieved a Str: 3
mission(3);    # sub mission recieved an Int: 3

# my IntStr $intstr = 9;
# #  Type check failed in assignment to $intstr; expected IntStr but got Int (9)
# ## see NOTES

my $intstr = IntStr.new(42, "forty two");

say $intstr.Int;
$intstr.Int = 5;

say $intstr;


## NOTES
## Note: I can never remember what IntStrs are *for* exactly.
##       dim memory:
##         I want them to be something that accepts integers in either string or integer form
##         they actually "go the other way" (emit Str or Int depending on use?)
##         the raku version of perl's dualvars?

## https://docs.raku.org/type/IntStr
##
## Inherit from Allomorph

## my $int-str = <42>;
## Huh?

## Better:
# my $f = IntStr.new(42, "forty two");
# say +$f; # OUTPUT: «42␤» 
# say ~$f; # OUTPUT: «"forty two"␤»


mission( $intstr );


# ===
# Author:  doom@kzsu.stanford.edu

