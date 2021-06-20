#!/usr/bin/env perl6
# 
# give_em_enough_rop.raku            20 Jun 2021 

use v6;

# From Bruce Gray : Least favorite meta-operator: Rop
# my $a = 41; 1 R+= $a; say $a;
# Bwahahaha!

my $a = 41;
1 R+= $a;
say $a;

# 42
