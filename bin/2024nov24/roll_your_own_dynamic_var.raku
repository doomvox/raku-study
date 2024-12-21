#!/usr/bin/env raku
# 
# roll_your_own_dynamic_var.raku            24 Nov 2024 

use v6;

{
    my $*DOOM = "a";
    dd( $*DOOM );   # Str $*DOOM = "a"

    dostuff();  # A

}


## Q: what can you do with your own "dynamic var"?
##  https://docs.raku.org/language/variables#The_*_twigil

sub dostuff {
    say $*DOOM.uc;  # Str $*DOOM = "a"  # Dynamic variable $*DOOM not found

#    say $*NADA.uc;  # Str $*DOOM = "a"   ## Dynamic variable $*NADA not found

}


