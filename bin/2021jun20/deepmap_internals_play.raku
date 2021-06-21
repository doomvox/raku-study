#!/usr/bin/env perl6
# 
# deepmap_internals_play.raku            20 Jun 2021 

use v6;

## Understanding the code in 

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

## so, the "h{@keys}" construct calls deepmap
## with a Positional not an Associative, which
## hands it off to R::I.coremap with the :deep
## flag set.

## Then the returned List is zipped with the keys
## and turned into a hash, via "hash".

## This deepmap is a wrapper to ensure "coremap" only
## needs to deal with Positionals-- at the *top level*.

