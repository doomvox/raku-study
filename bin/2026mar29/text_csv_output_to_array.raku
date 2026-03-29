#!/usr/bin/env raku
# 
# text_csv_output_to_array.raku            29 Mar 2026 

use v6;

my $f = "/home/doom/tmp/mtcars_from_r.csv";

use Text::CSV;

my @aoa = csv(in => "data.csv");  # as array of arrays
