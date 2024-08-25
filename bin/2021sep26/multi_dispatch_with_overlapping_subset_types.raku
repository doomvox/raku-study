#!/usr/bin/env perl6
#                                                                          
# multi_dispatch_with_overlapping_subset_types.raku            23 Sep 2021 

## an example where multi-dispatch is resolved in order-of-definition

my @monsters = < godzilla mothera ghidora gammera golem wormface >;
my @heroes   = < beowulf maynard_g_krebs bluebeetle bernie mothera godzilla >;
# but note the overlapping cases: godzilla and mothera are both monsters and heroes

# "subset" should've been called "subtype":
#   it narrows down a type definition to a new custom type
#   (and it has nothing to do with Sets)
subset Monster of Str where { $_ eq any( @monsters ) };
subset Hero    of Str where { $_ eq any( @heroes ) };

## Monster is favored over Hero because of the order of definition of these multi subs
multi sub speak (Monster $m) {
    say "The monster, $m roars!";
}
multi sub speak (Hero $h) {
    say "The hero, $h shouts!";
}

speak('ghidora');  # The monster, ghidora roars!
speak('beowulf');  # The hero, beowulf shouts!
speak('mothera');  # The monster, mothera roars!  ## mothera is treated as a monster


## There was nothing about this in the documentation (I've added it since then)

# https://docs.raku.org/language/glossary#index-entry-Multi-Dispatch

#   Multi-dispatch
# 
#   The process of picking a candidate for calling of a set of
#   methods or subs that come by the same name but with different
#   arguments. The most narrow candidate wins. In case of an
#   ambiguity, a routine with is default trait will be chosen if
#   one exists, otherwise an exception is thrown.

say "---";
## Sweep through all of the monsters and heroes, checking each case
my @names = (@monsters ∪ @heroes).keys.sort;
say @names;
for @names -> $n {
    speak( $n );
}

# [beowulf bernie bluebeetle gammera ghidora godzilla golem maynard_g_krebs mothera wormface]
# The hero, beowulf shouts!
# The hero, bernie shouts!
# The hero, bluebeetle shouts!
# The monster, gammera roars!
# The monster, ghidora roars!
# The monster, godzilla roars!        ## godilla treated as Monster
# The monster, golem roars!
# The hero, maynard_g_krebs shouts!
# The monster, mothera roars!
# The monster, wormface roars!        ## mothera treated as Monster


## NOTES

# Instead of the any junction, could use: 
# 
# ∈  element of


# ===
# Author:  doom@kzsu.stanford.edu

