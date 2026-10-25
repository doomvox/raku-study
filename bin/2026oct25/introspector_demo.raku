#!/usr/bin/env perl6

use Object::Examine;
# my Int $b;
# $b does Introspector;
# say $b.menu;

my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
@monsters does Introspector;
say @monsters.menu;


my %h = a => 1, b => 2, c => 3;
%h does Introspector;
say @monsters.menu;
