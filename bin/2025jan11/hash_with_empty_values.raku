#!/usr/bin/env raku
# 
# hash_with_empty_values.raku            12 Jan 2025 

use v6;

# /home/doom/Dust/Sys/Perl6/dev/rakudo/src/core.c/Any-iterable-methods.pm6
#        self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE


my Pair $p = 'name' => 'alpha';

dd $p;
# Pair $p = :name("alpha")

say $p.keys;    # (name)
say $p.values;  # (alpha)


my %threat =  ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 );

{
    %threat.STORE: 'he_who_shall_not_be_named', 666, :INITIALIZE;
    dd %threat;
    ## Hash %threat = {:he_who_shall_not_be_named(666)}
}

{
    %threat.STORE: 'he_who_shall_not_be_named', 666;
    dd %threat;
}

{

    my Map $m = ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 ).Map;
    dd $m;
    # Map $m = $(Map.new((:gammera(7),:ghidora(9),:godzilla(8),:golem(3),:mothera(7),:rhodan(6))))


    my $c = $m.new.STORE: $m.keys, $m.values, :INITIALIZE;
    dd $c; # Map $c = $(Map.new((:gammera(7),:ghidora(9),:godzilla(8),:golem(3),:mothera(7),:rhodan(6))))

    my $d = $m.new.STORE: $m.keys, $m.values, :INITIALIZE;
    dd $d;

    my $e = $m.new.STORE: $m.keys, $m.values, :INITIALIZE;
    dd $e;

    say $m.keys;
    say $m.keys;
    say $m.keys;

    say $m.values;
    say $m.values;
    say $m.values;

    {
        say $m.keys;
        say $m.keys;
        say $m.keys;

        say $m.values;
        say $m.values;
        say $m.values;
    }

    }

{
    my Hash $h1 = ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 ).Hash;
    my Hash $h2 = ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 ).Hash;
    my Hash $h3 = ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 ).Hash;
    my Hash $h4 = ( godzilla => 8,  mothera => 7,  ghidora => 9,  gammera => 7, golem => 3, rhodan => 6 ).Hash;

    say $h1.values;
    say $h2.values;
    say $h3.values;
    say $h4.values;

    ## random behavior across different hashes with different names
    # (9 8 6 7 3 7)
    # (9 3 7 8 6 7)
    # (6 7 7 3 8 9)
    # (7 9 3 6 7 8)


    }


{

    my Hash $h1 = ( godzilla => 8,  mothera => Empty,  ghidora => 9,  gammera => 7, golem => Empty, rhodan => 6 ).Hash;
    dd $h1;
    # Hash $h1 = ${:gammera(7), :ghidora(9), :godzilla(8), :golem(Empty), :mothera(Empty), :rhodan(6)}

    my Hash $h2 = ( godzilla => 8,  mothera => Nil,  ghidora => 9,  gammera => 7, golem => Nil, rhodan => 6 ).Hash;
    dd $h2;
    # Hash $h2 = ${:gammera(7), :ghidora(9), :godzilla(8), :golem(Any), :mothera(Any), :rhodan(6)}

    my Hash $h3 = ( godzilla => 8,  mothera => IterationEnd,  ghidora => 9,  gammera => 7, golem => IterationEnd, rhodan => 6 ).Hash;
    dd $h3;
    # Hash $h3 = ${:gammera(7), :ghidora(9), :godzilla(8), :golem(IterationEnd), :mothera(IterationEnd), :rhodan(6)}

    }
