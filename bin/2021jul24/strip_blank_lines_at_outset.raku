#!/usr/bin/env perl6
# 
# strip_blank_lines_at_outset.raku            24 Jul 2021 

use v6;

my $file ="/home/doom/tmp/lineotypoblankosity.txt";

# say $file.IO.slurp;

my @lines =  $file.IO.lines;

say @lines.elems;
