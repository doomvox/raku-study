#!/usr/bin/env raku
# 
# rotor.raku            31 Dec 2023 

use v6;


my $str = "Foul squares and several beatniks to the right.";

my @elems = $str.chars.rotor(2);
