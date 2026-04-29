#!/usr/bin/env raku

## From an old stackoverflow question:
##  https://stackoverflow.com/questions/56067089/raku-sorting-hash-by-values-and-using-kv


my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @level    = 7, 6, 4, 8, 5, 6, 5;

my %threat = @monsters Z=> @level;

say %threat;
# {basilisk => 7, behemoth => 4, chimera => 6, leviathan => 8, manticore => 5, minotaur => 6, ziz => 5}

for %threat.sort(*.value).reverse -> $p {
    say $p.value, "\t", $p.key;
}

# 8	leviathan
# 7	basilisk
# 6	chimera
# 6	minotaur
# 5	ziz
# 5	manticore
# 4	behemoth

## I like that one well enough, it's readable, and more-or-less does the job

## The stackoverflow answer plays with *.invert a lot in order to (somehow) get
## tie-breaking using the name in the key-- a nice touch, but I have to look up invert
## to see how that works.

## I find it mildly disappointing that I can't just do something like 
##
##   for %threat.sort(*.value).reverse.kv -> $monster, $level {
##
## That puts a sequence index into $monster, and $level gets a pair
## that still needs to be split (?)

