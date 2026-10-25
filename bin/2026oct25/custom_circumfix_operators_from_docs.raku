#!/usr/bin/env perl6

use v6;

# https://docs.raku.org/language/optut.html

constant term:<♥> = "♥"; # We don't want to quote "love", do we?
sub circumfix:<α ω>( $a ) {
    say "$a is the beginning and the end."
};


α♥ω;               

α'!'ω; 
