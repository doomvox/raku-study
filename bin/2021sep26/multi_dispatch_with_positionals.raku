#!/usr/bin/env perl6
# 
# multi_dispatch_with_positionals.raku                             23 Sep 2021 
# mutated from:
# multi_dispatch_with_overlapping_subset_types.raku            23 Sep 2021 

use v6;

my @monsters = < godzilla mothera ghidora gammera golem wormface >;
my @heroes   = < beowulf maynard_g_krebs bluebeetle bernie mothera godzilla >;

multi sub speak (List $l) {
    say "The 3rd element of the List: $l[2]" if $l[2];
}
multi sub speak (Array $a) {
    say "The 3rd element of the Array: $a[2]" if $a[2];
}
multi sub speak (Positional $a) {
    my $type = $a.^name;
    say "The 3rd element of a $type: $a[2]" if $a[2];
}


speak( @monsters );                  # The 3rd element of the Array: ghidora
speak( <beowulf bernie mothera> );   # The 3rd element of the List: mothera

# ===
# Author:  doom@kzsu.stanford.edu

