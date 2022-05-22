#!/usr/bin/env perl6
# 
# subclassing_builtin_classes_int.raku            22 May 2022 

use v6;

class Splint is Int {

    has Int $.value is rw = 1;
    sub Int {
        .value;
    }
    ## Vauge problem I've got here: 
    ##   if you're working with a variant of Int, want to be able 
    ##   to access that value in your Splint methods, and possibly change it 

    method incrementoid {
        my $val = self.Int;
        ## but how would you assign to that int "slot" in the self?

        return $val + 1;
    }


    method heythere {
        say "hey there";
    }

    # bruce gray theory was this could improve behavior of ++$obj
    method  succ ( --> Splint ) {
        say "meep!";

    # runs doesn't fix anything
    #       my  $newself = Splint.new;
    #       return 1 + self;


       # runs doesn't fix anything
      return Splint.new( 1 + self ); 
    }
}

my $obj = Splint.new( 7 );

say $obj;
say $obj.WHAT;  # (Splint)

$obj.heythere; # hey there

say ++$obj;
say $obj.WHAT;  # (Int)

# Need to override "succ" in the class to fix this.

## consider case:
##  my $something = $int + $splint;
## custom operators, parallel universe of "splint" operations?


# bruce suggests an alternate approach:
#   https://docs.raku.org/language/objects#index-entry-delegation_(trait_handles) 

say Int.new; # 0

say Splint.new; # 0

my $s = Splint.new;
say $s;
say $s.incrementoid; # 1

## TODO read:
##  https://github.com/rakudo/rakudo/blob/master/src/core.c/Int.pm6 

# ===
# Author:  doom@kzsu.stanford.edu


