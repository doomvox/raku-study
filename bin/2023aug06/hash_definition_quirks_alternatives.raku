#!/usr/bin/env raku
# 
# hash_definition_quirks_alternatives.raku            06 Aug 2023 

use v6;


{
    ## canonical syntax for creating a hash from a list
    my $color-name-to-rgb = %(
        'red',  'FF0000',
    );

    put $color-name-to-rgb.^name;  # Hash
    say $color-name-to-rgb<red>;   # FF0000
}



{
#     my %color-name-to-rgb = {
#         'red',  'FF0000',
#     };

    my %color-name-to-rgb = (
        'red',  'FF0000',
    );

    put %color-name-to-rgb.^name;  # Hash
    say %color-name-to-rgb<red>;   # FF0000
}


# {
#     my %color-name-to-rgb = {
#         'red',  'FF0000',
#     };

# # Odd number of elements found where hash initializer expected:
# # Only saw: -> ;; $_? is raw = OUTER::<$_> { #`(Block|5964335462752) ... }

#     put %color-name-to-rgb.^name;  
#     say %color-name-to-rgb<red>;   
# }


{
    ## mildly surprised that this works, I expected "Odd number of elements"
    my %color-name-to-rgb = %(
        'red',  'FF0000',
    );

    put %color-name-to-rgb.^name;  # Hash
    say %color-name-to-rgb<red>;   # FF0000
}
