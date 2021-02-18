#!/usr/bin/env perl6
# 
# slurpy_family.pl6            17 Feb 2021 

use v6;

# Matthew Stephen Stuckwisch talk "Surprisingly Unsurprising"
# At 13:20, The slurpy family

# https://docs.raku.org/language/functions
# sub grab(+@a) { "grab $_".say for @a }

# https://docs.raku.org/type/Signature#Slurpy_parameters

sub slurpy1( *@pour-and-savor ) {
    # The single asterisk form flattens passed arguments.


};


sub slurpy2( **@chug-no-regrets ) {
    # The double asterisk form does not flatten arguments.

};

sub slurpy3( +@read-the-label ) {
    # The plus form flattens according to the single argument rule.

};



# https://docs.raku.org/type/Signature#Slurpy_parameters

# Sigiled parameters will always impose a context on the
# collected arguments. Sigilless parameters can also be used
# slurpily, preceded by a + sign, to work with whatever initial
# type they started with:

# sub zipi( +zape ) {
#     zape.^name => zape
# };
# say zipi( "Hey "); # OUTPUT: «List => (Hey )␤» 
# say zipi( 1...* ); # OUTPUT: «Seq => (...)␤» 
