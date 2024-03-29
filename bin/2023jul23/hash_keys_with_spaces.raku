#!/usr/bin/env raku
# 
# hash_keys_with_spaces.raku            12 Jul 2023 

use v6;

{
    my %threat_level = godzilla => 9,  mothera => 7,  rhodan => 7,  tingler => 5,  wolfman => 5;
    say %threat_level;

    say %threat_level{'godzilla'}; # 9
    say %threat_level<godzilla>;   # 9

}

{ # keys with embedded spaces:
    my %threat_level = godzilla => 9,  'united snakes' => 11,  horta => 1;
    say %threat_level;
    say %threat_level{'united snakes'}; # 11
    # oops:
    say %threat_level<'united snakes'>; # ((Any) (Any))
    # fix
    say %threat_level<<'united snakes'>>; # 11
}
