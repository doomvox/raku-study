#!/usr/bin/env raku


use v6.d;

my @b  = < bugs peter easter gloria haruhi >;
my @a = < godzilla grendel wormface blob >;

(@a, @b) = (@b, @a);

say @a;
say @b;
