#!/usr/bin/env raku
# 
# jj_merelo_grep_csv.raku            30 Apr 2023 

use v6;

## From JJ Mereleo's Raku Cookbook (Chapter 3)
##  https://www.nal.usda.gov/human-nutrition-and-food-safety/nutrient-lists-standard-reference-legacy-2018

my $data_file = "/home/doom/Dust/Data/all_downloads_apr_2023/nutrient.csv";

.say for $data_file.IO.lines.grep: {
    my @data = $_.split('","');
    $_ if @data[2] eq "Protein" and @data[4] > 70 and @data[5] ~~ /^g/
}
