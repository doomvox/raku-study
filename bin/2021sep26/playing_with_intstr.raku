#!/usr/bin/env perl6
# 
# playing_with_intstr.raku            26 Sep 2021 

use v6;

## NOTES

## Note: I can never remember how IntStrs work:

##       They're *like* perl's "dualvars":
##       they have two values that comes out in different contexts: a Str or an Int
##       you can't use them flexibly the other way:
##       I always want them to be something that either an integer or an integer in string form

## https://docs.raku.org/type/IntStr
## https://docs.raku.org/type/Allomorph

## What is this notation?  A list of one element?
dd <42>;
my $a = <42>;
dd $a;

my $int-str = <42>;




## Better:
# my $f = IntStr.new(42, "forty two");
# say +$f; # OUTPUT: «42␤» 
# say ~$f; # OUTPUT: «"forty two"␤»


# ===
# Author:  doom@kzsu.stanford.edu

