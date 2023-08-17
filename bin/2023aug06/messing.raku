#!/usr/bin/env raku
# 
# messing.raku            06 Aug 2023 

use v6;

## Making some mistakes on purpose to see the error messages

# {
#     my $a = "hey";
#     my $b = "ho";
#     my $c = "$a $b $c";
#     ##  Cannot use variable $c in declaration to initialize itself
# }


{
    my ($a, $b) = "hey", "ho";
    my $c = "yo";
    $c++;
    say $c;  # yp    (perlish, but arguably wrong)
    }


{
    my ($a, $b) = "hey", "ho";
    my Str $c = "yo";
    $c++;
    say $c; # yp    

    $c = $c + 1;
    ## Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏yp' (indicated by ⏏)

    }

