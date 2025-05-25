#!/usr/bin/env raku
# 
# list_and_List.raku            25 May 2025 

use v6;

my $thing = ('godzilla', 'grendel', 'wormface', 'blob');

say $thing.WHAT;  # (List)

my $another_thing = $thing.list;
my $still_another_thing = $thing.List;

say $another_thing.WHAT;          # (List)
say $still_another_thing.WHAT;    # (List)

