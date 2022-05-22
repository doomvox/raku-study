#!/usr/bin/env perl6
# 
# subclassing_builtin_classes_int.raku            22 May 2022 

use v6;

class Splint is Int {
  # nothing yet

    method heythere {
        say "hey there";
    }

    method succ {
      my $newself = Splint.new;
      return 1 + $newself;
      # eturn Splint.new( 1 + self ); 
    }

}

my $obj = Splint.new( 7 );

say $obj;
say $obj.WHAT;  # (Splint)

$obj.heythere; # hey there

say ++$obj;
say $obj.WHAT;  # (Int)

# Need to override "succ" in the class to fix this.



# ===
# Author:  doom@kzsu.stanford.edu

