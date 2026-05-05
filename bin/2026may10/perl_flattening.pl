#!/usr/bin/env perl

use List::Util qw(pairmap);

my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @levels   =  (6,       5,       7,       8,         4,   3,       4); 
my %threats = @monsters Z=> @levels;

{
    my @stuff = ( 'description', 'quip', %threats );
