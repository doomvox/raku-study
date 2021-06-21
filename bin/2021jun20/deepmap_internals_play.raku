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
my @keys = $monsters.keys;

say @keys;   # [blob wormface godzilla grendel]

my $ret = $monsters{ @keys };
say $ret;       # (5 8 6 4)
say $ret.WHAT;  # (List)

my $vals = $monsters.values;
say $vals;       # (5 8 6 4)
say $vals.WHAT;  # (Seq)
