#!/usr/bin/env perl6
# 
# csv.raku            26 Sep 2021 

use v6;


# raku -MText::CSV -e 'my $csv=Text::CSV.new;  .perl.put for $csv.getline_all(open($*ARGFILES, :r, :!chomp));'

use Text::CSV;

my $csv=Text::CSV.new;
for $csv.getline_all( open( $*ARGFILES, :r, :!chomp ) ) {
    .perl.put 
}


# ===
# Author:  doom@kzsu.stanford.edu

