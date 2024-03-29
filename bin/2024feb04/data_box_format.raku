#!/usr/bin/env raku
# 
# data_box_format.raku            04 Feb 2024 

use v6;

my @data = (
    # header row labels embedded in data
    { name => 'Name',  threat => 'Threat' },

    { name => 'godzilla', threat => 8 },
    { name => 'mothera',  threat => 4 },
    { name => 'ghidora',  threat => 9 },
);
say @data;  # [{name => godzilla, threat => 8} {name => mothera, threat => 4} {name => ghidora, threat => 9}]

## currently: punting on the order of the keys, using an arbitrary one.
## really, might like an array-of-arrays structure, or alternately an ordering array of keys
## (the "data frame" problem remains)

my @fields = @data[0].keys;  # note: using just the first row to get the field names, and *not* sorting

## first scan, get col widths
my %widths;  ## Q: initialize to zero?
for  @data -> %row {  ### TODO must also include the keys/labels to size columns for labels
    for @fields -> $f {
        printf "f: %10s %10s  char count: %s  \n",  $f, %row{$f}.gist, %row{$f}.chars;
        # save width for field if greater than previously saved one
        my $w = %row{ $f }.chars;
        %widths{ $f } max= $w;
    }
}
say %widths; # {name => 8, threat => 1}

## generating the sprintf format
my $fmt = @fields.map({ '%' ~ %widths{$_} + 2 ~ 's '  }).join('|') ~ "\n";
say $fmt;

## col labels are embedded in data for now
# my $header = sprintf $fmt, @fields;

## output each row, using the fmt
# my $output = $header;
my $output;
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
