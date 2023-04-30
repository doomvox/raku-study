#!/usr/bin/env raku
# 
# jj_merelo_grep_csv.raku            30 Apr 2023 

use v6;

## From JJ Mereleo's Raku Cookbook (Chapter 3)


.say for "Nutrients.csv".IO.lines.grep: {
    my @data = $_.split('","');
    $_ if @data[2] ew "Protein" and @data[4] > 70 and @data[5] ~~ /^g/
}
