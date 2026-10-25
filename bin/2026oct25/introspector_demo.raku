#!/usr/bin/env perl6

use Object::Examine;

my Int $b;
$b does Introspector;
say $b.menu;


