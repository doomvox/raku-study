#!/usr/bin/env raku
# 
# num_types.raku            11 Aug 2024 

use v6;


multi (Num $n) { 
    say "1: we've got a Num type $n";
}


multi (Int $n) { 
    say "Int: we've got an Int type $n";
}
