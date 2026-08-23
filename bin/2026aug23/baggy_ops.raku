#!/usr/bin/env raku

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;
my @threats =       8,      4,      9,      5,      3,    4;

my %h = @monsters Z=> @threats;

say %h; # {gammera => 5, ghidora => 9, godzilla => 8, golem => 3, mothera => 4, rhodan => 4}

say $b = %h.BagHash;

say $b;
