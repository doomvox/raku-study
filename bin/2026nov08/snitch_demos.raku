#!/usr/bin/env raku


use v6.e;

(1..3).Seq ==> snitch() ==> map(*+2) ==> say();  # OUTPUT: «(1 2 3)␤(3 4 5)␤»
