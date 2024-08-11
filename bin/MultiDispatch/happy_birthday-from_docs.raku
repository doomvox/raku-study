#!/usr/bin/env raku
# 
# happy_birthday-from_docs.raku            11 Aug 2024 

use v6;


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
happy-birthday 'Larry';                        # OUTPUT: Happy Birthday Larry ! 
# calls version 2 (arity) 
happy-birthday 'Luca', 40;                     # OUTPUT: Happy 40th Birthday Luca ! 
# calls version 3 
# (named arguments win against arity) 
happy-birthday( age => '50', name => 'John' ); # OUTPUT: Happy 50th Birthday Mr John ! 
# calls version 2 (arity) 
happy-birthday( 'Jack', 25 );                  # OUTPUT: Happy 25th Birthday Jack ! 
