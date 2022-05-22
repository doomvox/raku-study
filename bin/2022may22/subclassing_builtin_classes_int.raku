#!/usr/bin/env perl6
# 
# subclassing_builtin_classes_int.raku            22 May 2022 

use v6;

class Splint is Int {
  # nothing yet

    method heythere{
        say "hey there";
    }
}

my $obj = Splint.new( 7 );

say $obj;
say $obj.WHAT;  # (Splint)

$obj.heythere;

say ++$obj;
say $obj.WHAT;  # (Int)





# ===
# Author:  doom@kzsu.stanford.edu

