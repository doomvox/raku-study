#!/usr/bin/env perl6
# 
# mystery_question_stacko-transliterate_chars.raku            26 Sep 2021 

use v6;

my $text = 
  'MAL TIRRUEZF CR MAL RKZYIOL EX MAL OIY UAE RICF "MAL ACWALRM DYEUPLFWL CR ME DYEU MAIM UL IZL RKZZEKYFLF GH OHRMLZH';

my %translate = (
    'M' => 'T',
    'A' => 'H',
    'L' => 'E',
    'C' => 'O',
    'R' => 'F',
    'E' => 'I',
    'X' => 'S',
);

my $new;
for $text.comb -> $c {
    my $n = $c;
    if %translate{ $c } {
          $n = %translate{ $c };
    } else {
        $n = $c.lc;
    };
    $new ~= $n;
}

say $new;
# THE TIFFUIZF OF THE FKZYIOE IS THE OIY UHI FIOF "THE HOWHEFT DYIUPEFWE OF TI DYIU THIT UE IZE FKZZIKYFEF GH OHFTEZH



## (Any other letter) = _
## (Anything else) = (itself)

## I have the fixed characters covered with:

## tr MALCREX THEOFIS < file.txt

## Or:

## sed 'y/MALCREX/THEOFIS/' < file.txt

## But how could I enforce the last two rules I mentioned?




# ===
# Author:  doom@kzsu.stanford.edu

