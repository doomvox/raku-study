#!/usr/bin/env raku
# 
#     16 Apr 2023 

# william michaels raku oneliner (his first try)
# https://unix.stackexchange.com/a/742940/227738

use v6;

raku -e 'my @a; for lines.join("\n").split(/ \n <?before DEG> /) { @a.push: %(.split("\n").[0].words.[2] => \
             .split("\n")[1..*].map(*.words[0,4])>>.map(*.subst( / (\d+) (<[+-]>) /, {$0 ~ "e" ~ $1} ).subst(/D/, "e") )>>.Num) };  \
             .raku.put for @a;'  file


