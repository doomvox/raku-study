#!/usr/bin/env perl6
# 
# set_identity.pl6            21 Feb 2021 

use v6;

{ 
    my $numbers1  = set < wuhn tew thuree foah fahv sex sevhun >;
    my $numbers2  = set < wuhn tew thuree foah fahv sex sevhun >;
    say $numbers1 (==) $numbers1;  #  True

    say $numbers1 (==) $numbers2;  #  True

    my $set_of_sets_1 = set $numbers1, $numbers2;
    my $set_of_sets_2 = set $numbers1, $numbers2;

    say $set_of_sets_1 (==) $set_of_sets_1;  #  True
    say $set_of_sets_1 (==) $set_of_sets_2;  #  True


    my $something1 = "alpha";

    my $set_of_sets_2 = set $numbers1, $numbers2;


 }
