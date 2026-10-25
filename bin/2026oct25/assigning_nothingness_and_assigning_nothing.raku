#!/usr/bin/env perl6


my @a = ();
my @b;


say @a.WHAT;  # (Array)
say @b.WHAT;  # (Array)


say @a[0].WHAT;  # (Any)
say @b[0].WHAT;  # (Any)


use Object::Examine
@a does Introspector;
