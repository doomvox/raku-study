#!/usr/bin/env raku
# 
# data_box_format.raku            04 Feb 2024 

use v6;

my @data = (
    { 'name' => 'godzilla', threat => 8 },
    { 'name' => 'mothera',  threat => 4 },
    { 'name' => 'ghidora',  threat => 9 },
);

say @data;  # [{name => godzilla, threat => 8} {name => mothera, threat => 4} {name => ghidora, threat => 9}]

sub foo (%row) {
    say %row;
}

for @data -> %row {

    say %row; # {name => ghidora, threat => 9}

    dd %row;

    my @fields = %row.keys;
    # first scan, get col widths
    for @fields -> $f {
        say "f: $f ",  %row{$f}, " char count: ", %row{$f}.chars;



    }
    # output each row, padded with spaces

}



