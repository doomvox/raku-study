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

## TODO to start with, can use keys as column labels, but that's just the default
## need a map to transform keys to label strings
## further, to get field widths, must consider labels, not just data

## currently: punting on the order of the keys, using an arbitrary one.
## really, might like an array-of-arrays structure, or alternately an ordering array of keys
## the "data frame" problem remains

my @fields = @data[0].keys;  # note: using just the first row to get the field names, and *not* sorting

## first scan, get col widths
my %widths;  ## Q: initialize to zero?
for @data -> %row {  ### TODO must also include the keys/labels to size columns for labels
    for @fields -> $f {
        say "f: $f ",  %row{$f}, " char count: ", %row{$f}.chars;
        # save width for field if greater than previously saved one
        my $w = %row{ $f }.chars;
        %widths{ $f } = $w if $w > %widths{ $f }; ## bg points to max=
    }
}
say %widths; # {name => 8, threat => 1}

## generating the sprintf format
my $fmt = @fields.map({ '%' ~ %widths{$_} + 2 ~ 's '  }).join('|') ~ "\n";
say $fmt;

my $header = sprintf $fmt, @fields;

## output each row, using the fmt
my $output = $header;
for @data -> %row {
    my @values = @fields.map({ %row{$_} });

    $output ~= sprintf $fmt, @values;
}
say $output;


# 18:30:19 From Bruce Gray To Everyone:
# 	my %max_size;
# 	for @data -> %record {
# 	    %max_size{.key} max= .value.chars for %record;
# 	}
