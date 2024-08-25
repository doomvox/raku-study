#!/usr/bin/env raku
# 
# first_example_docs.raku            25 Aug 2024 

use v6;


{
    sub first([$f, *@]) { $f }

    my @nothing  = < nada nope bupkes >;

    say first( @nothing );  # nada
}

# {
#     sub first([$f]) { $f }

#     my @nothing  = < nada nope bupkes >;

#     say first( @nothing );  # 
#     ## Too many positionals passed to 'first'; expected 1 argument but got 3 in sub-signature
# }


{
    sub first([$f, $g, $h]) { $f }

    my @nothing  = < nada nope bupkes >;

    say first( @nothing );  # nada
}

{
    sub first([$f, $g, $h where * = 1 ] ) { $f }

    my @nothing  = < nada nope bupkes jerrylewis >;

    say first( @nothing );  # 
    # Too many positionals passed to 'first'; expected 3 arguments but got 4 in sub-signature
}
