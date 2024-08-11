#!/usr/bin/env perl
# 
# happy_birthday-from_docs.raku            11 Aug 2024 

use v5.30.0; 

use Multi::Dispatch;

## Trying to translate a raku example into perl, from:
##  https://docs.raku.org/language/functions#Multi-dispatch

# version 1 
multi happy_birthday( $name ) {
    say "Happy Birthday $name !";
}
 
# version 2 
multi happy_birthday( $name, $age ) {
    say "Happy {$age}th Birthday $name !";
}
 
# version 3 
multi happy_birthday( :$name, :$age, :$title  = 'Mr' ) {
    say "Happy {$age}th Birthday $title $name !";
}

## maybe hash destructuring
#           multi mysort ({fold=>1,  %opt}, @data) { mysort {%opt, key => \&CORE::fc}, @data }

 
# calls version 1 (arity) 
happy_birthday 'Larry';                        # Happy Birthday Larry ! 
# calls version 2 (arity) 
happy_birthday 'Luca', 40;                     # Happy 40th Birthday Luca ! 
# calls version 3 
# (named arguments win against arity) 
happy_birthday( age => '50', name => 'John' ); # Happy 50th Birthday Mr John ! 
# calls version 2 (arity) 
happy_birthday( 'Jack', 25 );                  # Happy 25th Birthday Jack ! 


# The version 3 point "(named arguments win against arity)"
# is raku-specific:  the signature asks for two *pairs* (the third is optional)
# Perl would think of that as a list of 4 items, "key1, val1, key2, val2".

# I think this is Conways "C is for Constraint",
# the type of the args is used to choose which of the twofers wins.
