#!/usr/bin/env perl6
# 
# codepoints_from_decomposed_unicode.raku            18 Apr 2021 

use v6;

my $file  = "/home/doom/End/Cave/Perl6/Wall/raku-study/dat/some_hebrew.txt";
my $fh    = $file.IO.open;
my $str   = $fh.readchars( $grapheme_count );
# my $width = $str.encode('UTF-8').bytes;  
my $width = $str.encode('utf8-c8').bytes;  


