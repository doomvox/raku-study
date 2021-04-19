#!/usr/bin/env perl6
# 
# codepoints_from_decomposed_unicode.raku            18 Apr 2021 

use v6;

## Trying to compare two similar-looking hebrew words from an on-line edition of
## genesis, where one seems to have a number of diacritic marks (descenders).

## Q: can we decompose it and examine the code points 


my $file  = "/home/doom/End/Cave/Perl6/Wall/raku-study/dat/some_hebrew.txt";
my $fh    = $file.IO.open;
# my $str   = $fh.readchars( 10000, enc => 'utf8-c8' );
my $str   = $fh.slurp( enc => 'utf8-c8' );

# my $width = $str.encode('UTF-8').bytes;  
# for $str.encode('utf8-c8') -> $c {
#     say $c;
# };

# my $chk;
for split( '', $str) -> $c {
#    say $c;
#    $chk = $c;
#    printf( "%s  %d\n", $c, $c.codes);
    printf( "%s  %d \n", $c, $c.ord);
}

# .say for $chk.^methods>>.name; # codes, chars, ord, ords
