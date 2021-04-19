#!/usr/bin/env perl6
# 
# codepoints_from_decomposed_unicode.raku            18 Apr 2021 

use v6;

my $file  = "/home/doom/End/Cave/Perl6/Wall/raku-study/dat/some_hebrew.txt";
my $fh    = $file.IO.open;
my $str   = $fh.readchars( 10000 );
# my $width = $str.encode('UTF-8').bytes;  
for $str.encode('utf8-c8') -> $c {
    say $c;
};


