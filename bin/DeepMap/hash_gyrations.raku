#!/usr/bin/env raku
# 
# hash_gyrations.raku            04 Feb 2025 

use v6;

my %threat =
  ( godzilla => 8,  mothera => 6, rhodan => 5, tingler => 3, wolfman => 3,  dracula => 4, horta => IterationEnd, blob => 3 );

say "yalp!";

say %threat;
say %threat.keys;
say %threat.values;

{ # the way it's done in raku core, in the deepmap code
    my %new_threat = Hash.new.STORE: %threat.keys, %threat.values, :INITIALIZE;
    say %new_threat;

}


{ # obvious hash copy, key at a time
    my %new;
    for %threat.keys -> $k {
        %new{ $k } = %threat{ $k };
    }
    say %new;
}



{ # 
    my %new;
    %new{ $_ } = %threat{ $_ } for %threat.keys;
    say %new;
}


