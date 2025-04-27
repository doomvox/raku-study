#!/usr/bin/env raku
# 
# messing_with_strs.raku            26 Apr 2025 

use v6;

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/Subtitles/data/short.srt 
my $data_loc = $*PROGRAM.parent.add('Subtitles').add('data');
my $file = "$data_loc/short.srt";
say $file;

my $fh = $file.IO.open( :r );
my $data = $fh.slurp;

say $data;

## cheat sheet

# say slurp( $file, enc => 'utf8-c8' x);

#             my $fh = $file.IO.open( :r, enc=>'utf8-c8' );
#             for $fh.lines -> $line {

## /home/doom/End/Cave/Ice/Xtal/Raku/paths_relative_to_script.org
## ** from t/*.t to lib
## *** platform independent form
##   use lib $*PROGRAM.parent(2).add("lib");

## from t/*.t to t/dat

##     my $dat_loc = $*PROGRAM.parent.add('dat');
##     chdir( $dat_loc );
