#!/usr/bin/env perl6
# 
# william_michels_code_analog_of_rlang_named_vector.raku            18 Apr 2021 

use v6;

# I'll probably get this up sometime during the week. Getting
# Mixins to return numeric values is a simple matter of adding
# ">>.Nums" to the call, a`la "@islands[0..3]>>.Num.sum;" But the
# bigger issue is how to go from "name" to "value", and this is
# what I came up with:

# Need to define @islands data, borrowing set-up from:
#   https://github.com/doomvox/raku-study/tree/main/bin/2021apr18/bin/2021apr11/william_michels_raku_named_vectors.raku

my $islands_A = 
  <11506,5500,16988,2968,16,184,23,280,84,73,25,43,21,82,3745,840,13,30,30,89,40,33,49,14,42,227,16,36,29,15,306,44,58,43,9390,32,13,29,6795,16,15,183,14,26,19,13,12,82>.split(","); # Area

my $islands_N =
  <<"Africa" "Antarctica" "Asia" "Australia" "Axel Heiberg" "Baffin" "Banks" "Borneo" "Britain" "Celebes" "Celon" "Cuba" "Devon" "Ellesmere" "Europe" "Greenland" "Hainan" "Hispaniola" "Hokkaido" "Honshu" "Iceland" "Ireland" "Java" "Kyushu" "Luzon" "Madagascar" "Melville" "Mindanao" "Moluccas" "New Britain" "New Guinea" "New Zealand (N)" "New Zealand (S)" "Newfoundland" "North America" "Novaya Zemlya" "Prince of Wales" "Sakhalin" "South America" "Southampton" "Spitsbergen" "Sumatra" "Taiwan" "Tasmania" "Tierra del Fuego" "Timor" "Vancouver" "Victoria">>;                   # Name

my @islands;
my $i=0;
for (1..$islands_A.elems) { 
    @islands[$i] := $islands_A[$i] but $islands_N[$i].Str;
    $i++;
};

say "^^^";
"\ntry name-to-value: ".put;
my $selected = <<"Asia" "Africa" "Antarctica" "Axel Heiberg" "Greenland">>;
say $selected.elems;  # 5 

# Below WORKS!
for (@islands) -> $a {put ($a.Str~"\t"~$a.Num) if $a.Str eq $selected[3]}; #WORKS!
"____".put;

# WORKS!
for (@islands) -> $a {
    for 0..($selected.elems-1) -> $i {
    if ($a.Str eq $selected[$i].Str) { ($a.Str, $a.Num).say };
    };
};
#{ say %($a.Str => $a.Num) }; #return hash instead.

"____".put;

#https://gfldex.wordpress.com/2021/03/11/raku-is-a-match-for/
#Match (Str() $one, Str() $B)
#Below create Array-of-Hashes:
my @culled;
for (@islands) -> $a {
    for 0..($selected.elems-1) -> $i {
    @culled.push(%($a.Str, $a.Num)) if ($a.Str eq $selected[$i].Str);
    };
};
"\nsay culled: ".put;
.say for @culled;
say "Sum of: {@culled>>.keys.join(", ")} = "~ @culled>>.values.flat.sum; #corrected!
@culled>>.keys.join("\t").say;
@culled>>.values.join("\t").say;
#@culled.values>>.Num.sum.say; #incorrect "5"
@culled[]>>.values.flat.sum.say;
say @culled[0..1]>>.values.flat.sum; #flat WORKS!!


