#!/usr/bin/env perl6
# 
# bags_of_lists.raku            20 Nov 2022 

use v6;

my %bh = ( $(1,2), $(2,3), $(4,5) ).BagHash;
say %bh; 
# {1 2 => 1, 2 3 => 1, 4 5 => 1}

# say %bh.^methods;

%bh.append( $(1,2) );
say %bh;
# {1 => 2, 1 2 => 1, 2 3 => 1, 4 5 => 1}
# {1 2 => 1, 2 3 => 1, 4 5 => 1}

#  antipairs
#  append
#  categorize-list
#  classify-list
#  clone
#  contains
#  default
#  DELETE-KEY
#  DUMP
#  dynamic
#  elems
#  EXISTS-KEY
#  flat
#  FLATTENABLE_HASH
#  FLATTENABLE_LIST
#  fmt
#  gist
#  hash
#  Hash
#  head
#  hyper
#  index
#  Int
#  invert
#  item
#  IterationBuffer
#  iterator
#  keyof
#  keys
#  kv
#  lazy
#  lazy-if
#  list
#  List
#  Map
#  Mix
#  MixHash
#  name
#  new
#  Numeric
#  of
#  pairs
#  pick
#  push
#  race
#  raku
#  roll
#  Set
#  SetHash
#  sort
#  STORE
#  Str
#  values
#  WHICH
