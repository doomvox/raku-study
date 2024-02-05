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

sub foo (%hashvar) {
    say %hashvar;  ## prints and returns True
    # So this returns True;
}

## first scan, get col widths
my %widths;  ## Q: initialize to zero?
for @data -> %row {

    my @fields = %row.keys;
    for @fields -> $f {
        say "f: $f ",  %row{$f}, " char count: ", %row{$f}.chars;
        # save width for field if greater than previously saved one
        my $w = %row{ $f }.chars;
        %widths{ $f } = $w if $w > %widths{ $f };
    }

}
## output each row, padded with spaces




# 18:30:19 From Bruce Gray To Everyone:
# 	my %max_size;
# 	for @data -> %record {
# 	    %max_size{.key} max= .value.chars for %record;
# 	}
