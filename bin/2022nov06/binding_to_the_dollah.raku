#!/usr/bin/env perl6
# 
# binding_to_the_dollah.raku            06 Nov 2022 

use v6;

my $r;
for 0..10 {

    say $_;
    $++;
    say $;

    $r := $;

    munge_things( $r );


    }


sub munge_things ( $r ) {

    $r = 23;

}
