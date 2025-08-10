#!/usr/bin/env raku
# 
# ranges_and_sequences-list_slices.raku            10 Aug 2025 

use v6;

my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

say @monsters[ 1 .. 3 ];   ## (araxxor borrokar damis)
say @monsters[ 1 ... 3 ];  ## (araxxor borrokar damis)

say @monsters[ 3 .. 1 ];   ## ()
say @monsters[ (1 .. 3).reverse ];  ## (damis borrokar araxxor)

say @monsters[ 3 ... 1 ];   ## ()
