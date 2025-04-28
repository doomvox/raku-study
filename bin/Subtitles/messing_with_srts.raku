#!/usr/bin/env raku
# 
# messing_with_srts.raku            26 Apr 2025 

use v6;
 
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/Subtitles/data/short.srt 
my $data_loc = $*PROGRAM.parent.add('data');
my $file = "$data_loc/short.srt";
say $file;

my $fh = $file.IO.open( :r );
my $data = $fh.slurp;

say $data;

## cheat sheet

grammar srt {
   rule TOP { <stanzas> }
   token index { ^ \d $ }
   token whateva { .* }
   token wordy { 'doomfiles' }
      }
 
# my $match = df.parse($web_content);
my $match = df.parse( $data );
say $match.what;         
say $match.perl;
say $match;
# say $match.made;




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
