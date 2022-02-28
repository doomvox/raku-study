#!/usr/bin/env perl6
# 
# array_of_hashes.raku            26 Feb 2022 

use v6;

## some issues with basic processing of an array of hashes:
{
    ## This code works:
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
    ## But if you use a '$' sigil instead of '@'...
    my $data =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};
    say $data.WHAT; # (Hash)
    ## You get just the first hash:
    say $data;
    ## {id => 1, level => 8, name => godzilla}
    
    ## The other two rows are *silently* ignored: no errors or warnings.

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
## that's 8/3, where 8 is the one level value, and 3 is the count of pairs in the hash

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
   for $data.values -> $row {   ## bruce gray: *.list is more idiomatic
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
   for $data.values -> $row {  ## need .values (or .list) to extract hashes as $row
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
## You figure out how this case works on your own:
##    for $data -> $row {


{ 
    say "===";
    my $data = {A=>1, B=>2}, {A=>3, B=>4};
    say $data.raku;
    # ${:A (1), :B(2)} 

    say $data.WHAT;
}


## this at least warns:
{
    my $data = 1, 2, 3;
    say $data.raku;  # 1 
    say $data.WHAT;  # (Int)

    ## yields warnings *compile time* warnings, which go at the *top* of the output
    ## (where you're likely to miss them if you've got a bunch of other output).
}

# bruce gray:
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
    say "---";
    my $data = [1,2], [8,9];
    say $data.raku;  # $[1, 2]
}

{
    say "---";
    my $data = { A=>1, B=>2}, { c=>3 }; 
    say $data;
    say $data.WHAT;

    # $[1, 2]
    # {A => 1, B => 2}
    # (Hash)
}

{
    say "~~~";
    my Array $data = ( { A=>1 }, {B=>2}, { C=>3 } ); 
    say $data;
    say $data.WHAT;
}
## Type check failed in assignment to $data; expected Array but got Hash ({:A(1)})


say "===";
{
   ## Following an idiom in examples here:
   ## https://docs.raku.org/language/variables#Item_and_list_assignment

    my ($data) =
    {id=>1, name=>'godzilla', level=>8},
    {id=>2, name=>'ghidra',   level=>9},
    {id=>3, name=>'mothra',   level=>6};
    say $data.WHAT; # (Hash)

    ## Again, you just get the first hash:
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







