#!/usr/bin/env raku
# 
# unicode_play.raku            19 May 2024 

use v6;

# 1F479;JAPANESE OGRE;So;0;ON;;;;;N;;;;;
# 1F47A;JAPANESE GOBLIN;So;0;ON;;;;;N;;;;;

my $str = "👹👺";

for $str.comb -> $c {
    say "c: $c";
}

my $byte_length = $str.encode('utf8').bytes;
say $byte_length;

# for $str.encode('utf8').bytes -> $b {
#     say "c: $b";
# }
