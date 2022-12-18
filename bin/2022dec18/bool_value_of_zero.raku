#!/usr/bin/env perl6
# 
# bool_value_of_zero.raku            18 Dec 2022 

use v6;

my $i = 0;
my $s = '0';

say $i.Bool;  # False
say $s.Bool;  # True

while 1 { 
  my $any = prompt('gimme a 0:');
  say $any.elems;
  say so $any;
}
