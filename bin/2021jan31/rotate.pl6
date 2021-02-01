#!/usr/bin/env perl6
# 
# rotate.pl6            31 Jan 2021 

use v6;

## https://docs.raku.org/routine/rotate
# available since 2020.06 (I'm still on 2020.05):

my $supply = Supply.from-list( <a b c d e> ).rotate( 2 );
$supply.tap( &say ); # OUTPUT: «c␤d␤e␤a␤b␤»

