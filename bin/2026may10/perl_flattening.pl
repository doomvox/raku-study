#!/usr/bin/env perl

use 5.10.0;
use List::Util qw(pairmap);
use Data::Dumper;

my %threats = (  basilisk => 6, minotaur => 7, behemoth => 8 );
say Dumper( \%threats );
# $VAR1 = {
#           'basilisk' => 6,
#           'behemoth' => 8,
#           'minotaur' => 7
#         };


my @stuff = ( 'description', 'quip', %threats );  # in perl, the hash flattens to keys and values

say Dumper( \@stuff );

# $VAR1 = [
#           'description',
#           'quip',
#           'minotaur',
#           7,
#           'behemoth',
#           8,
#           'basilisk',
#           6
#         ];


# you prevent flattening by using a reference (a funny scalar that points at other stuff)
my @deep_stuff = ( 'description', 'quip', \%threats );
say Dumper( \@deep_stuff );
