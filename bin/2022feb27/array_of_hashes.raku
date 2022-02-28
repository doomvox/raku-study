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
    my $count = $data.elems;
    say "count: $count";
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


{ 
    say "===";
    my $data = {A=>1, B=>2}, {A=>3, B=>4};
    say $data.raku;
    # ${:A (1), :B(2)} 

    say $data.WHAT;
}


{
    my $data = 1, 2, 3;
    say $data.raku;  # 1 
    say $data.WHAT;  # (Int)

   ## yields warnings, at the *top* of the output (compile time)
}

# raku -e 'my $data = 1, 2, 3; say $data.raku;'
# WARNINGS for -e:
# Useless use of constant integer 2 in sink context (lines 1, 1)
# Useless use of constant integer 3 in sink context (lines 1, 1)
# 1


{
    say "---";
    my $data = [1], [2], [3];
    say $data.raku;  # 1 
    say $data.WHAT;  # (Int)

   ## no warnings 
}


{
    my $data = [1,2], [8,9];
    say $data.raku;
}
