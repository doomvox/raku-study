#!/usr/bin/env raku
# 
# text_csv_output_to_array.raku            29 Mar 2026 

use v6;

my $f = "/home/doom/tmp/mtcars_from_r.csv";

use Text::CSV;

my @aoa = csv(in => $f);  # as array of arrays

say @aoa[0];
say @aoa[1];
# [ mpg cyl disp hp drat wt qsec vs am gear carb]
# [Mazda RX4 21 6 160 110 3.9 2.62 16.46 0 1 4 4]

say "===";

my @data;

my $ret = csv(in => $f, out => @data);
say @data[0];
say @data[1];

say "ret: $ret";
