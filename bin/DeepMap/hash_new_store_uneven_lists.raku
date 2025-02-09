#!/usr/bin/env raku
# 
# hash_new_store_uneven_lists.raku            26 Jan 2025 

use v6;

## .STORE method on a Hash, takes two lists, treats them as keys and values.
##  unequal length lists aren't handled well (just presumes they're equal length?)

# if rh short one, get an odd 'IterationEnd' value
my $h = Hash.new.STORE: <a b c>, <1 2>, :INITIALIZE;
.say for $h.sort;
# a => 1
# b => 2
# c => IterationEnd

say "===";

# if rh has one extra it's dropped silently
my $h = Hash.new.STORE: <a b c>, <1 2 3 4>, :INITIALIZE;
.say for $h.sort;
# a => 1
# b => 2
# c => 3


say "===";

my $h = Hash.new.STORE: <a b c>, <1 IterationEnd 2>, :INITIALIZE;
.say for $h.sort;
# a => 1
# b => IterationEnd
# c => 2

say '---';
my $h = Hash.new.STORE: <a b c>, <1 Nil 2>, :INITIALIZE;
.say for $h.sort;
# a => 1
# b => Nil
# c => 2
