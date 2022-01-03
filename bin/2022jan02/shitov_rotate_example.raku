#!/usr/bin/env perl6
# 
# shitov_rotate_example.raku            02 Jan 2022 

use v6;

{
    my @a = (1, 3, 5, 7, 9, 11, 13, 15); 
    my $a = [1, 3, 5, 7, 9, 11, 13, 15]; 

    # $a.=rotate(3); 
    $a.push( $a.shift ) for 1..3; 

    say $a;  # [7 9 11 13 15 1 3 5]
}

{

    my $a = (1,3);
    my $b = [1,3];
    say .WHAT for $a, $b;
    # (List)
    # (Array) 

}
