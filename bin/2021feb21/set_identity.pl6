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
    say "===";
    class E {};
    my $obj1 = E.new();
    my $obj2 = E.new();
    my $obj3 = E.new();

    say $obj1;  # E.new
    say $obj2;  # E.new

    my $s1 = set $obj1, $obj2;
    my $s2 = set $obj1, $obj2;
    my $s3 = set $obj1, $obj2, $obj3;

    say $s3.keys;  # (E.new E.new E.new)

    say $s1 (==) $s2;  # True
    say $s1 (==) $s3;  # False

    say "---";
    my $obj_lst_1 = ( $obj1, $obj2 );
    my $obj_lst_2 = ( $obj1, $obj2, $obj3 );

    dd( $obj_lst_1 ); # List $obj_lst_1 = $(E.new, E.new)
    dd( $obj_lst_2 ); # List $obj_lst_2 = $(E.new, E.new, E.new)

    say $obj_lst_2 (-) $obj_lst_2;
    # Set()
    say $obj_lst_2 (-) $obj_lst_1;
    # Set(E.new)


    say $obj_lst_2 (+) $obj_lst_2;
    #  Bag(E.new(2) E.new(2) E.new(2))

    say $obj_lst_2 (|) $obj_lst_2;
    # Set(E.new E.new E.new)


    say $s1.WHICH;  # Set|A7F2AE139D882F0FC1CA5088C6C4CEA83CFE3626
    say $s2.WHICH;  # Set|A7F2AE139D882F0FC1CA5088C6C4CEA83CFE3626
    say $s3.WHICH;  # Set|47C70AE92E9E5A58B526E8C4FE5E44DE4A8F61BD


    }

## richard hainsworth remarked that (==) didn't seem to be working these days,
## can't reproduce issue at the moment.


