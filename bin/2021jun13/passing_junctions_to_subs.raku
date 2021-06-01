#!/usr/bin/env perl6
# 
# passing_junctions_to_subs.raku            01 Jun 2021 

use v6;

# global list to be searched:
my @population = < godzilla grendel ghidora wormface blob >;

{
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

    say scan_monsters_2( $j );  # True
}

say "===";
## TODO re-work to return list of all hits
##      show that without Mu, the return when searching a junction is useless
##      make the point that this is obscure behavior: would not think to check for Mu proto before assuming junctions pass okay
{
    sub scan_monsters ( $search ) {
        my @hits = gather
        for @population -> $m {
            take $m if $m ~~ $search;
        }
        return @hits;
    }

    say scan_monsters( 'ghidora' );  #  [ghidora]
    say scan_monsters( 'gavora' );   # 

    my $j = 'gavora' | 'ghidora' | 'louis_epstein';
    say scan_monsters( $j );  # 

    sub scan_monsters_2 ( Mu $search ) {
        my $status = any( @population ) ~~ $search;
        return $status;
    }

    say scan_monsters_2( $j );  # True
}

## NOTES
#
# monster identification: /home/doom/Dust/Images/Gavora
