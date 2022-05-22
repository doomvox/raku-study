#!/usr/bin/env perl6
# 
# subclassing_builtin_classes_int.raku            22 May 2022 

use v6;

class Splint is Int {
  # nothing yet
}


my $obj = Splint.new( 7 );

say $obj;
say ++$obj;



# ===
# Author:  doom@kzsu.stanford.edu

