#!/usr/bin/env raku

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;
my @threats =       8,      4,      9,      5,      3,    4;

my %h = @monsters Z=> @threats;

say %h;
