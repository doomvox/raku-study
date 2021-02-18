#!/usr/bin/env perl6
# 
# slurpy_family.pl6            17 Feb 2021 

use v6;

# Matthew Stephen Stuckwisch talk "Surprisingly Unsurprising"
# At 13:20, The slurpy family
# (Uses some silly jokes that obscure the point.)

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
## Flatened slurpy
my @array = <a b c>;
my $list := <d e f>;
sub a(*@a)  { @a.raku.say };
a(@array);                 # OUTPUT: «["a", "b", "c"]» 
a(1, $list, [2, 3]);       # OUTPUT: «[1, "d", "e", "f", 2, 3]» 
a([1, 2]);                 # OUTPUT: «[1, 2]» 
a(1, [1, 2], ([3, 4], 5)); # OUTPUT: «[1, 1, 2, 3, 4, 5]» 
a(($_ for 1, 2, 3));       # OUTPUT: «[1, 2, 3]» 

# Sigiled parameters will always impose a context on the
# collected arguments. Sigilless parameters can also be used
# slurpily, preceded by a + sign, to work with whatever initial
# type they started with:

# sub zipi( +zape ) {
#     zape.^name => zape
# };
# say zipi( "Hey "); # OUTPUT: «List => (Hey )␤» 
# say zipi( 1...* ); # OUTPUT: «Seq => (...)␤» 
