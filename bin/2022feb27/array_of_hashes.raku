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
    ## If you use a '$' sigil, can get tripped up
    my $data =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};
    say $data.WHAT; # (Hash)
    ## You get just the first hash:
    ## {id => 1, level => 8, name => godzilla}
    say $data;

    my $total;
    for $data -> $row {
        say $row{'name'};
        $total += $row{'level'};
    }
    say "ave level: ", $total/$data.elems;
}
# godzilla
# ave level: 2.666667

say "===";
{
    ## The '$' sigil, but with some extra parens gets you a *List*
    my $data = (
        {id=>1, name=>'godzilla', level=>8},
        {id=>2, name=>'ghidra',   level=>9},
        {id=>3, name=>'mothra',   level=>6},
    );

   say $data.WHAT; # (List)

   my $total;
   ## Note: if you don't use .values, entire List ends up in $row
   for $data.values -> $row {   
        say $row{'name'};
        $total += $row{'level'};
   }
   say "ave level: ", $total/$data.elems;
   # godzilla
   # ghidra
   # mothra
   # ave level: 7.666667
}
say "===";
{
    ## The '$' sigil, with square brackets gets you an array.
    my $data = [
        {id=>1, name=>'godzilla', level=>8},
        {id=>2, name=>'ghidra',   level=>9},
        {id=>3, name=>'mothra',   level=>6},
    ];
   say $data.WHAT; # (Array)

   my $total;
   ## But this still doesn't work, puts entire array in $row
   # for $data -> $row {   
   for $data.values -> $row {  ## using .values again to extract series of hashes (or .list)
        say $row{'name'};
        $total += $row{'level'};
   }
   say "ave level: ", $total/$data.elems;
   # godzilla
   # ghidra
   # mothra
   # ave level: 7.666667
}

## There isn't a single example like this in the docs for for
##   https://docs.raku.org/syntax/for
## You figure out how this works on your own:
##    for $data -> $row {

