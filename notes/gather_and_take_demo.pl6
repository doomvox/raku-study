#!/usr/bin/env perl6
# 
# gather_and_take_demo.pl6            07 Feb 2021 

use v6;

my @rabbits  = < bugs peter easter >;

my @a =
  gather for @rabbits -> $r {
     if ( $r ~~ /^b/ ) {
        take $r.tc;
        }
  };

say @a; # [Bugs]

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;

my @b;
for @monsters -> $m {
    @b.push( $m ) if $m ~~ /^g/;
}
say @b;
