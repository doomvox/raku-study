#!/usr/bin/env raku
# 
# iterating_a_hash.raku            12 Jan 2025 

use v6;



my %threat =  ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 );


# say %threat;

# while %threat -> $item {
#     dd $item;
#     # say "item: $item";
#     # Infinite loop:
#     #  ${:gammera(7), :ghidora(9), :godzilla(8), :golem(3), :mothera(7), :rhodan(6)}
# }

## TODO no warning?

for %threat -> $item {
    dd $item;

    my ( $k, $v ) = $item.kv;
    say "k: $k";
    say "v: $v";
}

# :gammera(7)
# :godzilla(8)
# :mothera(7)
# :rhodan(6)
# :golem(3)
# :ghidora(9)


my $funny_p = :42a;
dd $funny_p;
## Pair $funny_p = :a(42)


say $funny_p.^methods;

say $funny_p ~~ Iterable;  # False

dd $funny_p.iterator; # Rakudo::Iterator::OneValue.new
