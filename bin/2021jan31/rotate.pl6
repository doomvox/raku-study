#!/usr/bin/env perl6
# 
# rotate.pl6            31 Jan 2021 

use v6;

## https://docs.raku.org/routine/rotate

# Using it with Supply:
#   available since 2020.06 (but I'm still on 2020.05):

# my $supply = Supply.from-list( <a b c d e> ).rotate( 2 );
# $supply.tap( &say ); # OUTPUT: «c␤d␤e␤a␤b␤»

# Running on 2020.05:
#  No such method 'rotate' for invocant of type 'Supply'


# Using rotate with lists:

# Returns a Seq with the list elements rotated to the left when $n is positive or to the right otherwise.
# Examples:

say <a b c d e>.rotate(2);   # OUTPUT: (c d e a b) 
say <a b c d e>.rotate(-1);  # OUTPUT: (e a b c d)
