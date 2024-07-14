#!/usr/bin/env raku
# 
# multidispatch-01.raku            14 Jul 2024 

use v6;

multi sub speak( $phrase ) {
    say "$phrase!";
}
 

multi sub speak( $phrase ) {
    say "$phrase";
}

multi sub speak( :$phrase ) {
    say "$phrase";
}

 
