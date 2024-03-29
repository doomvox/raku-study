#!/usr/bin/env raku
# 
# marton_example_rotor_on_lh.raku            26 Mar 2023 

use v6;

{
    my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob elon_musk >;

    say @monsters.rotor(3);
    # ((godzilla mothera rhodan) (tingler wolfman dracula) (horta blob elon_musk))

    @monsters.rotor(3)[1;1] = 'BOSON';

    say @monsters;
    # [godzilla mothera rhodan tingler BOSON dracula horta blob elon_musk]

}

# {
#     < godzilla mothera rhodan tingler wolfman dracula horta blob elon_musk >.rotor(3)[1;1] = 'GRENDEL'
#     # Cannot modify an immutable List ((tingler wolfman dra...)
# }


{
    my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob elon_musk >;

    say @monsters.rotor(3);
    # ((godzilla mothera rhodan) (tingler wolfman dracula) (horta blob elon_musk))

    @monsters.rotor(3)[1] = < one two three >;

    say @monsters;
    # [godzilla mothera rhodan one two three horta blob elon_musk]

}
