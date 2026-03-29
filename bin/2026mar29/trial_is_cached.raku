#!/usr/bin/env raku
# 
# trial_is_cached.raku            29 Mar 2026 

use v6;

use experimental :cached;

sub thing ($x) is cached {
    my $r = internal( $x );
    return $r;
}

sub internal ($a) {
    say "doing internal calc";
    my $r = $a * 2;
    return $r;
}

say thing( 3 );
say thing( 6 );
say thing( 9 );
