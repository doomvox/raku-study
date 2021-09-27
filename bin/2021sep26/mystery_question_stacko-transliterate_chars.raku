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

my %count;
my $new;
for $text.comb -> $c {
    my $n = $c;
    if %translate{ $c } {
          $n = %translate{ $c };
    } else {
        $n = $c.lc;
    };
    $new ~= $n;
    %count{$n}++;
}
say $new;
# THE tiFFuIzf OF THE FkzyioE IS THE oiy uHI FiOf "THE HOwHEFT dyIupEfwE OF TI dyIu THiT uE izE FkzzIkyfEf gh ohFTEzh

say %count;
# say %count.pairs.sort( .values ).map({ .keys });

# for $new.comb -> $c {

# }







# ===
# Author:  doom@kzsu.stanford.edu

