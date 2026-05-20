#!/usr/bin/env raku

## .rotor(2) and .pairup are opposing, uh, pairs (but only roughly)

my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com


my @input = < goategon 7 hargon 4 esterk 3 zoma 9 hornbeat 4 >;

say @input.pairup;
# (goategon => 7 hargon => 4 esterk => 3 zoma => 9 hornbeat => 4)

say @input.rotor(2);
# ((goategon 7) (hargon 4) (esterk 3) (zoma 9) (hornbeat 4))

say @input.rotor(2).flat;
# (goategon 7 hargon 4 esterk 3 zoma 9 hornbeat 4)

say @input.rotor(2).flat.pairup;
# (goategon => 7 hargon => 4 esterk => 3 zoma => 9 hornbeat => 4)

