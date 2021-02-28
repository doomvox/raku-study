#!/usr/bin/env perl6
# 
# list_core_classes.pl6            27 Feb 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

use Symbol::Scan;

my @pairs      = SymbolScan.list_core_class_pairs;
# my @classes    = SymbolScan.list_core_class_names;
# my @class_objs = SymbolScan.list_core_class_objects;

say "count of core classes: ", @pairs.elems;

for @pairs.sort({ $^a.[0] cmp $^b.[0] }) -> $pair {
    my ($class, $obj) = $pair.kv;
    say "class: $class";
    use MONKEY;
    my $new_class_instance_m_count = EVAL { $class.new.^methods.elems };
    my $existing_object_m_count = $obj.^methods.elems;
#    say $class.new.^methods.elems, ' ',  $obj.^methods.elems;
    say "$new_class_instance_m_count $existing_object_m_count";

}
