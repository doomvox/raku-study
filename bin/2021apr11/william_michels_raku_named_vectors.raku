#!/usr/bin/env perl6
# 
# william_michels_raku_named_vectors.raku            06 Apr 2021 

# https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p


use v6;

put "Read in data.";

my $islands_A = <11506,5500,16988,2968,16,184,23,280,84,73,25,43,21,82,3745,840,13,30,30,89,40,33,49,14,42,227,16,36,29,15,306,44,58,43,9390,32,13,29,6795,16,15,183,14,26,19,13,12,82>.split(","); # Area

my $islands_N = <<"Africa" "Antarctica" "Asia" "Australia" "Axel Heiberg" "Baffin" "Banks" "Borneo" "Britain" "Celebes" "Celon" "Cuba" "Devon" "Ellesmere" "Europe" "Greenland" "Hainan" "Hispaniola" "Hokkaido" "Honshu" "Iceland" "Ireland" "Java" "Kyushu" "Luzon" "Madagascar" "Melville" "Mindanao" "Moluccas" "New Britain" "New Guinea" "New Zealand (N)" "New Zealand (S)" "Newfoundland" "North America" "Novaya Zemlya" "Prince of Wales" "Sakhalin" "South America" "Southampton" "Spitsbergen" "Sumatra" "Taiwan" "Tasmania" "Tierra del Fuego" "Timor" "Vancouver" "Victoria">>;                   # Name

"----".say;

put "Count elements (Area): ", $islands_A.elems; #OUTPUT 48
put "Count elements (Name): ", $islands_N.elems; #OUTPUT 48

"----".say;

put "Create 'named vector' array (and output):\n";
my @islands;
my $i=0;
for (1..$islands_A.elems) { 
    @islands[$i] := $islands_A[$i] but $islands_N[$i].Str;
    $i++;
};

say "All islands (returns Area): ",     @islands;             #OUTPUT: returns 48 areas (above)
say "All islands (returns Name): ",     @islands>>.Str;       #OUTPUT: returns 48 names (above)
say "Islands--slice (returns Area): ",  @islands[0..3];       #OUTPUT: (11506 5500 16988 2968)
say "Islands--slice (returns Name): ",  @islands[0..3]>>.Str; #OUTPUT: (Africa Antarctica Asia Australia)
say "Islands--first (returns Area): ",  @islands[0];          #OUTPUT: 11506
say "Islands--first (returns Name): ",  @islands[0]>>.Str;    #OUTPUT: (Africa)

put "Islands--first (returns Name): ",  @islands[0];          #OUTPUT: Africa
put "Islands--first (returns Name): ",  @islands[0]>>.Str;    #OUTPUT: Africa

