#!/usr/bin/env perl6
# 
# jb_modgrid_01.raku              08 Oct 2022 

use v6;

my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );


# my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct23/modgrid/dat/warrior_weaponry.txt";
my $file = "warrior_weaponry.txt";
for $file.IO.lines -> $line {
    say $line.flip.split(/\s+/, 5).join("\t").flip;
}
