#!/usr/bin/env raku
# 
# marton_example_rotor_on_lh.raku            26 Mar 2023 

use v6;

my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob elon_musk >;

say @monsters.rotor(3);
# ((godzilla mothera rhodan) (tingler wolfman dracula))
