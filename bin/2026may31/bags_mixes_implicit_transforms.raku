#!/usr/bin/env raku

my @monsters = < basilisk minotaur behemoth godzilla >;
my @toho = < godzilla mothera rhodan >;


my $ret = @monsters (-) @toho;

