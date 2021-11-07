#!/usr/bin/env perl6
# 
# junctions_sans_petticoats.raku            07 Nov 2021 

use v6;

my $a = 3;

if $a == 3|4 {
    say "truish!";
} 

my $COUNT;


say dostuff( any(3,7) );
say dostuff( all(3,7) );

# any(True, False)
# all(True, False)

say so any(True, False); # True 
say so all(True, False); # False

say "COUNT: $COUNT";  # COUNT: 4

sub dostuff( $arg ) {
    $COUNT++;
    if $arg <= 5 {
        return True;
    } else { 
        return False;
    }
}






# ===
# Author:  doom@kzsu.stanford.edu

