#!/usr/bin/env perl6
# 
# william_michels_code_analog_of_rlan_named_vector.raku            18 Apr 2021 

use v6;

# I'll probably get this up sometime during the week. Getting
# Mixins to return numeric values is a simple matter of adding
# ">>.Nums" to the call, a`la "@islands[0..3]>>.Num.sum;" But the
# bigger issue is how to go from "name" to "value", and this is
# what I came up with:

my @islands; ## TODO need to define data here.


"\ntry name-to-value: ".put;
my $selected = <<"Asia" "Africa" "Antarctica" "Axel Heiberg" "Greenland">>;
say $selected.elems;
#Below WORKS!
for (@islands) -> $a {put ($a.Str~"\t"~$a.Num) if $a.Str eq $selected[3]}; #WORKS!
"____".put;

#WORKS!
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


