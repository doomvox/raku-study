#!/usr/bin/env perl6
# 
# csv.raku            26 Sep 2021 

H4-csv.raku /home/doom/tmp/mtcars_from_r.csv

use v6;

# William Michals one-liner
# raku -MText::CSV -e 'my $csv=Text::CSV.new;  .perl.put for $csv.getline_all(open($*ARGFILES, :r, :!chomp));'

use Text::CSV;

sub MAIN () {
    my $csv=Text::CSV.new;
    for $csv.getline_all( open( $*ARGFILES, :r, :!chomp ) ) {
        .perl.put;
    }
}



# ===
# Author:  doom@kzsu.stanford.edu

