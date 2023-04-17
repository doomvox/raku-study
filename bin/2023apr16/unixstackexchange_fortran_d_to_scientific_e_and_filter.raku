#!/usr/bin/env raku
# 
#  16 Apr 2023 

use v6;

## william michaels code reformatted slightly
my @a;

for lines.join("\n").split(/ \n <?before DEG> /) {
    @a.push:
    %(.split("\n").[0].words.[2] => .split("\n")[1..*].map(
                      *.words[0,4])>>.map(*.subst( / (\d+) (<[+-]>) /, 
                                                    {$0 ~ "e" ~ $1 }
                                                 ).subst(/D/, "e") )>>.Num)
};

.raku.put for @a;

# ${"1.500" => $($(26e0, 0e0), $(27e0, 9.41e-316), $(43e0, 6.984e-96), $(159e0, 7.376e-19), $(160e0, 1.089e-18), $(161e0, 15.96e0), $(162e0, 2.32e-10))}
# ${"18.500" => $($(27e0, 0e0), $(28e0, 4.412e-297), $(88e0, 7.275e-15))}
