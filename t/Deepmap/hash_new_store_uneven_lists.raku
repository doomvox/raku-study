#!/usr/bin/env raku
# 
# hash_new_store_uneven_lists.raku            26 Jan 2025 

use v6;

my $h = Hash.new.STORE: <a b c>, <1 2>, :INITIALIZE; .say for $h.sort;
# a => 1
# b => 2
# c => IterationEnd

say "===";
my $h = Hash.new.STORE: <a b c>, <1 2 3 4>, :INITIALIZE; .say for $h.sort;
# a => 1
# b => 2
# c => 3

