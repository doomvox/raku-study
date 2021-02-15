#!/usr/bin/env perl6
# 
# object_examine_with_introspector_role_to_get_menus_of_methods.pl6            15 Feb 2021 

use v6;

# I wrote an Object::Examine module that provides a role named Introspector
# with mainly adds a method named "menu" that does a more elaborate listing
# of available methods on an object than .^methods does.

use Object::Examine;  ## brings in Introspector role
my $s = set 2, 4, 6;

say $s.^methods;
