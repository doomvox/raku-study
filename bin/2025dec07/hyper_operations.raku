#!/usr/bin/env raku
# 
# hyper_operations.raku            07 Dec 2025 

use v6;


my @a = < godzilla grendel wormface blob >;
@a>>.say;
# godzilla
# grendel
# wormface
# blob

my @b = [ [ 'a', 'b' ] ,  [ 'c', 'd' ] ];
@b>>.@b;

# bruce: keeps descending until it hits something that's not an array, and operate on the leaf nodes
#        *unless* the thing you're doing is marked nodal
#        operations are nodal methods are not (usually).

