#!/usr/bin/env raku
# 
# rat_docs.raku            20 Oct 2024 

use v6;

# https://docs.raku.org/language/numerics#Rat

my $a = 1 / (2⁶⁴ - 1);
say $a;                   # OUTPUT: «0.000000000000000000054␤» 
say $a.^name;             # OUTPUT: «Rat␤» 
say $a.nude;              # OUTPUT: «(1 18446744073709551615)␤» 
 
my $b = 1 / 2⁶⁴;
say $b;                   # OUTPUT: «5.421010862427522e-20␤» 
say $b.^name;             # OUTPUT: «Num␤» 
 
my $c = Rat.new(1, 2⁶⁴);
say $c;                   # OUTPUT: «0.000000000000000000054␤» 
say $c.^name;             # OUTPUT: «Rat␤» 
say $c.nude;              # OUTPUT: «(1 18446744073709551616)␤» 
say $c.Num;               # OUTPUT: «5.421010862427522e-20␤»
