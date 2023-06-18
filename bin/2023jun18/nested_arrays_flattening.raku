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
