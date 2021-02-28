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

## buncha weird stuff:
## (gist <anon> <anon> unwrap <anon> <anon> <anon> wrap <anon> <anon> soft <anon> <anon> candidates <anon> <anon> multi cando <anon> <anon> <anon> leave <anon> <anon> raku gist <anon> <anon> onlystar <anon> package <anon> BUILDALL set_why of WHY POSITIONS add_phaser <anon> fire_if_phasers has-phasers fire_phasers returns <anon> has-phaser phasers <anon> raku BUILDALL line signature POSITIONS <anon> <anon> <anon> <anon> assuming returns <anon> file count of cando ACCEPTS is-implementation-detail Capture new <anon> static_id Str arity prec outer BUILDALL)

my $anonymous_mo = @method_objects[1];
say "--8--";
say @method_objects[0].^method_names;


say "---";
my Str $a = "hey";
say $a.^methods;
say "---";
