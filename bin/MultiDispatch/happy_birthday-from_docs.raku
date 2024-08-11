#!/usr/bin/env raku
# 
# happy_birthday-from_docs.raku            11 Aug 2024 

use v6;

## Example from
##  https://docs.raku.org/language/functions#Multi-dispatch

# version 1 
multi happy-birthday( $name ) {
    say "Happy Birthday $name !";
}
 
# version 2 
multi happy-birthday( $name, $age ) {
    say "Happy {$age}th Birthday $name !";
}
 
# version 3 
multi happy-birthday( :$name, :$age, :$title  = 'Mr' ) {
    say "Happy {$age}th Birthday $title $name !";
}
 
# calls version 1 (arity) 
happy-birthday 'Larry';                        # Happy Birthday Larry ! 
# calls version 2 (arity) 
happy-birthday 'Luca', 40;                     # Happy 40th Birthday Luca ! 
# calls version 3 
# (named arguments win against arity) 
happy-birthday( age => '50', name => 'John' ); # Happy 50th Birthday Mr John ! 
# calls version 2 (arity) 
happy-birthday( 'Jack', 25 );                  # Happy 25th Birthday Jack ! 


# The version 3 point "(named arguments win against arity)"
# is raku-specific:  the signature asks for two *pairs* (the third is optional)
# Perl would think of that as a list of 4 items, "key1, val1, key2, val2".
