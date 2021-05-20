#!/usr/bin/env perl6
# 
# file_find_with_junction_as_exclude.raku            20 May 2021 

use v6;
use File::Find;

my @exclude = (
    rx/mothera/,
    rx//
    );

my @files = find( dir => $loc, type => 'file', exclude => any(@exclude) );    
