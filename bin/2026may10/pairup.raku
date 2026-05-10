#!/usr/bin/env raku



my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com


my @input = < goategon 7 hargon 4 esterk 3 zoma 9 hornbeat 4 >;

say @input.pairup;
# (goategon => 7 hargon => 4 esterk => 3 zoma => 9 hornbeat => 4)


say @input.rotor(2);
