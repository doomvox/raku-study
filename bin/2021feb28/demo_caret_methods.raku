#!/usr/bin/env perl6
# 
# demo_caret_methods.raku            28 Feb 2021 

use v6;

.say for Str.^methods;       ##  the caret stuff means this is okay

## that's a short hand for this:
## .say for Str.HOW.methods;

## why are other introspectors upper case?
.say for Str.WHAT;           ## b.g.:  uppercase are alerts, something funny if you do this
# design principle:  evil (including EVAL) should be greppable

say "---";
my @method_objects = Str.^methods;
say @method_objects[0].WHAT;  # (Submethod)
say "---";
my $mo = @method_objects[0];
say $mo.^methods.>>.name;
say "---";
my Str $a = "hey";
say $a.^methods;
say "---";
