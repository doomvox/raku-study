#!/usr/bin/env raku
# 
#            16 Apr 2023 

## another william michaels solution

use v6;

my @a;
for lines.join("\n").split(/ \n <?before DEG> /) {
    @a.push: %(.split("\n").[0].words.[2] => .split("\n")[1..*].map(*.words[0,4])>>.map(*.subst( / (\d+) (<[+-]>) /, {$0 ~ "e" ~ $1} ).subst(/D/, "e") )>>.Num)
};  
for @a {  for ($_.kv) -> $k,$v {put ([Z] $k xx $v.elems,  $v>>.map( -> $i { ($i =~= 0) ?? 0 !! $i } )).join: "\n"}};

