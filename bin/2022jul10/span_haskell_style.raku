#!/usr/bin/env perl6
# 
# span_haskell_style.raku            10 Jul 2022 

use v6;


# The Parrot Raiser raises an issue:
#   https://stackoverflow.com/questions/72809469/in-raku-how-does-one-write-the-equivalent-of-haskells-span-function


my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com

my regex $chop = { ^ chop };

sub span (@items) {
    my $idx = @items.first: $chop, :p;

    my @a1 = @items[ 0 ..^ $idx ];
    my @a2 = @items[ $idx .. @items.elems ];



}
