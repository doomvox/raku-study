#!/usr/bin/env perl6
# 
# strip_blank_lines_at_outset.raku            24 Jul 2021 

use v6;

# my $file = "/home/doom/Dust/Texts/JohnDewey/essaysinexperim02dewegoog_djvu.txt";
# my $file = "/home/doom/tmp/big.txt";
# my @lines =  $file.IO.lines;

# say @lines.elems; # 9

# say @lines[3];  

my $file ="/home/doom/tmp/lineotypoblankosity.txt";

my @lines =  $file.IO.lines;

# say @lines.join("\n");

say "My email is doomvox@gmail.com";

my %fried = ( 'eggs' => 3,
              'potatoes' => 1,
              'cheese' => 0.4,
              );

say %fried;

say "my recipie: { %fried.gist }";


my $fried = ( 'eggs'     => 3,
              'potatoes' => 1,
              'cheese'   => 0.4,
              );

say "now what: $fried";

say $fried.kv;  # (0 eggs => 3 1 potatoes => 1 2 cheese => 0.4)

say $fried.kv.[3]; # potatoes => 1

my @p = $fried.pairs;
say @p.elems;  # 3

my @e = $fried.kv;
say @e.elems;  # 6

for @p -> $p {
    say $p;
    say $p.keys;
    say $p.values;
}

# 0 => eggs => 3
# 1 => potatoes => 1
# 2 => cheese => 0.4
