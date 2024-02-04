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

for @data -> %row {
#    say %row<name>; # godzilla  mothera  ghidora
    my @fields = %row.keys;
    for @fields -> $f {
        say %row; # {name => ghidora, threat => 9}
        say "f: $f "  %row{$f}, " char count: ", %row{$f}.Str.chars;



    }

}
