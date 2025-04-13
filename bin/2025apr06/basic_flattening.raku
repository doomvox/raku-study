#!/usr/bin/env raku
# 
# basic_flattening.raku            06 Apr 2025 

use v6.e.PREVIEW;

my $structure = [[1, 2, 3], [(4, 5), 6, 7]] ;


say $structure.flat;         # OUTPUT: ([1 2 3] [(4 5) 6 7])
say $structure».List.flat;   # OUTPUT: (1 2 3 4 5 6 7)

say "flat hammer time";
# :hammer adverb doesn't do what I expected, in Rakudo™ v2023.02 at any rate
# not documented in "flat" page, so don't know what it's supposed to do
say $structure.flat(:hammer);  # OUTPUT: (1 2 3 4 5 6 7) with a recent raku (new build as of 2025apr)

say $structure[*;*];   # OUTPUT: (1 2 3 (4 5) 6 7)

say $structure[**];  # (1 2 3 4 5 6 7) (with recent raku)
# Used to say:
  # HyperWhatever in array index not yet implemented. Sorry.
                     
# Mark A: 
# I think hammer is v6.e along with the [**]

{
    my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com
    my %h = @monsters Z=>(1..9);  
    say %h; # {ankou => 1, araxxor => 2, borrokar => 3, damis => 4, delrith => 5, elvarg => 6, kalrag => 7, yuri => 8}

    say %h.flat();
    say %h.flat(:hammer);

    }
