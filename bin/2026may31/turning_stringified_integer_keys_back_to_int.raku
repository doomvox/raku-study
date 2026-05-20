#!/usr/bin/env raku


{
    ## If you didn't want the hash keys cool, then you need to make the keys Ints first
    my @monsters = <godzilla rhodan blob tingler crinoid>;
#    my %h4{Int} = @monsters.kv.map({ if ($++%2) { $_ } else { .Int } })>>.&spy.Hash;

    say "---";
    say @monsters.kv.map({ .Int || $_ });

    my %h4{Int} = @monsters.kv.map({ .Int || $_ }).Hash;
    say %h4;

    sub spy ($arg) {
        say $arg;
        $arg;
        }


    }
