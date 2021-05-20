#!/usr/bin/env perl6
# 
# file_find_with_junction_as_exclude.raku            20 May 2021 

use v6;
use File::Find;

## create some files to find
my $HOME = %*ENV{'HOME'};
say $HOME;
my $loc = "$HOME/tmp/monster_island";
mkdir( $loc );
chdir( $loc );
my @monsters = < godzilla mothera rhodan >;
for @monsters -> $name {
    $name.IO.spurt("The $name attacks!");
}

## doing a find with an exclude:
my @exclude = (
    rx/mothera/,
    rx/camel/
    );

my @files = find( dir => $loc, type => 'file', exclude => any(@exclude) );    
