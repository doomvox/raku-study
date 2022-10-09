#!/usr/bin/env perl6
# 
# jb_modgrid_02.raku            09 Oct 2022 

use v6;

my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/dat/warrior_weaponry.txt";
for $file.IO.lines -> $line {
    say $line.flip.split(/\s+/, 5).join("\t").flip;
}

