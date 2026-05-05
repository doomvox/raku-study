#!/usr/bin/env perl

use 5.10.0;
use List::Util qw(pairmap);
use Data::Dumper;



my %threats = (  basilisk => 6, minotaur => 7, behemoth => 8 );
say Dumper( \%threats );

my @stuff = ( 'description', 'quip', %threats );

say Dumper( \@stuff );

