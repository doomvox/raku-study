#!/usr/bin/env raku

## From an old stackoverflow question:
##  https://stackoverflow.com/questions/56067089/raku-sorting-hash-by-values-and-using-kv


my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @level    = 7, 6, 4, 8, 5, 6, 5;

my %threat = @monsters Z=> @level;

say %threat;
# {basilisk => 7, behemoth => 4, chimera => 6, leviathan => 8, manticore => 5, minotaur => 6, ziz => 5}

