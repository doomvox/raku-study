#!/usr/bin/env raku
# 
# but_why.raku            15 Nov 2024 

use v6;

#| Base class for magicians 
class Magician {
  has Int $.level;
  has Str @.spells;
}
 
#| Fight mechanics 
sub duel(Magician $a, Magician $b) {
}
#= Magicians only, no mortals. 
 
say Magician.WHY;         # Base class for magicians
say &duel.WHY.leading;    # Fight mechanics
say &duel.WHY.trailing;   # Magicians only, no mortals.

say "---";
say &duel.WHY;
# Fight mechanics
# Magicians only, no mortals.
