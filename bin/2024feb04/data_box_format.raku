#!/usr/bin/env raku
# 
# data_box_format.raku            04 Feb 2024 

use v6;

my @data = (
    { 'godzilla' => 8 },
    { 'mothera'  => 4 },
    { 'ghidora'  => 9 },
);

say @data;  # [{godzilla => 8} {mothera => 4} {ghidora => 9}]

for @data -> %row {
    say $row<godzilla>;
}
