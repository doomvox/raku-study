#!/usr/bin/env raku
# 
# first_example_docs.raku            25 Aug 2024 

use v6;


{
    sub first([$f, *@]) { $f }

    my @nothing  = < nada nope bupkes >;

    say first( @nothing );  # nada
}

{
    sub first([$f] { $f }

    my @nothing  = < nada nope bupkes >;

    say first( @nothing );  # 
}
