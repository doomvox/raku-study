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
    say "Happy @{[$age]}th Birthday $name !";
}
 
# version 3 
# multi happy_birthday( :$name, :$age, :$title  = 'Mr' ) {
multi happy_birthday( {name=>$name, age=>$age, title=>$title  = 'Mr' } ) {
    say "Happy @{[$age]}th Birthday $title $name !";
}
## Note, using "hash destructuring" here, 
## syntax differs from Raku's named arguments

# calls version 1 (arity) 
happy_birthday 'Larry';                        # Happy Birthday Larry ! 
# calls version 2 (arity) 
happy_birthday 'Luca', 40;                     # Happy 40th Birthday Luca ! 
# calls version 3 
happy_birthday( { age => '50', name => 'John' } ); # Happy 50th Birthday Mr John ! 
# calls version 2 (arity) 
happy_birthday( 'Jack', 25 );                  # Happy 25th Birthday Jack ! 


# Happy Birthday Larry !
# Happy 40th Birthday Luca !
# Happy 50th Birthday Mr John !
# Happy 25th Birthday Jack !
