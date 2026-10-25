#!/usr/bin/env perl6

use Object::Examine;
# my Int $b;
# $b does Introspector;
# say $b.menu;


my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
@monsters does Introspector;
say @monsters.menu;
