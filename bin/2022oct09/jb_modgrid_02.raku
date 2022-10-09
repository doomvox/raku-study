#!/usr/bin/env perl6
# 
# jb_modgrid_02.raku            09 Oct 2022 

use v6;

my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/dat/warrior_weaponry.txt";
for $file.IO.lines -> $line {
    my @words  = $line.split(/\s+/).reverse;
    my $data   = @words[ 0 .. 4   ].reverse.join("\t");
    my $string = @words[ 5 .. *-1 ].reverse.join(" ");
    my $output = $string ~ "\t" ~ $data;
    say $output;
}

