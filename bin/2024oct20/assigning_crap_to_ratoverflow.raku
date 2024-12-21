#!/usr/bin/env raku
# 
# assigning_crap_to_ratoverflow.raku            08 Dec 2024 

use v6;


$*RAT-OVERFLOW = Str; 
# No such method 'UPGRADE-RAT' for invocant of type 'Str'

say $*RAT-OVERFLOW; # (Str)
