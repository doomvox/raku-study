#!/usr/bin/env raku
# 
# introspection_sub_name.raku            19 May 2024 

use v6;

sub dostuff {
    say "Stuff it!";
    }

my $code = &dostuff;

say $code.name;


## could simplify bruce's code runner boilerplate, instead of using pairs
