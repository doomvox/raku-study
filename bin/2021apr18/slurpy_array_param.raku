#!/usr/bin/env perl6
# 
# slurpy_array_param.raku            18 Apr 2021 

use v6;

# https://docs.raku.org/type/Signature

## Q: whats up with :( ... )
# $ = :($a, @b);  # exactly two arguments, where the second one must be Positional 
# $ = :($a, *@b); # at least one argument, @b slurps up any beyond that 
# $ = :(*%h);     # no positional arguments, but any number of named arguments 
 
sub one-arg (@)  { }
sub slurpy  (*@) { }
one-arg (5, 6, 7); # ok, same as one-arg((5, 6, 7)) 
slurpy  (5, 6, 7); # ok 
slurpy   5, 6, 7 ; # ok 
# one-arg(5, 6, 7) ; # X::TypeCheck::Argument 
# one-arg  5, 6, 7 ; # X::TypeCheck::Argument 
 
sub named-names (*%named-args) { %named-args.keys };
say named-names :foo(42) :bar<baz>; # OUTPUT: «foo bar␤» 
