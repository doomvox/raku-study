#!/usr/bin/env perl6

use Object::Examine;


my $a;
my Any $b;

$a does Introspector;
# $b does Introspector;
## Cannot use 'does' operator on a type object Any.

say "---";
say $a.menu;
say "---";
# say $b.menu;

say "---";
