#!/usr/bin/env perl6
# 
# at_play_in_the_fields_of_nqp.raku            15 Jan 2023 

use v6;

use nqp;

my $i := 3;
my $j := 1;

# add_i(int $l, int $r --> int)
# add_n(num $l, num $r --> num)

my $result := nqp::add_I( $i, $j, Int );

say $result;  # 4

