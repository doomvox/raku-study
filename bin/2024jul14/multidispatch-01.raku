#!/usr/bin/env raku
# 
# multidispatch-01.raku            14 Jul 2024 

use v6;

# version 1 
multi sub happy-birthday( $name ) {
    say "Happy Birthday $name !";
}
 
# version 2 
multi sub happy-birthday( $name, $age ) {
    say "Happy {$age}th Birthday $name !";
}
 
# version 3 
multi sub happy-birthday( :$name, :$age, :$title  = 'Mr' ) {
    say "Happy {$age}th Birthday $title $name !";
}
 
