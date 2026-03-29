#!/usr/bin/env raku
# 
# trial_is_cached.raku            29 Mar 2026 

use v6;

sub thing ($x) is cached {

    

}

sub internal ($a) {
    my $r = $a * 2;
    return $r;
}
