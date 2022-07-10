#!/usr/bin/env perl6
# 
# span_haskell_style.raku            10 Jul 2022 

use v6;


# The Parrot Raiser raises an issue:
#   https://stackoverflow.com/questions/72809469/in-raku-how-does-one-write-the-equivalent-of-haskells-span-function


my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com

my regex chop_point { ^ chop };    # not allowed to use '=' here

my $ret = span( /<chop_point>/, @monsters );

say @first = $ret[0];
say @second = $ret[1];


sub span (Regex $pat, @items) {
    my $idx =  @items.first: $pat, :k;
#    say "idx: $idx";

    my @a1 = @items[ 0 ..^ $idx ];
    my @a2 = @items[ $idx .. @items.elems ];

    return  @a1,  @a2;
}
