#!/usr/bin/env perl6
# 
# passing_junctions_to_subs.raku            01 Jun 2021 

use v6;

# global list to be searched:
my @population = < godzilla grendel ghidora wormface blob >;

sub scan_monsters ( $search ) {
    my $status = any( @population ) ~~ $search;
    return $status;
}
say scan_monsters( 'ghidora' );  # True
say scan_monsters( 'gavora' );   # False

my $j = 'godzilla' | 'ghidora' | 'gavora';
my $search_j = 'grendel' | 'godzilla' | 'ghidora';

say scan_monsters( $search_j );  # True




## NOTES
#
# monster identification: /home/doom/Dust/Images/Gavora
