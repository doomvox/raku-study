#!/usr/bin/env perl6
# 
# sets_etc-vot_lizmat_2020.pl6            14 Feb 2021 

use v6;

my $s = set 2, 4, 6;

say $s.^methods;
use method-menu;

say $s;      # Set(2 4 6)

say $s{2};   # True
say $s{'2'}; # False

say $s.values; # (True True True)    better than 1 1 1
say $s.keys;   # (2 4 6)

my $b = bag < a b c a a b >;
say $b; # Bag(a(3) b(2) c)
