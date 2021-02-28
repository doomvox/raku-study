#!/usr/bin/env perl6
# 
# list_core_classes.pl6            27 Feb 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

use Symbol::Scan;

# my @pairs      = SymbolScan.list_core_class_pairs;
my @classes    = SymbolScan.list_core_class_names;
# my @class_objs = SymbolScan.list_core_class_objects;

say "count of core classes: ", @classes.elems;

for @classes.sort -> $c {
    say $c;
}

