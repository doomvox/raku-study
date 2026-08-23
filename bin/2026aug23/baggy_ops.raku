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
say $c; # BagHash(doom(4) doomvox(6) joe brenner(2) joe(5) joseph brenner(8) joseph(3))

# my $r_eh = $b + $c;
# say $r_eh; # 61

my $r = $b (+) $c;
say $r;
# BagHash(doom(4) doomvox(6) gammera(5) ghidora(9) godzilla(8) golem(3) joe brenner(2) joe(5) joseph brenner(8) joseph(3) mothera(4) rhodan(4))

say $r.WHAT; # (BagHash)

# Union of a BagHash and a BagHash is another BagHash

## Bruce Gray:
# raku -e 'say .WHAT for (BagHash.new ⊎ BagHash.new), (BagHash.new ⊎ Bag.new), (Bag.new ⊎ BagHash.new)'
# (BagHash)
# (BagHash)
# (Bag)
