#!/usr/bin/env perl6


my @a = ();
my @b;


say @a.WHAT;  # (Array)
say @b.WHAT;  # (Array)


say @a[0].WHAT;  # (Any)
say @b[0].WHAT;  # (Any)


use Object::Examine;
@a does Introspector;
say @a.menu;

say "===";

use Object::Examine;
@b does Introspector;
say @b.menu;


### Can't find any practical difference in @a and @b...
