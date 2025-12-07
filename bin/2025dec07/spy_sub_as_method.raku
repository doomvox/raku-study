#!/usr/bin/env raku
# 
# spy_sub_as_method.raku            07 Dec 2025 

use v6;


my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com


{
    @monsters.map({ uc($_) if $_ eq "zoma"; $_ }).sort>>.lc.say;

}

{
    @monsters.map({ uc($_) if $_ eq "zoma"; $_ }).&spy.sort>>.lc.say;    
    sub spy($_) { say "|| $_ ||"; $_; }
}
