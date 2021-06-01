#!/usr/bin/env perl6
# 
# passing_junctions_to_subs.raku            01 Jun 2021 

use v6;

my $j = 'godzilla' | 'ghidora' | 'gavora';

sub scan_monsters ( $search ) {
    my @population = < godzilla grendel ghidora wormface blob >;
#     my $status = 
#       @population.grep({/$search/});
    my $status = @population ~~ $search;
    return $status;
}

say scan_monsters( 'ghidora' );    # (Any)
say so scan_monsters( 'ghidora' ); # False
