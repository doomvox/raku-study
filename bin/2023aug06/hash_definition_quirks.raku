#!/usr/bin/env raku
# 
# hash_definition_quirks.raku            06 Aug 2023 

use v6;


## https://stackoverflow.com/questions/44101411/is-that-a-raku-hash-or-block


{
    my $color-name-to-rgb = {
        'red' => 'FF0000',
    };

    put $color-name-to-rgb.^name;  # Hash
    say $color-name-to-rgb<red>;   # FF0000
}

{
    my $color-name-to-rgb = {
        'red', 'FF0000',
    };
    put $color-name-to-rgb.^name;  # Block
    say $color-name-to-rgb<red>;   # Type Block does not support associative indexing.


}



