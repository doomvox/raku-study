#!/usr/bin/env raku
# 
# deep_and_ducks_and_rows.raku            06 Apr 2025 

use v6;


my @monsters1 = < godzilla mothera ghidora gammera golem rhodan >;
my @monsters2 = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com
my @monsters3 = < basilisk minotaur behemoth leviathan ziz chimera manticore >;

my %entities = ( m1 => @monsters1, m2 => @monsters2, m3 => @monsters3 );
say %entities;

my %new = %entities.deepmap( uc(*) );

say %new;
