#!/usr/bin/env perl6

use Object::Examine;

my Int $i = 666;
$i does Introspector;

# Question, will we see:
# Cannot use 'does' operator on a type object Int

say "---";
# say $a.menu;
say "---";
say $b.menu;

say "---";
