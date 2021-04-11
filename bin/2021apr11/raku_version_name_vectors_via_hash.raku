#!/usr/bin/env perl6
# 
# raku_version_name_vectors_via_hash.raku            06 Apr 2021 

use v6;

## My first thought, looking at William Michels stackoverflow question, was why not just a hash?
#  https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p

# my @islands_A = <11506,5500,16988,2968,16,184,23,280,84,73,25,43,21,82,3745,840,13,30,30,89,40,33,49,14,42,227,16,36,29,15,306,44,58,43,9390,32,13,29,6795,16,15,183,14,26,19,13,12,82>.split(","); #Area
# my @islands_N = <<"Africa" "Antarctica" "Asia" "Australia" "Axel Heiberg" "Baffin" "Banks" "Borneo" "Britain" "Celebes" "Celon" "Cuba" "Devon" "Ellesmere" "Europe" "Greenland" "Hainan" "Hispaniola" "Hokkaido" "Honshu" "Iceland" "Ireland" "Java" "Kyushu" "Luzon" "Madagascar" "Melville" "Mindanao" "Moluccas" "New Britain" "New Guinea" "New Zealand (N)" "New Zealand (S)" "Newfoundland" "North America" "Novaya Zemlya" "Prince of Wales" "Sakhalin" "South America" "Southampton" "Spitsbergen" "Sumatra" "Taiwan" "Tasmania" "Tierra del Fuego" "Timor" "Vancouver" "Victoria">>; #Name

## reduce the amount of data:
my @islands_A = <11506,5500,16988,2968,16>.split(","); #Area
my @islands_N = <<"Africa" "Antarctica" "Asia" "Australia" "Axel Heiberg">>; #Name

## zipping together arrays into hash
my %islands = @islands_N Z=> @islands_A;
say %islands;

# {Africa => 11506, Antarctica => 5500, Asia => 16988, Australia => 2968, Axel Heiberg => 16}

say %islands{'Antarctica'};
# 5500

exit;

# say "All islands (returns Area): ",     @islands;             #OUTPUT: returns 48 areas (above)
say "All islands (returns Area): ",     %islands.values;        #OUTPUT: returns 48 areas (above)
# say "All islands (returns Name): ",     @islands>>.Str;       #OUTPUT: returns 48 names (above)
say "All islands (returns Name): ",     %islands>>.keys;       #OUTPUT: returns 48 names (above)
# say "Islands--slice (returns Area): ",  @islands[0..3];       #OUTPUT: (11506 5500 16988 2968)
## TODO 
## say "Islands--slice (returns Area): ",  %islands.sort(%islands.keys).slice(0..3);   

## TODO
## say "Islands--slice (returns Name): ",  @islands[0..3]>>.Str; #OUTPUT: (Africa Antarctica Asia Australia)

# say "Islands--first (returns Area): ",  @islands[0];          #OUTPUT: 11506
say %islands{'Africa'}; ## 11506

# alternately, if you need to index on the original order
say %islands{ %islands.keys.sort.[0] }; ## 11506

# say "Islands--first (returns Name): ",  @islands[0]>>.Str;    #OUTPUT: (Africa)
say %islands.keys.sort.[0];  ## Africa

## I don't get what these examples are supposed to show:
# put "Islands--first (returns Name): ",  @islands[0];          #OUTPUT: Africa
# put "Islands--first (returns Name): ",  @islands[0]>>.Str;    #OUTPUT: Africa


say "===";
# bg: example of non-indiomatic code
my $islands_A = <11506,5500,16988,2968,16>.split(","); 
my $islands_N = <<"Africa" "Antarctica" "Asia" "Australia" "Axel Heiberg">>;

# bruce gray hint  Array of Pairs to preserve order:
my @islands_AoH = $islands_A.list Z=> $islands_N.list; 

