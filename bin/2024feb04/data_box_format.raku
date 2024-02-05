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

my @fields = @data[0].keys;  # note: using just the first row to get the field names

## first scan, get col widths
my %widths;  ## Q: initialize to zero?
for @data -> %row {
    for @fields -> $f {
        say "f: $f ",  %row{$f}, " char count: ", %row{$f}.chars;
        # save width for field if greater than previously saved one
        my $w = %row{ $f }.chars;
        %widths{ $f } = $w if $w > %widths{ $f }; ## bg points to max=
    }
}

say %widths; # {name => 8, threat => 1}
my $fmt = @fields.map({ '%' ~ %widths{$_} + 2 ~ 's '  }).join('|') ~ "\n";
say $fmt;

## output each row, padded with spaces
for @data -> %row {
    my @values = @fields.map({ %row{$_} });

    printf $fmt, @values;
}



# 18:30:19 From Bruce Gray To Everyone:
# 	my %max_size;
# 	for @data -> %record {
# 	    %max_size{.key} max= .value.chars for %record;
# 	}
