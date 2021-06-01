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

my $j = 'gavora' | 'ghidora' | 'louis_epstein';
say scan_monsters( $j );  # any(False, True, False)


sub scan_monsters_2 ( Mu $search ) {
    my $status = any( @population ) ~~ $search;
    return $status;
}

say scan_monsters_2( $j );  # any(False, True, False)


## NOTES
#
# monster identification: /home/doom/Dust/Images/Gavora
