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
    # [{id => 1, name => godzilla} {id => 2, name => ghidra}]
}

{
    ## This doesn't: drops second row silently
    my $data =  # note '$' sigil: a scalar
      {id=>1, name=>'godzilla' },
      {id=>2, name=>'ghidra'   };
    say $data;
    # {id => 1, name => godzilla}
}

{
    ## This also doesn't work:
    my $data = 
      [1,'godzilla'],
      [2, 'ghidra'];
    say $data;
    # [1 godzilla]
}

{
    ## This at least warns:
    my $data = 1, 2, 3;
    say $data.raku;  # 1 
    ## Compile-time warning:
    # Useless use of constant integer 2 in sink context (lines 39, 39)
    # Useless use of constant integer 3 in sink context (lines 39, 39)
}
