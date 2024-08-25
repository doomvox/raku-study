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
    sub first([$f, $g, $h where *.chars>5 ] ) { $f }

    my @nothing  = < nada nope bupkes  >;

    say first( @nothing );  

# Constraint type check failed in binding to parameter '$h'; expected anonymous constraint to be met but got Str ("bupkes")

}
