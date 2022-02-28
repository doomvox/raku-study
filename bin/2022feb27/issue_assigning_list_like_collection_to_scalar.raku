#!/usr/bin/env perl6
# 
# issue_assigning_list_like_collection_to_scalar.raku            28 Feb 2022 

use v6;

# Assigning a list (or list-like) collection of hashes/arrays to a scalar drops information silently

# Assigning a bunch of hashes to a scalar drops information silently

{
    ## This works:
    my @data =
      {id=>1, name=>'godzilla' },
      {id=>2, name=>'ghidra'   };
    say @data;

    ## This doesn't:
    my $data =  # note '$' sigil: a scalar
      {id=>1, name=>'godzilla' },
      {id=>2, name=>'ghidra'   };
    say @data;

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

{
    my $data = 1, 2, 3;
    say $data.raku;  # 1 
    say $data.WHAT;  # (Int)

}
