#!/usr/bin/env raku
# 
# nested_arrays_flattening.raku            18 Jun 2023 

use v6;



my $stuff = [ 'alpha', 'beta', [ 'nada', 'bupkiss', 'null' ], 'gamma' ];

say $stuff;
# [alpha beta [nada bupkiss null] gamma]

say $stuff.flat;
# (alpha beta [nada bupkiss null] gamma)

say $stuff.list;
# [alpha beta [nada bupkiss null] gamma]

say $stuff.List;
# (alpha beta [nada bupkiss null] gamma)

say $stuff>>.flat;
# [(alpha) (beta) [(nada) (bupkiss) (null)] (gamma)]

say $stuff>>.list;
# ((alpha) (beta) [nada bupkiss null] (gamma))


say $stuff.deepmap(*.flat);
# [(alpha) (beta) [(nada) (bupkiss) (null)] (gamma)]

say $stuff.deepmap({ $_.flat });
# [(alpha) (beta) [(nada) (bupkiss) (null)] (gamma)]

say $stuff.deepmap({ $_.Slip });
# [alpha beta [nada bupkiss null] gamma]

say $stuff>>.Slip;
# ((alpha) (beta) (nada bupkiss null) (gamma))

say "===";
for $stuff -> $item {
    say $item.list;
    say "\n";
}
say "===";

## b.g. approach, presumes you know how many levels

# raku -e 'my $a = [ [ [1,2,3], [4,5,6] ], [ [7,8,9], [10,11,12] ] ]; say $a.map(|*).map(|*);'
# (1 2 3 4 5 6 7 8 9 10 11 12)

my $a = [ [ [1,2,3], [4,5,6] ], [ [7,8,9], [10,11,12] ] ];
say $a.map(|*).map(|*);

# (1 2 3 4 5 6 7 8 9 10 11 12)

say "===";

my $a =
[
    [
        [1,2,3], [4,5,6]
    ],
    [
        [7,8,9], [10,11,12]
    ]
];

say $a>>.map(|*);
# ((1 2 3 4 5 6) (7 8 9 10 11 12))

# just does the top level, so you still have structure

say "===";

my %monsters = ( 'params1' => { strict => True,
                                warnings => False,
                              },
                 'params2' => {  strict => False,
                                warnings => True,
                                } 
                );                              

say %monsters;
# {params1 => {strict => True, warnings => False}, params2 => {strict => False, warnings => True}}

say %monsters>>.uc;
# {params1 => {strict => TRUE, warnings => FALSE}, params2 => {strict => FALSE, warnings => TRUE}}

say %monsters>>.not;
# {params1 => {strict => False, warnings => True}, params2 => {strict => True, warnings => False}}

say "===";

say $a;
# [[[1 2 3] [4 5 6]] [[7 8 9] [10 11 12]]]

say $a.tree(1).flat;

my @floors = ( 'A', ('B','C', ('E','F','G')));
# say @floors.tree(1).flat.elems; # OUTPUT: «6␤» 

say $a.tree().flat;
# (((1 2 3) (4 5 6)) ((7 8 9) (10 11 12)))

# a:
# [[[1 2 3] [4 5 6]] [[7 8 9] [10 11 12]]]
say $a.tree(1).flat.elems;
# 4
say $a.tree(1).flat;
# ([1 2 3] [4 5 6] [7 8 9] [10 11 12])



# Marton points to the code for tree:
#  https://github.com/rakudo/rakudo/blob/704a05b934ba10f3240e8764827bbfd7fe089cdf/src/core.c/Any.pm6#L181
# (Docs don't really say what it's for very well.)


say "===";

# https://new-raku.finanalyst.org/routine/tree

my @floors = ( 'A', ('B','C', ('E','F','G')));
say @floors.tree(1).flat.elems; # 6
say @floors.tree(2).flat.elems; # 2
say @floors.tree( *.join("-"),*.join("—"),*.join("|")); # A-B—C—E|F|G


