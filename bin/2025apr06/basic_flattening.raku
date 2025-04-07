#!/usr/bin/env raku
# 
# basic_flattening.raku            06 Apr 2025 

use v6;

my $structure = [[1, 2, 3], [(4, 5), 6, 7]] ;


say $structure.flat;         # OUTPUT: ([1 2 3] [(4 5) 6 7])
say $structure».List.flat;   # OUTPUT: (1 2 3 4 5 6 7)


say $structure.flat(:hammer);  # OUTPUT: ([1 2 3] [(4 5) 6 7])

# say $structure[**];  # HyperWhatever in array index not yet implemented. Sorry.
