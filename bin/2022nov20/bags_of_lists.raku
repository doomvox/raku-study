#!/usr/bin/env perl6
# 
# bags_of_lists.raku            20 Nov 2022 

use v6;

my %bh = ( (1,2), (2,3), (4,5) ).BagHash;
say %bh; # {1 => 1, 2 => 2, 3 => 1, 4 => 1, 5 => 1}

say %bh.^methods;

 ACCEPTS
 antipairs
 append
 ASSIGN-KEY
 ASSIGN-KEY
 AT-KEY
 AT-KEY
 Bag
 BagHash
 BIND-KEY
 Bool
 BUILDALL
 Capture
 categorize-list
 classify-list
 clone
 contains
 default
 DELETE-KEY
 DUMP
 dynamic
 elems
 EXISTS-KEY
 flat
 FLATTENABLE_HASH
 FLATTENABLE_LIST
 fmt
 gist
 gist
 hash
 Hash
 Hash
 head
 hyper
 index
 Int
 invert
 item
 IterationBuffer
 iterator
 keyof
 keyof
 keys
 kv
 lazy
 lazy-if
 list
 List
 Map
 Map
 Mix
 MixHash
 name
 new
 Numeric
 of
 of
 pairs
 pick
 push
 race
 raku
 raku
 roll
 Set
 SetHash
 sort
 STORE
 STORE
 Str
 values
 WHICH
