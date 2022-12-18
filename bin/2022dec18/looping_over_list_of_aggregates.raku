#!/usr/bin/env perl6
# 
# looping_over_list_of_aggregates.raku            18 Dec 2022 

use v6;
# A point Marton Polgar brought up...

my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com
my @bunnies  = < bugs peter easter gloria haruhi >;
my @nothing  = < nada nope bupkes >;

my @things = @nothing, @monsters, @bunnies;
say @things.elems;

for @things -> $item {
    say $item.WHAT;
    say $item;
    }

say "===";
# This is the weird one, we don't iterate over the 3 items in the array
for @things[0] -> $item {  
    say $item.WHAT;
    say $item;
    }
# (Array)
# [nada nope bupkes]

say "===";
for | @things[0] -> $item {
    say $item.WHAT;
    say $item;
    }

say "===";
for @things[0].list -> $item {
    say $item.WHAT;
    say $item;
    }

say "===";
for @things[0].list -> $array {
    for $array -> $item { 
        say $item.WHAT;
        say $item;
    }
}
