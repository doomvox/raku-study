#!/usr/bin/env perl6
# 
# demo_caret_methods.raku            28 Feb 2021 

use v6;

.say for Str.^methods;

my @method_objects = Str.^methods;
say @method_objects[0].WHAT;

my Str $a = "hey";

