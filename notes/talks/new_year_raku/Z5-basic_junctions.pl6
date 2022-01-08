#!/usr/bin/env perl6
# 
# basic_junctions.pl6            04 Oct 2020 

## a demo of Raku junctions.

{
    # using an all junction to check if a list of values is within range    
    my $cutoff = 10;
    my $begin = 3;
    my $end   = 9;

    if all( $begin, $end ) < $cutoff {
        say "Both are before the cutoff.";
    }
}

{
    my $a = 3;
    my $b = 4;
    my $cut = 6;

    if ($a < $cut) {
        say "a is early";
    }

    my $j;
    $j = any( $a, $b );
    if ($j < $cut) {
        say "at least one of a and b are early";
    }
    say $j.WHAT;  # (Junction)

    $j = all( $a, $b );
    if ($j < $cut) {
        say "both a and b are early";
    }

    $j = none( $a, $b );
    if ($j < $cut) {
        say "neither a or b are early";
    } 

    sub dostuff( $item1, $item2 ) {
        my $j = any( $a, $b );
        if ($j < $cut) {
            say "at least one of a and b are early";
        }
    }

    dostuff( $a, $b );
}

##
