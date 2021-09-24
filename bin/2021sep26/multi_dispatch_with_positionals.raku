#!/usr/bin/env perl6
# 
# multi_dispatch_with_positionals.raku                             23 Sep 2021 
# mutated from:
# multi_dispatch_with_overlapping_subset_types.raku            23 Sep 2021 

use v6;

my @monsters = < godzilla mothera ghidora gammera golem wormface >;
my @heroes   = < beowulf maynard_g_krebs bluebeetle bernie mothera godzilla >;

multi sub speak (List $m) {
    say "The 3rd element of the List: $h[2]" if $h[2];
}
multi sub speak (Array $h) {
    say "The 3rd element of the Array: $h[2]" if $h[2];
}

speak( @monsters );
speak( <beowulf bernie mothera> );



# ===
# Author:  doom@kzsu.stanford.edu

