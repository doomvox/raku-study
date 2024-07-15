#!/usr/bin/env raku
# 
# multidispatch-01.raku            14 Jul 2024 

use v6;

multi sub action( Str $thing ) {
    say "ONE: $thing!";
}
 

multi sub action( $thing ) {
    say "TWO: $thing";
}

multi sub action( :$thing ) {  ## idiomatic raku short-hand for the pair:   'thing' => $thing
    say "THREE: $thing";
}

action( "hey" );
# ONE: hey!

action( thing => "ho" );
# THREE: ho
