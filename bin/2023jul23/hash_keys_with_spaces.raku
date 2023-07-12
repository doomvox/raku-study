#!/usr/bin/env raku
# 
# hash_keys_with_spaces.raku            12 Jul 2023 

use v6;

{
    my %threat_level = godzilla => 9,  mothera => 7,  rhodan => 7,  tingler => 5,  wolfman => 5;
    say %threat_level;
}

{
    my %threat_level = godzilla => 9,  'united snakes' => 7,  horta => 1;
    say %threat_level;
}
