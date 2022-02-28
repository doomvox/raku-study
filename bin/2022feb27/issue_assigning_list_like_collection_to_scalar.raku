#!/usr/bin/env perl6
# 
# issue_assigning_list_like_collection_to_scalar.raku            28 Feb 2022 

use v6;

# Assigning a bunch of hashes (or arrays) to a scalar drops information silently
#   https://github.com/rakudo/rakudo/issues/4805

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
    ## This at least warns (when uncommented)
    # my $data = 1, 2, 3;
    # say $data.raku;  # 1 

    ## Compile-time warning:
    # Useless use of constant integer 2 in sink context (lines 39, 39)
    # Useless use of constant integer 3 in sink context (lines 39, 39)
}

## I see the same behavior with the last rakudo-star release and a recent build from github:
## Welcome to Rakudo(tm) v2021.04.
## Welcome to Rakudo™ v2022.02-82-g8fb0a66dc.



