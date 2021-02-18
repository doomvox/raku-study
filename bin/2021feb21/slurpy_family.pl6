#!/usr/bin/env perl6
# 
# slurpy_family.pl6            17 Feb 2021 

use v6;

# Matthew Stephen Stuckwisch talk "Surprisingly Unsurprising"
# At 13:20, The slurpy family
# (Uses some silly jokes that obscure the point.)

# https://docs.raku.org/language/functions
# sub grab(+@a) { "grab $_".say for @a }

## The real deal is spelled out here:
# https://docs.raku.org/type/Signature#Slurpy_parameters

# Flattened slurpy
# The single asterisk form flattens passed arguments.
sub slurpy1( *@pour-and-savor ) {
    "flt: $++: $_".say for @pour-and-savor;
};

# Unflattened slurpy
# The double asterisk form does not flatten arguments.
sub slurpy2( **@chug-no-regrets ) {
    "unflt: $++: $_".say for @chug-no-regrets;
};

# Single argument rule slurpy
# The plus form flattens according to the single argument rule.
sub slurpy3( +@read-the-label ) {
    "sarg: $++: $_".say for @read-the-label;
};



# # https://docs.raku.org/type/Signature#Slurpy_parameters
# ## Flatened slurpy
# my @array = <a b c>;
# my $list := <d e f>;
# sub a(*@a)  { @a.raku.say };
# a(@array);                 # OUTPUT: «["a", "b", "c"]» 
# a(1, $list, [2, 3]);       # OUTPUT: «[1, "d", "e", "f", 2, 3]» 
# a([1, 2]);                 # OUTPUT: «[1, 2]» 
# a(1, [1, 2], ([3, 4], 5)); # OUTPUT: «[1, 1, 2, 3, 4, 5]» 
# a(($_ for 1, 2, 3));       # OUTPUT: «[1, 2, 3]» 


# ## Unflattened slurpy
# my @array = <a b c>;
# my $list := <d e f>;
# sub b(**@b) { @b.raku.say };
# b(@array);                 # OUTPUT: «[["a", "b", "c"],]␤» 
# b(1, $list, [2, 3]);       # OUTPUT: «[1, ("d", "e", "f"), [2, 3]]␤» 
# b([1, 2]);                 # OUTPUT: «[[1, 2],]␤» 
# b(1, [1, 2], ([3, 4], 5)); # OUTPUT: «[1, [1, 2], ([3, 4], 5)]␤» 
# b(($_ for 1, 2, 3));       # OUTPUT: «[(1, 2, 3),]␤» 



# Single argument rule slurpy

# A slurpy parameter created using a plus engages the "single
# argument rule", which decides how to handle the slurpy argument
# based upon context. Basically, if only a single argument is
# passed and that argument is Iterable, that argument is used to
# fill the slurpy parameter array. In any other case, +@ works
# like **@.

# my @array = <a b c>;
# my $list := <d e f>;
# sub c(+@b) { @b.raku.say };
# c(@array);                 # OUTPUT: «["a", "b", "c"]␤» 
# c(1, $list, [2, 3]);       # OUTPUT: «[1, ("d", "e", "f"), [2, 3]]␤» 
# c([1, 2]);                 # OUTPUT: «[1, 2]␤» 
# c(1, [1, 2], ([3, 4], 5)); # OUTPUT: «[1, [1, 2], ([3, 4], 5)]␤» 
# c(($_ for 1, 2, 3));       # OUTPUT: «[1, 2, 3]␤» 

## (What?)
# Sigiled parameters will always impose a context on the
# collected arguments. Sigilless parameters can also be used
# slurpily, preceded by a + sign, to work with whatever initial
# type they started with:

# sub zipi( +zape ) {
#     zape.^name => zape
# };
# say zipi( "Hey "); # OUTPUT: «List => (Hey )␤» 
# say zipi( 1...* ); # OUTPUT: «Seq => (...)␤» 
