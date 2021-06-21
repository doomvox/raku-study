#!/usr/bin/env perl6
# 
# deepmap_internals_play.raku            20 Jun 2021 

use v6;


# proto sub deepmap($, $, *%) {*}
# multi sub deepmap(\op, \obj) {
#     Rakudo::Internals.coremap(op, obj, :deep)
# }
# multi sub deepmap(\op, Associative \h) {
#     my @keys = h.keys;
#     hash @keys Z deepmap(op, h{@keys})
# }

my $monsters = { godzilla => 8,
                 grendel  => 4,
                 wormface => 6,
                 blob     => 5 };
say $monsters.WHAT; # (Hash)
my @keys = $monstres.keys;

say @keys;
say @keys.WHAT;
