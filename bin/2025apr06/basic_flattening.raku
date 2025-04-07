#!/usr/bin/env raku
# 
# basic_flattening.raku            06 Apr 2025 

use v6.e.PREVIEW;

my $structure = [[1, 2, 3], [(4, 5), 6, 7]] ;


say $structure.flat;         # OUTPUT: ([1 2 3] [(4 5) 6 7])
say $structure».List.flat;   # OUTPUT: (1 2 3 4 5 6 7)

# :hammer adverb doesn't do what I expected, in Rakudo™ v2023.02 at any rate
# not documented in "flat" page, so don't know what it's supposed to do
say $structure.flat(:hammer);  # OUTPUT: ([1 2 3] [(4 5) 6 7])
                               # 6.e     ([1 2 3] [(4 5) 6 7])

# say $structure[**];  # HyperWhatever in array index not yet implemented. Sorry.

say $structure[*;*];   # OUTPUT: (1 2 3 (4 5) 6 7)


# Mark A: 
# I think hammer is v6.e along with the [**]
