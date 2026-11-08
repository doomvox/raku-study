#!/usr/bin/env raku


use v6.e.PREVIEW;

(1..3).Seq ==> snitch() ==> map(*+2) ==> say();  # OUTPUT: «(1 2 3)␤(3 4 5)␤»



("a".."f").map({ .uc }).snitch.map({ .ord  }).say;

# (A B C D E F)
# (65 66 67 68 69 70)

say gather for ("a".."f")  {
    take .uc.snitch.ord
}

say "===";

.say for ("a".."f").map( *.uc.snitch.ord)
