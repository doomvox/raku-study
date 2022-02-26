#!/usr/bin/env perl6
# 
# array_of_hashes.raku            26 Feb 2022 

use v6;

## double-checking basic processing of an array of hashes:
{
    my @data =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};

    my $total;
    for @data -> $row {
        say $row{'name'};
        $total += $row{'level'};
    }
    say "ave level: ", $total/@data.elems;
    # godzilla
    # ghidra
    # mothra
    # ave level: 7.666667
}

say "===";
{
    ## If you use a '$' sigil, for loops act very different
    my $data =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};

    my $total;
    for $data -> $row {
        say $row{'name'};
        $total += $row{'level'};
    }
    say "ave level: ", $total/$data.elems;
}
## Looping over that array of hashes just accesses the first row (?):
# godzilla
# ave level: 2.666667

say "===";
{
    ## If you use a '$' sigil, for loops act very different
    my $data =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};

    say $data.WHAT; # (Hash)

 $data =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};


    my $total;
    for $data -> $row {
        say $row{'name'};
        $total += $row{'level'};
    }
    say "ave level: ", $total/$data.elems;
}
