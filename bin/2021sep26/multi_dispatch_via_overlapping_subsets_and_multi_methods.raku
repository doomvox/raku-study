#!/usr/bin/env perl6
#                                                                          e
# multi_dispatch_via_overlapping_subsets_and_multi_methods.raku      27 Sep 2021 

use v6;

## Same behavior with multi methods and subsets that I've seen with multi subs

my @monsters = < godzilla mothera ghidora gammera golem wormface >;
my @heroes   = < beowulf maynard_g_krebs bluebeetle bernie mothera godzilla >;
# but note the overlapping cases: godzilla and mothera are both monsters and heroes

subset Monster of Str where { $_ eq any( @monsters ) };
subset Hero    of Str where { $_ eq any( @heroes ) };

class Speaker {
    ## Monster is favored over Hero because of the order of definition of these multi subs
    multi method speak (Monster $m) {
        say "The monster, $m roars!";
    }
    multi method speak (Hero $h) {
        say "The hero, $h shouts!";
    }
}

my $spk = Speaker.new();

$spk.speak('ghidora');  # The monster, ghidora roars!
$spk.speak('beowulf');  # The hero, beowulf shouts!
$spk.speak('mothera');  # The monster, mothera roars!  ## mothera is treated as a monster


## There's nothing about this in the documentation:

# https://docs.raku.org/language/glossary#index-entry-Multi-Dispatch
say "---";
## Sweep through all of the monsters and heroes, checking each case
my @names = (@monsters ∪ @heroes).keys.sort;
say @names;
for @names -> $n {
    $spk.speak( $n );
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




# ===
# Author:  doom@kzsu.stanford.edu

