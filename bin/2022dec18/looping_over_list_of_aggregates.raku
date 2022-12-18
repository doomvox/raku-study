#!/usr/bin/env perl6
# 
# looping_over_list_of_aggregates.raku            18 Dec 2022 

use v6;

my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com
my @bunnies  = < bugs peter easter gloria haruhi >;
my @nothing  = < nada nope bupkes >;

my @things = @monsters, @bunnies, @nothing;
say @things.elems;

for @things -> $item {
    say $item.WHAT;
    say $item;
    }
say "===";
for @things[0] -> $item {
    say $item.WHAT;
    say $item;
    }
