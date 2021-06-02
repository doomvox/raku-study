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

    sub scan_monsters_mu ( Mu $search ) {
        my $status = any( @population ) ~~ $search;
        return $status;
    }

    say scan_monsters_mu( $j );  # True
}

say "===";
##  Another pair of "scan_monsters" that returns a list of all hits
##  this makes clear that without Mu, the return when searching a junction is useless
## 
##  (I would make the point that this is obscure behavior: would
##  not think to check for Mu proto before assuming junctions
##  pass okay)
{
    sub scan_monsters ( $search ) {
        my @hits = gather
        for @population -> $m {
            take $m if $m ~~ $search;
        }
        return @hits;
    }

    say scan_monsters( 'ghidora' );  #  [ghidora]
    say scan_monsters( 'gavora' );   #  []

    my $j = 'gavora' | 'ghidora' | 'louis_epstein';
    say scan_monsters( $j );  # any([], [ghidora], [])

    sub scan_monsters_mu ( Mu $search ) {
        my @hits = gather
        for @population -> $m {
            take $m if $m ~~ $search;
        }
        return @hits;
    }
    say scan_monsters_mu( $j );  # [ghidora]

    say scan_monsters( rx/^g/ );   # [godzilla grendel ghidora]
    say scan_monsters_mu( rx/^g/ ); # [godzilla grendel ghidora]
}

## NOTES
#
# monster identification: /home/doom/Dust/Images/Gavora

# Isn't it interesting that specifying "Mu" (the most general possible type-- or "type") 
# is different than not specifying any type?
