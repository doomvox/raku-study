#!/usr/bin/env raku
# 
# disassemble_hash_reassemble_into_copy.raku            28 Jan 2025 

use v6;

my %threat = ( godzilla => 8,  mothera => 6, rhodan => 5, tingler => 3, wolfman => 3,  dracula => 4, horta => 1, blob => 3 );
say %threat;
# {blob => 3, dracula => 4, godzilla => 8, horta => 1, mothera => 6, rhodan => 5, tingler => 3, wolfman => 3}

my %new_threat = Hash.new.STORE: %threat.keys, %threat.values, :INITIALIZE;
say %new_threat;
# {blob => 3, dracula => 4, godzilla => 8, horta => 1, mothera => 6, rhodan => 5, tingler => 3, wolfman => 3}
