#!/usr/bin/env raku

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;
my @threats =       8,      4,      9,      5,      3,    4;

my %h = @monsters Z=> @threats;

say %h; # {gammera => 5, ghidora => 9, godzilla => 8, golem => 3, mothera => 4, rhodan => 4}

my $b = %h.BagHash; 
say $b;  # BagHash(gammera(5) ghidora(9) godzilla(8) golem(3) mothera(4) rhodan(4))


my %j = (joe => 5, doom => 4, doomvox => 6, joseph => 3, 'joseph brenner' => 8, 'joe brenner' => 2);
say %j; # {doom => 4, doomvox => 6, joe => 5, joe brenner => 2, joseph => 3, joseph brenner => 8}

my $c = %j.BagHash;
say $c;
