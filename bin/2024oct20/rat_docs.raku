#!/usr/bin/env raku
# 
# rat_docs.raku            20 Oct 2024 

use v6;

# https://docs.raku.org/language/numerics#Rat

my $a = 1 / (2⁶⁴ - 1);
say $a;                   # 0.000000000000000000054 
say $a.^name;             # Rat 
say $a.nude;              # (1 18446744073709551615) 
 
my $b = 1 / 2⁶⁴;
say $b;                   # 5.421010862427522e-20 
say $b.^name;             # Num 
 
my $c = Rat.new(1, 2⁶⁴);
say $c;                   # 0.000000000000000000054 
say $c.^name;             # Rat 
say $c.nude;              # (1 18446744073709551616) 
say $c.Num;               # 5.421010862427522e-20
