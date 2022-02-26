#!/usr/bin/env perl6
# 
# array_of_hashes.raku            26 Feb 2022 

use v6;

my @data =
  {id=>1, name=>'godzilla', level=>8},
  {id=>2, name=>'ghidra',   level=>9},
  {id=>3, name=>'mothra',   level=>6};

my $total;
for @data -> $row {
    say $row{'name'};
    $total += $row{'level'};
}
say "ave level: ", $total/@data.elems;
