#!/usr/bin/env perl6
# 
# wm_modgrid_popularity.raku                               12 Sep 2022 
# formerly:
# modgrid_popularity_william_michels.raku            


use v6;

# perl6 -e 'my @a = lines.antipairs; my @b = @a.sort(*.keys.words[0..*-3]).rotor(2 => -1); my @c; do for @b -> $b { @c.push($b) if $b.
# [0].keys.words[0..*-4] eq $b.[1].keys.words[0..*-4] }; say ($_ => (.[0].value - 100) + .[1].value).antipairs for @c.sort( { (.[0].value
# - 100) + .[1].value});'


## doing stats (popularity counts?) of the joint string key at the beginning, 
## chopping off fields counting from the right

my @a = lines.antipairs; 
my @b = @a.sort(*.keys.words[0..*-3]).rotor(2 => -1); 
my @c;

do for @b -> $b {
    @c.push($b) if $b.[0].keys.words[0..*-4] eq $b.[1].keys.words[0..*-4]
}; 

say
( $_ => (.[0].value - 100) + .[1].value ).antipairs
                for @c.sort(
                    { ( .[0].value - 100 ) + .[1].value }
                 );


# Not enough variable names: can't tell what I'm looking at.

# code style feels inside-out, end-weight is strange

# chopping trailing fields to get a joint sort key needs to be done 
# because initial fields are variable width and not delimited well

# use of antipairs all over feels weird... 
# could key/values have been flipped to start with?

