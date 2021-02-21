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

    say $set_of_sets_1.keys;
    # (Set(fahv foah sevhun sex tew thuree wuhn))

    say $set_of_sets_1 (==) $set_of_sets_1;  #  True
    say $set_of_sets_1 (==) $set_of_sets_2;  #  True

    my $some_string = "alpha";
    my $set_of_stuff = set $numbers1, $numbers2, $some_string;    
    say $set_of_sets_1 (==) $set_of_stuff; # False
 }

{

    class E {};
    my $obj1 = E.new();
    my $obj2 = E.new();
    my $obj3 = E.new();

    say $obj1;  # E.new
    say $obj2;  # E.new

    my $s1 = $obj1, $obj2;
    my $s2 = $obj1, $obj2;
    my $s3 = $obj1, $obj2, $obj3;

    say $s1 (==) $s2;
    say $s1 (==) $s3;

    }
