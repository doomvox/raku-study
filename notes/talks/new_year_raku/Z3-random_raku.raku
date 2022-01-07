#!/usr/bin/env perl6
# 
# Z3-random_raku.raku            05 Jan 2022 

use v6;

## a few little things to like about raku:

## randomly choosing an element from an array
my @cards = < jack_of_hearts 8_of_cups wheel_of_tech fool joker go_directly_to_jail three_wavy_lines death >;
my $card = @cards.pick;
say "card: $card";

## creating a short string with random characters
my $str =  [~] ("a".."z").roll(3);
say "str: $str";

## Note the use of the reduction metaoperator using the string concationation operator ~ ('stich') 








# ===
# Author:  doom@kzsu.stanford.edu

