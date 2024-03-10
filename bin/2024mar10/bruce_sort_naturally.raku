#!/usr/bin/env raku
# 
# bruce_sort_naturally.raku            10 Mar 2024 

use v6;

sub naturally ( Str $s --> List ) {
    $s.split(:v, /\d+/).map({ +$_ // $_ }).cache
}

my @a = <afoo12 afoo2 abar12 abar9foo abar64foo abar64bang abar64bang4foo abar64bang4bar abar64bang5bar abar64foo abar64foo4foo abar64foo4bar abar64foo14bar abar64foo5bar afoo13 afoo4>;

.say for @a.sort: &naturally;

# sub naturally2 ( Str $s --> List ) {
#     $s.split(:v, /\d+/).map( * andthen +$_ // $_ ).cache
# }

# .say for @a.sort: &naturally2;
