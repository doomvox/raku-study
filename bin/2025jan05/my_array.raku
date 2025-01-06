#!/usr/bin/env raku
# 
# my_array.raku            05 Jan 2025 

use v6;


# {
#     my [ $a, $b, $c ] = 6, 73, 99;  # Malformed my
# }

# {
#     my ( $a, $b, $c ) = 6, 73, 99;
#     say $a; # 6
#     $a++;
#     say $a; # 7
# }


# say "===";
{
    my ( $a, $b, $c ) = 6, 73, 99;
    [ $a, $b, $c ] = 1, 2, 3;  ## LTA: missing "WTF?" message
    say $b; # 73
    ## appears that [ $a ] makes a copy of the value.

}

# say "===";
# {
#     my ( $a, $b, $c ) = 6, 73, 99;
#     my @a 1, 2, 3;
#     [ $a, $b, $c ] = 1, 2, 3;  ## LTA, missing "WTF?" message
#     say $b; # 73
# }

say "===";

{
    my ( $a, $b, $c ) = 6, 73, 99;
    say $b.WHICH; # Int|73
    [ $a, $b, $c ] = 1, 2, 3;  ## LTA: missing "WTF?" message
    say $b.WHICH; # Int|73
    say $b; # 73
    ## appears that [ $a ] makes a copy of the value.

}


say "===";
{
    my ( $a, $b, $c ) = 6, 73, 99;

    # list in round brackets
    say ($a, $b, $c)[0] =:= $a;  # True

    # square bracket case
    say [$a, $b, $c][0] =:= $a; # this should be False (and it is)

    say $a; # 6

    }


