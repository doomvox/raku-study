#!/usr/bin/env perl6
# 
# span_haskell_style.raku            10 Jul 2022 

use v6;


# The Parrot Raiser raises an issue:
#   https://stackoverflow.com/questions/72809469/in-raku-how-does-one-write-the-equivalent-of-haskells-span-function


my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com

my regex chop_point { ^ chop };                # not allowed to use '=' here; doesn't like a sigil, $chop_point

my $ret = span( /<chop_point>/, @monsters );   # won't let you use the bare word 'chop_point'

my @first  = $ret[0];
my @second = $ret[1];
say @first;
say @second;

# Weird: prob with returning two lists and assigning to two arrays
# BG comments it's actually hard to do in raku (issue with two assign ops).

sub span (Regex $pat, @items) {
    my $idx =  @items.first: $pat, :k;

    my @a1 = @items[ 0 ..^ $idx ];  # TODO or: head/tail
    my @a2 = @items[ $idx .. *-1 ];

    return  @a1,  @a2;
}

# TODO Note that the actual assignment is supposed to reverse the condition,
# include everything in first list up to the point that the condition fails
# look for first not match.  First arg should be Code, not Regex.

# should work for arbitrary code block, not just a pattern match
