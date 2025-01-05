#!/usr/bin/env raku


# 
# split_to_sigiless.raku            22 Dec 2024 

use v6;

chdir( "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024dec22/" );
my $dat_file = "dat/split_to_sigiless.dat"


for $dat_file.IO.lines -> $line {
    # Do something with $line
    my (\k, \d, \f, \e) = $line.split("|");

    say k;

#    say join "|", k, d, $_, e for f.split(",");
}




