#!/usr/bin/env raku

my @monsters = < basilisk minotaur behemoth godzilla >;
my @toho = < godzilla mothera rhodan >;


my $ret = @monsters (-) @toho;

say $ret;       # Set(basilisk behemoth minotaur)
say $ret.WHAT;  # (Set)


my @stuff = ( @monsters, @toho ).flat(:hammer);

say @stuff; # [basilisk minotaur behemoth godzilla godzilla mothera rhodan]

my $b = bag(@stuff);
say $b;
# Bag(basilisk behemoth godzilla(2) minotaur mothera rhodan)

my $c = mix(@stuff);
say $c;
# Mix(basilisk behemoth godzilla(2) minotaur mothera rhodan)

my $thingy =  $b (.) $c;
say $thingy;
# Mix(basilisk behemoth godzilla(4) minotaur mothera rhodan)

say $thingy.Set;
# Set(basilisk behemoth godzilla minotaur mothera rhodan)

